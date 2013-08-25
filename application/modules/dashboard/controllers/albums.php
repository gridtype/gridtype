<?php

class Albums extends MY_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('dashboard_model');
		$this->load->model('Gallery_model');

	}
	function index()
	{
		$data['menu'] = 'albums';
		$user_id = $this->session->userdata('id');
		$data['query'] = $this->dashboard_model->get_users_albums($user_id);

		$this->_render('gallery/albums_index', $data);
	}

	function edit($id = 0)
	{
		if(!$id) { redirect(base_url().'/dashboard/albums/', refresh); }

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
		$payload	=	$this->dashboard_model->get_albums();
		$payload = $payload->result();
		$data['query']	=	$payload;
		$data['tab']	= 	'admin-projects';
		$data['menu'] = 'admin';
		$this->_render('gallery/albums_admin', $data);
	}

}


/* End of file albums.php */
