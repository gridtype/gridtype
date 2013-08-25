<?php

class Images extends MY_Controller {

	function __construct()
	{
		parent::__construct();
		if(! $this->hmvc_auth->get('logged_in')) redirect(site_url('welcome'));
		$this->load->model('Mdl_images');
		$this->load->model('gallery_model');
		//$this->output->enable_profiler(TRUE);
	}

	public function index()
	{
		$uid = $this->hmvc_auth->get('id');
		$this->db->order_by("timestamp", "desc");
		$this->db->where('owner !=', $uid);
		$this->db->limit(18);
		$query = $this->db->get('images');
		$data = array(

			'rows' => $query
		);
		$this->_render('images/index',$data);

	}
	public function ajaxGetImages()
	{
		$limit = 0;
		$offset = 0;
		if (isset($_POST['offset'])){
			$offset =  $_POST['offset'];
		}
		if (isset($_POST['limit'])){
			$limit =  $_POST['limit'];
		}
		$uid = $this->hmvc_auth->get('id');
		$this->db->order_by("timestamp", "desc");
		$this->db->where('owner !=', $uid);
		$this->db->limit($limit,$offset);
		$query = $this->db->get('images');
		echo json_encode($query->result());
	}

	public function user()
	{
		$uid = $this->uri->segment(3);
		$owner = $this->db->get_where('users', array('id' => $uid));
		$query = $this->db->get_where('images', array('owner' => $uid));
		$data = array(

			'rows' => $query,
			'theowner' => $owner,
		);
		$this->_render('images/user_images',$data);
	}


/* There isn't a public 'edit' function
	public function edit($id)
	{
		$row = $this->db->get_where('images', array('id' => $id))->row();
		$data = array(
			'row' => $row,
		);
		$this->render('images/edit',$data);
	}
*/
/* same things as single?

	public function view($id)
	{
		$row = $this->db->get_where('images', array('id' => $id))->row();
		$ratings = $this->db->get_where('ratings',array('piece_id' => $id));

		$total = $this->db->select('count(*)');
		$total = $this->db->from('ratings');
		$total = $this->db->where('piece_id',$id);
		$data = array(
			'row' => $row,
			'ratings' => $this->db->get_where('ratings',array('piece_id' => $id)),
			'totalratings' => $total,
			'user_about' => $this->db->get_where('users', array('id' => $uid))
		);


		$this->render('images/single',$data);
	}
*/

	/**
	* Gets all the images for a particular album, if no id is given redirected to images home
	*
	* @access public
	* @param int
	*
	*/

	function album($id)
	{
		if(!$id){
			redirect('images', 'refresh');

		} else{
			$images = $this->gallery_model->get_images($id);
			$data = array(
				'album' => $this->gallery_model->get_album_title($id),
				'rows'  => $images->result()
			);
			$this->_render('images_list', $data);
		}
	}
	//changed from single to view
	public function view($id)
	{

		$row = $this->db->get_where('images', array('id' => $id))->row();
		$owner = $row->owner;
		$owner_info = $this->db->get_where('users', array('id' => $owner), 1);
		$owner_info = $owner_info->result();
		$owner_name = $owner_info[0]->username;
		$owner_about = $owner_info[0]->about;
		$owner_id = $owner_info[0]->id;

		//Get Count of Total Ratings
		$get_piece = $this->db->get_where('ratings', array('piece_id'=>$id));
		$count = $get_piece->num_rows();

		$access = 0;
		if ( $this->hmvc_auth->is_admin() == true || $this->hmvc_auth->is_manager() == true){
			$access = 1;
		}

		// there's got to be a cleaner way of checking if admin/manager and owner of image thus turning off the rating system for this image
		if ( $this->hmvc_auth->get('id') == $owner){
			$access = 0;
		}
		$ratings = $this->db->get_where('ratings',array('piece_id' => $id));

		$ratings = $ratings->result();

		$comments = $this->gallery_model->get_comments($id);

//		var_dump($comments);
		if (empty($ratings)){
			$median = null;
		} else {
			$m1 = array();$m2 = array();$m3 = array();$m4 = array();$m5 = array();
			// print_r($ratings);
			foreach ($ratings as $rating){
				array_push($m1, $rating->criteria1);
				array_push($m2, $rating->criteria2);
				array_push($m3, $rating->criteria3);
				array_push($m4, $rating->criteria4);
				array_push($m5, $rating->criteria5);
			}
			$m1 = $this->_calculate_median($m1);
			$m2 = $this->_calculate_median($m2);
			$m3 = $this->_calculate_median($m3);
			$m4 = $this->_calculate_median($m4);
			$m5 = $this->_calculate_median($m5);
			$median = array($m1,$m2,$m3,$m4,$m5);
			//print_r($median);


		}

		$data = array(
			'owner_name' => $owner_name,
			'owner_id' => $owner_id,
			'owner_about' => $owner_about,
			'total_ratings' => $count,
			'row' => $row,
			'ratings' => json_encode($ratings),
			'access' => $access,
			'median' => json_encode($median),
			'comments' => $comments
		);
		$this->output->enable_profiler(TRUE);
		$this->_render('view',$data);
	}
	public function add_rating()
	{
		if(! $this->hmvc_auth->is_admin()){
			// don't let the user
		}

		$rating_user = $this->hmvc_auth->get('id');
		$data = array(
			'criteria1'    => $this->input->post('criteria1'),
			'criteria2'    => $this->input->post('criteria2'),
			'criteria3'    => $this->input->post('criteria3'),
			'criteria4'    => $this->input->post('criteria4'),
			'criteria5'    => $this->input->post('criteria5'),
			'piece_id'     => $this->input->post('image_id'),
			'piece_owner'  => $this->input->post('owner'),
			'rating_user'  => $rating_user

		);

		$query = $this->db->get_where('ratings', array('piece_id' => $this->input->post('image_id'),'rating_user' => $rating_user), 1);

	 if ($query->result()){
		   $result = $query->result();
		   $this->db->where('id',$result[0]->id);
		   $this->db->update('ratings', $data);
		   //echo 'Updated Rating';
		   echo json_encode($this->median($this->input->post('image_id')));
	 } else {
			$this->db->insert('ratings', $data);
			//echo 'Added Rating';$this->input->post('image_id')
		   echo json_encode($this->median($this->input->post('image_id')));
	 }


	}
	public function edit_validate($id)
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('album', 'Album', 'trim|required');
		$this->form_validation->set_rules('name', 'Name', 'trim|required');
		$this->form_validation->set_rules('image', 'image', 'trim|required');
		$this->form_validation->set_rules('image_type', 'image type', 'trim|required');
		$this->form_validation->set_rules('highlight', 'Highlight', 'trim|required');
		$this->form_validation->set_rules('rank', 'Rank', 'trim|required');
		$this->form_validation->set_rules('owner', 'Owner', 'trim|required');
		if ($this->form_validation->run() == false) {
			$this->edit();
		} else {
			$data = array(
				'album' => $this->input->post('album'),
				'name' => $this->input->post('name'),
				'image' => $this->input->post('image'),
				'image_type' => $this->input->post('image_type'),
				'highlight' => $this->input->post('highlight'),
				'rank' => $this->input->post('rank'),
				'owner' => $this->input->post('owner'),
			);
			$this->db->where('id', $id);
			$this->db->update('images', $data);
			$this->index();
		}

	}
	public function ajax_flag($id){
		//take the ID, mark the image as flagged in the admin panel

	}

	public function ajax_post_comment(){
       $this->load->library('form_validation');
       $this->form_validation->set_rules('comment', 'Comment', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->single($this->input->post('image_id'));
       } else {
           $data = array(
               'image_id' => $this->input->post('image_id'),
               'user_id' => $this->hmvc_auth->get('id'),
               'comment' => $this->input->post('comment'),
           );
<<<<<<< HEAD
<<<<<<< HEAD
		   
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		   //put the comment into our database
		   $this->db->insert('comments', $data);

		   // geting some things setup for our response, which is our comment plus its meta
		   $role = ( $this->hmvc_auth->get('role') == 'user' ? 'Student' : 'Faculty');
		   $block_class = ( $this->hmvc_auth->get('role') == 'user' ? '' : 'alert-info');
           $last_comment = array(
				'image_id' => $this->input->post('image_id'),
				'user_id' => $this->hmvc_auth->get('id'),
				'role' => $role,
				'blockclass' => $block_class,
				'username' => $this->hmvc_auth->get('username'),
				'comment' => $this->input->post('comment')
<<<<<<< HEAD
<<<<<<< HEAD
				
				);
				
=======

				);

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

				);

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
				echo json_encode($last_comment);
           //$this->single($this->input->post('image_id'));
       }

	}
	public function ajaxCountRatings($id)
	{
		//Get Count of Total Ratings
		$get_piece = $this->db->get_where('ratings', array('piece_id'=>$id));
<<<<<<< HEAD
<<<<<<< HEAD
		$count = $get_piece->num_rows(); 
		return $count;
		
	}
	public function median($id)
	{		
		$ratings = $this->db->get_where('ratings',array('piece_id' => $id));			
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		$count = $get_piece->num_rows();
		return $count;

	}
	public function median($id)
	{
		$ratings = $this->db->get_where('ratings',array('piece_id' => $id));
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		$ratings = $ratings->result();
		if (empty($ratings)){
			return;
		} else {
			$m1 = array();$m2 = array();$m3 = array();$m4 = array();$m5 = array();
			// print_r($ratings);
			foreach ($ratings as $rating){
				array_push($m1, $rating->criteria1);
				array_push($m2, $rating->criteria2);
				array_push($m3, $rating->criteria3);
				array_push($m4, $rating->criteria4);
				array_push($m5, $rating->criteria5);
			}
			$m1 = $this->_calculate_median($m1);
			$m2 = $this->_calculate_median($m2);
			$m3 = $this->_calculate_median($m3);
			$m4 = $this->_calculate_median($m4);
			$m5 = $this->_calculate_median($m5);
			$median = array($m1,$m2,$m3,$m4,$m5);
<<<<<<< HEAD
<<<<<<< HEAD
			//print_r($median);			
			return $median;
			}
		
	}
	
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
			//print_r($median);
			return $median;
			}

	}

<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
	public function ajax_get_median($id)
	{
		$ratings = $this->db->get_where('ratings',array('piece_id' => $id));
		$ratings = $ratings->result();

		if (empty($ratings)){
			$median = null;
		} else {
			$m1 = array();$m2 = array();$m3 = array();$m4 = array();$m5 = array();
			// print_r($ratings);
			foreach ($ratings as $rating){
				array_push($m1, $rating->criteria1);
				array_push($m2, $rating->criteria2);
				array_push($m3, $rating->criteria3);
				array_push($m4, $rating->criteria4);
				array_push($m5, $rating->criteria5);
			}
			$m1 = $this->_calculate_median($m1);
			$m2 = $this->_calculate_median($m2);
			$m3 = $this->_calculate_median($m3);
			$m4 = $this->_calculate_median($m4);
			$m5 = $this->_calculate_median($m5);
			$median = array($m1,$m2,$m3,$m4,$m5);
			return $median;
		}
	}

	private function _calculate_median($arr)
	{
		sort($arr);
		$count = count($arr); //total numbers in array
		$middleval = floor(($count-1)/2); // find the middle value, or the lowest middle value
		if($count % 2) { // odd number, middle is the median
			$median = $arr[$middleval];
		} else { // even number, calculate avg of 2 medians
			$low = $arr[$middleval];
			$high = $arr[$middleval+1];
			$median = (($low+$high)/2);
		}
		return $median;
	}
	private function _calculate_average($arr)
	{
		$count = count($arr); //total numbers in array
		foreach ($arr as $value) {
			$total = $total + $value; // total value of array numbers
		}
		$average = ($total/$count); // get average value
		return $average;
	}

	public function search()
	{
		$search_string = $this->input->post('searchstring');
		$this->db->select('','description');
		$array = array('description' => $search_string, 'objective' => $search_string);
		$this->db->like($array,'','both');
		$do_search = $this->db->get('images');


		$data = array(
				'searchstring' 		=> $this->input->post('searchstring'),
				'image_results'		=> $do_search,
			);

		$this->render('images/search_images',$data);
	}

}
