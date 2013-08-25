<?php


class Images extends MY_Controller
{

	function __construct()
	{
		parent::__construct();

		$this->load->helper(array('form', 'text'));
		$this->load->model('dashboard_model');
		$this->load->model('Gallery_model');
	}

	function index()
	{
		$data['menu'] = 'images';
		$data['query']	=	$this->dashboard_model->images_get_all();
		$this->_render('gallery/images_list', $data);
	}

	function album($id=0){

		if(!$id){
			redirect('dashboard/images', 'refresh');

		} else{
			$data['album_id']	=	$id;
			$data['album']	    =	$this->dashboard_model->edit_album_name($data['album_id']);
			$data['menu'] = 'images';
			$data['title']	=	'Albums > '.$data['album'];
			$data['query']	=	$this->dashboard_model->images_get($data['album_id']);
			$this->_render('gallery/images_list', $data);
		}
	}

	function edit($parent, $image)
	{


		$this->output->set_header("HTTP/1.0 200 OK");
		$this->output->set_header("HTTP/1.1 200 OK");
		$this->output->set_header('Last-Modified: '.gmdate('D, d M Y H:i:s', time()).' GMT');
		$this->output->set_header("Cache-Control: no-store, no-cache, must-revalidate");
		$this->output->set_header("Cache-Control: post-check=0, pre-check=0");
		$this->output->set_header("Pragma: no-cache");

		$data['album'] = str_replace('album-', '', $parent);


		if(!$data['album'] || !$image)
			die('No album/ image');

		$data['album_name']	=	$this->dashboard_model->edit_album_name($data['album']);

		$data['query']	= $this->dashboard_model->images_edit($image);

        if($data['query']->image){
            $data['image_size'] = getimagesize('.'.$data['query']->image.'_mid'.$data['query']->image_type);
        }

		$data['title']	= 'Editing <em>'.$data['query']->name.'</em>';
		$data['back'] = 'dashboard/images/'.$data['album'];
		$data['delete'] = 'dashboard/images/delete/'.$data['query']->id.'/'.$data['album'];
		$data['h1']		= $data['title'];
		$data['user_id'] =	$this->hmvc_auth->get('id');

		$this->_render('gallery/images_edit.php',$data);

	}
	function view($parent, $image)
	{
		//TODO this needs to be randomized in order to add security
		$data['album'] = str_replace('album-', '', $parent);

		//Check if someone is messing with our url
		if(!$data['album'] || !$image){
			die('No album/ image');
		}
		$payload = $this->Gallery_model->uber_image_info($image);
		$data['image'] = $payload['image'];
		$data['ratings_count'] = $payload['ratings_count'];
		$data['median'] = $payload['median'];
		$data['comments'] = $payload['comments'];
		$data['album'] = $payload['album'];
		$data['user_id'] =	$this->hmvc_auth->get('id');

		$data['menu'] = 'images';
		$this->_render('gallery/images_view',$data);


	}

	function new_image($parent)
	{

		$data['album'] = str_replace('album-', '', $parent);
		$data['album_name']	=	$this->dashboard_model->edit_album_name($data['album']);
		$data['user_id'] =	$this->hmvc_auth->get('id');
		$data['title']	=	'Album: '.$data['album_name'];
		$data['h1']		= 	'Add a new image in '.$data['album_name'];

		//$data['main'][]	= 	'admin/images_new.php';


		//$this->load->view('admin/dashboard', $data);
		$this->_render('gallery/images_new', $data);


	}


	function submit()
	{

		$data = array(
			'album'			=> $this->input->post('album'),
			'name' 			=> $this->input->post('name'),
			'owner'			=> $this->input->post('owner'),
			'description' 	=> $this->input->post('description'),
			'objective'		=> $this->input->post('objective')
		);

        if($this->input->post('id'))
        {
            $data['id'] = $this->input->post('id');
        }

        if($this->input->post('highlight') == 'on')
        {
            $this->dashboard_model->images_highlight($data['album'], $data['id']);
        }
        else
        {
            $data['highlight'] = 0;
        }


        if(!$data['name'])
        {
            $data['name'] = ' ';
        }
        if(!$data['description'])
        {
            $data['description'] = ' ';
        }
        if(!$data['objective'])
        {
            $data['objective'] = ' ';
        }

		$data['errors'] = $this->dashboard_model->images_update($data);

        if(is_array($data['errors']))
        {
            $this->load->view('dashboard/error', $data);
        }
        else
        {
            $this->session->set_flashdata('jgrowl', 'image saved');

            redirect('dashboard/images/show/'.$this->input->post('album'), 'refresh');
		    exit;
        }

	}

	/**
	 * ajax_submit function.
	 *
	 * @access public
	 * @return void
	 */
	function ajax_submit()
	{
		//Checks for input in the new album field
		if($this->input->post('new-album') != ''){
			//Set data values from new album form
			$data = array(
				'name' 		=> $this->input->post('new-album'),
				'owner' 	=> $this->input->post('owner'),
			);
			//Submit new album to DB
			$submit_id = $this->dashboard_model->update_album($data);



			//Standard Image Data
			$image_data = array(
				'album'			=> $submit_id,
				'name' 			=> $this->input->post('image-name'),
				'owner'			=> $this->input->post('owner'),
				'description' 	=> $this->input->post('description'),
				'objective'		=> $this->input->post('objective')
			);


		} else { //Selected Album from a list
			$image_data = array(
				'album'			=> $this->input->post('album'),
				'name' 			=> $this->input->post('image-name'),
				'owner'			=> $this->input->post('owner'),
				'description' 	=> $this->input->post('description'),
				'objective'		=> $this->input->post('objective')
			);
		}
		//TODO Fix this mess of a check on values
        if($this->input->post('id'))
        {
            $image_data['id'] = $this->input->post('id');
        }

        $image_data['highlight'] = 0;

        if(!$image_data['name'])
        {
            $image_data['name'] = '';
        }
        if(!$image_data['description'])
        {
            $image_data['description'] = '';
        }
        if(!$image_data['objective'])
        {
            $image_data['objective'] = '';
        }

		$image_data = $this->dashboard_model->images_update($image_data);

        if(is_array($image_data['errors']))
        {
            $this->load->view('dashboard/error', $image_data);
        }
        else
        {
            $this->session->set_flashdata('jgrowl', 'image saved');

            redirect('dashboard/images/', 'refresh');
		    exit;
        }

	}

	function delete($id)
	{

		$delete = $this->dashboard_model->images_delete($id);

        $feedback = 'image deleted';

        if($this->_is_ajax())
        {
            echo $feedback;
        }
        else
        {
            $this->session->set_flashdata('jgrowl', $feedback);
            redirect('dashboard/images', 'refresh');
        }

		exit;


	}


	function highlight($album, $id)
	{

		$this->dashboard_model->images_highlight($album, $id);


        $feedback = 'Cover image set';

        if($this->_is_ajax())
        {
            echo $feedback;
        }
        else
        {
            $this->session->set_flashdata('jgrowl', $feedback);
		    header('Location: '.$_SERVER['HTTP_REFERER']);
        }

		exit;
	}

}


/* End of file images.php */
