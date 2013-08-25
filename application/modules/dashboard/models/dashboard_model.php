<?php

/**
* Gallery Dashboard Model
* These methods only to be accessed via logged in user
*
* @package		GridType
* @author		Jesse Marple
* @link			http://www.zocaloconsulting.com
*/

class dashboard_model extends CI_Model {


	/**
	* PHP4 Style contructor
	* [if(date('Y', time()) > 2006)) echo 'Flux Capacitor broken again??']
	*
	* TODO: Model getting too fat - split into submodels (albums, images, misc?)
	*
	* @access public
	* @return void
	*/
	function __construct()
	{
		parent::__construct();


	}


	/**
	* A brief synopsis of albums & images
	*
	* @access public
	* @return array
	*/
	function get_overview()
	{

        $albums = $this->db->count_all_results('albums');

        $images = $this->db->count_all_results('images');

		$max_upload = GALLERY_MAX_UPLOAD / 1024;
		return array
				(
					'albums' => $albums,
					'images' => $images,
					'max_upload' => $max_upload.' MB'
				);

	}


	/**
	* A brief synopsis of user albums, images, last rated
	*
	* @access public
	* @return array
	* TODO: This can be cleaned up into smaller reusable helper functions - a la album_count
	*/
	function get_user_overview()
	{
		$owner = $this->hmvc_auth->get('id');
		//get album count
		$this->db->where('owner', $owner);
		$this->db->from('albums');
        $albums = $this->db->count_all_results();
        $this->db->flush_cache();
        //total image count
		$this->db->where('owner', $owner);
		$this->db->from('images');
        $images = $this->db->count_all_results();
        // recently rated images
		$this->db->select('images.image, images.image_type, images.id, images.album');
		$this->db->distinct();
		$this->db->where('piece_owner', $owner);
		$this->db->join('images', 'images.owner = ratings.piece_owner');
		$this->db->order_by("last_rated_on", "desc");
		$this->db->limit(5);
		$this->db->from('ratings');
		$recent_rating = $this->db->get();
        $this->db->flush_cache();
		// recent comments
		$this->db->select('images.id');
		$this->db->where('owner', $owner);
		$this->db->from('images');
		$some_query = $this->db->get();
		$some_query = $some_query->result_array();
		$image_array = array();
//		var_dump($some_query);


		//Test if has commented images
		if(!$some_query){
		} else {
		foreach ($some_query as $i){
			array_push($image_array, $i['id']);
		}
        $this->db->flush_cache();
		$this->db->select('comments.*,images.*,users.*');
		$this->db->where('comments.flagged',0);
		$this->db->join('images', 'comments.image_id = images.id');
		$this->db->join('users', 'comments.user_id = users.id');
		$this->db->where_in('comments.image_id', $image_array);
		$this->db->order_by('comments.timestamp', 'desc');
		$this->db->limit(5);
		$recent_comments = $this->db->get('comments');

		//$max_upload = GALLERY_MAX_UPLOAD / 1024;
		return array
				(
					'albums' => $albums,
					'images' => $images,
					'rated_pieces' => $recent_rating->result(),
					'recent_comments' => $recent_comments->result()
					//'max_upload' => $max_upload.' MB'
				);
			}
	}

	/**
	* Update settings record
	*
	* @access public
	* @access array
	* @return void
	*/
	function update_settings($data)
	{

		 	$this->db->where('id', '1');
			$this->db->update('settings', $data);

	}



/* -------------------------------------------------------------
ALBUMS
 ------------------------------------------------------------- */

 	function get_users_albums($user_id){
	 		// Query for albums, since we are logged in and getting our own albums, we don't need to look for private
			// Query if image is private
			// query image cover from gallery model
			// query album image count

			$this->db->where('owner', $user_id);
        	$this->db->order_by('id', 'asc');
        	$albums = $this->db->get('albums');
        	$albums = $albums->result();
        	foreach ($albums as $album){
				$this->db->where('album', $album->id);
				$this->db->from('images');
				$album->image_count = $this->db->count_all_results();
				$album->cover_image	= $this->Gallery_model->album_cover($album->id);
        	}
			return $albums;
 	}



	/**
	* Get all albums
	* NOTE: gallery_model's method only selects non private
	* and is paginagated
	*
	* @access public
	* @return resource
	*/
    function get_albums($user_id = NULL)
    {
    	if ($user_id != NULL){
			$this->db->where('owner', $user_id);
        	$this->db->order_by('rank', 'asc');
        	$query = $this->db->get('albums');
        	return $query;
        } else {
			$query = $this->db->get('albums');
        	return $query;
        }

    }

	function edit_album_name($album)
	{

		$this->db->select('name');
		$this->db->where('id', $album);
		$this->db->limit(1);
		$query = $this->db->get('albums');

		$row = $query->row();

		return $row->name;

	}


	function edit_album($album)
	{

        $this->db->where('id', $album);
        $this->db->limit(1);
        $query = $this->db->get('albums');

		$row = $query->row();

		return $row;

	}


	function albums_reorder($images)
	{

		$total_images = count($this->input->post('images'));

		for($image = 0; $image < $total_images; $image++ )
		{
			$id = $images[$image];
			$rank = $image;
            $data = array(
                'rank' => 10000 - ($rank*-1),
                'id' => $id
            );

		 	$this->db->where('id', $data['id']);
			$this->db->update('albums', $data);
		}

		return;

	}


	function update_album($data)
	{
		//var_dump($data);


	}

/* -------------------------------------------------------------
imageS
------------------------------------------------------------- */
	function images_get($id)
    {

        $this->db->select('id, name, album ,image, image_type, highlight');
        $this->db->where('album', $id);
        $this->db->order_by('rank', 'asc');
        $query = $this->db->get('images');

		return $query;

	}

	function images_get_all()
    {
    	$user_id =	$this->hmvc_auth->get('id');
        $this->db->select('id, name, album ,image, image_type, highlight');
        $this->db->where('owner', $user_id);
        $this->db->order_by('rank', 'asc');
        $query = $this->db->get('images');

		return $query;

	}

	function images_edit($id)
    {

        $this->db->where('id', $id);
        $this->db->limit(1);
        $query = $this->db->get('images');

		$row = $query->row();

		return $row;


	}



	/**
	* Get image's rating information from the db
	*
	* @access public
	* @param int
	* @return object
	*/
	function get_image_rating($id)
	{

		//this is all garbage - delete me
		$result;
		$this->db->select_avg('criteria1');
		$result['c1'] = $this->db->get('ratings');

		for ($i = 1; $i <= 5; $i++){
			$c_name = 'criteria'.$i;
			$c_pos = 'c'.$i;
			$this->db->select_avg($c_name);
			$result['c1'] = $this->db->get('ratings');


		}


		$rate1 = $r1->row();
		$therate1 = $rate1->criteria1;

	   	$r2 = $this->db->select_avg('criteria2');
		$r2 = $this->db->get('ratings');
		$rate2 = $r2->row();
		$therate2 = $rate2->criteria2;

	   	$r3 = $this->db->select_avg('criteria3');
		$r3 = $this->db->get('ratings');
		$rate3 = $r3->row();
		$therate3 = $rate3->criteria3;

	   	$r4 = $this->db->select_avg('criteria4');
		$r4 = $this->db->get('ratings');
		$rate4 = $r4->row();
		$therate4 = $rate4->criteria4;

		$r5 = $this->db->select_avg('criteria5');
		$r5 = $this->db->get('ratings');
		$rate5 = $r5->row();
		$therate5 = $rate5->criteria5;

		$image_id = $this->uri->segment(3);
		$tr = $this->db->query("SELECT COUNT(ID) AS total FROM ratings WHERE piece_id = $image_id");
		$trrow = $tr->row();





	}


	function images_highlight($album, $id)
	{

        $data = array(
            'highlight' => 0
        );

    	$this->db->where('album', $album);
		$this->db->update('images', $data);


        $highlight = array(
            'id' => $id,
            'highlight' => 1
        );

    	$this->db->where('id', $highlight['id']);
		$this->db->update('images', $highlight);


	}


	function images_update($data)
	{


		if($_FILES['image']['name'])
		{

            if(array_key_exists('id', $data))
            {
			    $this->images_delete($data['id'], TRUE);
            }

			$folder = './uploads/gallery-'.$data['album'].'/';

			if(!is_dir($folder))
			{
				mkdir($folder, 0777);
			}


			$config['upload_path'] = $folder;
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$config['max_size']	= GALLERY_MAX_UPLOAD;

			$this->load->library('upload', $config);

				if (!$this->upload->do_upload('image'))
				{
					$errors = array('error' => $this->upload->display_errors());

                    return $errors;

				}
				else
				{


					$file = array('upload_data' => $this->upload->data());
					chmod($file['upload_data']['full_path'], 0777);


					$data['image'] = substr($folder.$file['upload_data']['raw_name'], 1);
					$data['image_type'] = $file['upload_data']['file_ext'];

					$this->_resize_pic($file['upload_data']['full_path'], '700', '500');

				}
		}



		if(!array_key_exists('id', $data))
		{
			$data['rank'] = time();
			$this->db->insert('images', $data);
		}
		else
		{
		 	$this->db->where('id', $data['id']);
			$this->db->update('images', $data);
		}

		return TRUE;


	}


	function images_reorder($album)
	{
		$images = $this->input->post('images');
		$total_images = count($this->input->post('images'));

		for($image = 0; $image < $total_images; $image++ )
		{

            $data = array(
                'id' => $images[$image],
                'rank' => $rank = $image
            );

		 	$this->db->where('id', $data['id']);
			$this->db->update('images', $data);

		}

		return;

	}


	function images_delete($id = 0, $images_only = FALSE)
	{

        $this->db->select('image, image_type');
        $this->db->where('id', $id);
        $query = $this->db->get('images');

		$row = $query->row();

		if(!$images_only)
		{
			$this->db->where('id', $id);
			$this->db->delete('images');
		}

		if(!empty($row->image))
		{
			$this->_remove_image($row->image, $row->image_type);
		}

	}


	function albums_delete($id = 0)
	{

		// GET INFO ABOUT THE ALBUM WE'RE ABOUT TO WIPE
        $this->db->select('id');
        $this->db->where('id', $id);
        $query = $this->db->get('albums');

		$row = $query->row();
		$album = $row->id;


		$query->free_result();

		// DELETE ALL imageS IN ALBUM
        $this->db->select('id');
        $this->db->where('album', $album);
        $query = $this->db->get('images');

		foreach($query->result() as $image)
		{
			$this->images_delete($image->id);

		}
		$query->free_result();


		// NOW WIPE THE ALBUM
        $this->db->delete('albums', array('id' => $album));


	}


	function _remove_image($name, $type)
	{
		if(is_file('.'.$name.$type))
		{
			@unlink('.'.$name.$type);
		}

		if(is_file('.'.$name.'_thumb'.$type))
		{
			@unlink('.'.$name.'_thumb'.$type);
		}

		if(is_file('.'.$name.'_mid'.$type))
		{
			@unlink('.'.$name.'_mid'.$type);
		}
	}

#
#	IMAGE RELATED
#

	function _upload_pic($config)
	{


			$this->load->library('upload', $config);

				if (!$this->upload->do_upload('image'))
				{
					$this->upload->display_errors();
					exit();
				}
				else
				{

					$file = array('upload_data' => $this->upload->data());
					chmod($file['upload_data']['full_path'], 0777);

					$this->_resize_pic($file['upload_data']['full_path']);

				}



	}


	function _resize_pic($path)
	{


			$images = array();
			$dim = getimagesize($path);
			$this->load->library('image_lib');

			$file_info = pathinfo($path);

	#			MAIN PIC
				if($dim[0] > GALLERY_MID_W)
				{
					$this->_create_mid($path);
				}
				else
				{
					$mid = $file_info['dirname'] .
								'/' . $file_info['filename'] .
								'_mid' . '.' . $file_info['extension'];

                    copy($path, $mid);
				}



	#			THUMBNAIL
				if($dim[0] > GALLERY_THUMB_W)
				{
					$this->_create_thumb($path);
				}
				else
				{
					$thumb = $file_info['dirname'] .
								'/' . $file_info['filename'] .
								'_thumb' . '.' . $file_info['extension'];

					copy($path, $thumb);
				}


	}


	function _create_mid($path)
	{

			$this->load->library('image_lib');

			$config['image_library'] = 'gd2';
			$config['library_path'] = LIB_PATH;
			$config['source_image'] = $path;
			$config['create_thumb'] = TRUE;
			$config['thumb_marker'] = '_mid';
			$config['maintain_ratio'] = TRUE;
			$config['width'] = GALLERY_MID_W;
			$config['height'] = GALLERY_MID_H;
			$this->image_lib->initialize($config);

			if ( ! $this->image_lib->resize())
			{
				echo $this->image_lib->display_errors();
				exit;
			}


			$this->image_lib->clear();

	}


	function _create_thumb($path)

	{
			$this->load->library('image_lib');

			$config['image_library'] = 'gd2';
			$config['library_path'] = LIB_PATH;
			$config['source_image'] = $path;
			$config['create_thumb'] = TRUE;
			$config['thumb_marker'] = '_thumb';
			$config['maintain_ratio'] = TRUE;
			$config['width'] = GALLERY_THUMB_W;
			$config['height'] = GALLERY_THUMB_H;
			$this->image_lib->initialize($config);

			if ( ! $this->image_lib->resize())
			{
				echo $this->image_lib->display_errors();
			}


			$this->image_lib->clear();


	}



}


/* End of file dashboard_model.php */
