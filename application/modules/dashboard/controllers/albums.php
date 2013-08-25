<?php

class Albums extends MY_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('dashboard_model');
		$this->load->model('Gallery_model');

	}
<<<<<<< HEAD
<<<<<<< HEAD
	private function render($view,$data=NULL){

		$this->layout->setLayout('/layout_view');		
		$data['albums'] = $this->hmvc_auth->get_user_albums();
		$data['userid'] = $this->hmvc_auth->get('id');				
		$data['logged_in'] = $this->hmvc_auth->logged_in();
		$data['username'] = $this->hmvc_auth->get('username');
		$data['role'] = $this->hmvc_auth->get('role');  
		$data['header_view'] = $this->load->view('header_view',$data,TRUE);
		$data['footer_view'] = $this->load->view('footer_view',$data,TRUE);		
		
		//$data['top_menu_view'] = $this->load->view('admin/menu_admin_view',$data,TRUE);
		
		$this->layout->view($view,$data);
	
	}

	function index()
	{
		$user_id =	$this->hmvc_auth->get('id');
		$data['title']	=	'Albums';
		$data['h1']		= 	'Showing all albums';
		$data['query']	=	$this->dashboard_model->get_albums($user_id);
	    //$data['main'][]	= 	'gallery/albums_list.php';
		$this->load->vars($data);
		$this->render('gallery/albums_list', $data);
	}
=======
	function index()
	{
=======
	function index()
	{
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		$data['menu'] = 'albums';
		$user_id = $this->session->userdata('id');
		$data['query'] = $this->dashboard_model->get_users_albums($user_id);

		$this->_render('gallery/albums_index', $data);
	}
/* DEPRECATED? Might not need a function for add new album since we do it with ajax
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f

	function new_album()
	{
		$data['title']	=	'Albums';
		$data['h1']		= 	'Create New Album';
		$data['user_id'] =	$this->hmvc_auth->get('id');
		$this->load->helper('form');
		$this->load->vars($data);
		$this->render('gallery/albums_new', $data);

	}
*/


	function edit($id = 0)
	{
<<<<<<< HEAD
<<<<<<< HEAD
		if(!$id)
		{
			redirect(base_url().'/dashboard/albums/', refresh);	
		}
		
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		if(!$id) { redirect(base_url().'/dashboard/albums/', refresh); }

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		$this->load->helper('form');

		$data['title']	=	'Albums';
		$data['h1']		= 	'Editing album '.$this->dashboard_model->edit_album_name($id);
		$data['query']	=	$this->dashboard_model->edit_album($id);
		$this->load->vars($data);
		$this->_render('gallery/albums_edit',$data);
	}

	function get_album_info()
	{
		$id = $_POST['id'];
		if(!$id){
			redirect(base_url().'/dashboard/albums/', refresh);
		}
		$result = json_encode($this->dashboard_model->edit_album($id));
		echo $result;
	}

	function submit()
	{

		$data = array(
			'id'		=> $this->input->post('id'),
			'name' 		=> $this->input->post('name'),
			'url'		=> url_title($this->input->post('name')),
			'private'   => ($this->input->post('private') == 'on') ? 1 : 0,
			'full_txt'	=> $this->input->post('full_txt'),
			'owner'		=> $this->input->post('owner')
		);


		$submit_id = $this->dashboard_model->update_album($data);


		if(!$data['id'])
		{
	        $this->session->set_flashdata('jgrowl', 'Album created');
		}
		else
		{
	        $this->session->set_flashdata('jgrowl', 'Album info updated');
		}


		redirect('dashboard/images/show/'.$submit_id, 'refresh');
		exit;


	}
	function add_album()
	{

		$data = array(
			'id'		=> $this->input->get('id'),
			'name' 		=> $this->input->get('name'),
			'url'		=> url_title($this->input->get('name')),
			'private'   => ($this->input->get('private') == 'on') ? 1 : 0,
			'full_txt'	=> $this->input->get('full_txt'),
			'owner'		=> $this->input->get('owner')
		);

		if(!$data['id'])
			{
				$this->db->insert('albums', $data);
	            $id = $this->db->insert_id();

				if(empty($data['name']))
				{
					$data['name'] = 'Gallery '.$id;
					$data['url'] = 'gallery_'.$id;
				}

				if(strlen($data['url']) < strlen($data['name']))
				{
					$data['url']= 'gallery_'.$id;
				}

	            $data['id']= $id;
	            $data['rank'] = 10000 - $id;

	        	$this->db->where('id', $data['id']);
	    	    $this->db->update('albums', $data);

	    	    $this->session->set_flashdata('jgrowl', 'Album created');

			}
			else
			{

				if(empty($data['name']))
				{
					$data['name'] = 'Gallery '.$data['id'];
					$data['url'] = 'gallery_'.$data['id'];
				}

				if(strlen($data['url']) < strlen($data['name']))
				{
					$data['url']= 'gallery_'.$id;
				}

			 	$this->db->where('id', $data['id']);
				$this->db->update('albums', $data);

				$this->session->set_flashdata('jgrowl', 'Album info updated');
			}

			//return $data['id'];

			redirect('dashboard/images/show/'.$id);
	}


	function delete($id)
	{

		if(!$id)
		{
			$url = base_url().'admin/albums/';
			header('Location: '.$url);
			exit;
		}

		$this->dashboard_model->albums_delete($id);

        $feedback = 'Album deleted';

        if($this->_is_ajax()){
            echo $feedback;
        }
        else {
            $this->session->set_flashdata('jgrowl', $feedback);
		    redirect('dashboard/albums/', 'refresh');
        }
		exit;
	}


	function admin()
	{
<<<<<<< HEAD
<<<<<<< HEAD
		$data['query']	=	$this->dashboard_model->get_albums();
		$data['tab']	= 	'admin-projects';
		$test = $data['query']->result();
		$this->render('gallery/albums_admin_list_table', $data);
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		$payload	=	$this->dashboard_model->get_albums();
		$payload = $payload->result();
		$data['query']	=	$payload;
		$data['tab']	= 	'admin-projects';
		$data['menu'] = 'admin';
		$this->_render('gallery/albums_admin', $data);
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
	}

}


/* End of file albums.php */
