<?php

class Upload extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->helper(array('form', 'url'));
	}

	function index()
	{
		$this->load->view('upload_form', array('error' => ' ' ));
	}

	function do_upload()
	{
		$config['upload_path'] = './uploads/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		//$config['max_size']	= '100000000';
		$config['max_width']  = '1024';
		$config['max_height']  = '768';

		$this->load->library('upload', $config);

		if ( ! $this->upload->do_upload())
		{
			$error = array('error' => $this->upload->display_errors());

			$this->load->view('upload_form', $error);
		}
		else
		{	
			$upload_data = $this->upload->data();
			$image_data_path = $upload_data['file_name'];
			$data2 = array(
				'path' => $image_data_path, /* EDIT THIS */
				'title' => $this->input->post('title'),
				'uploaded_by' => $this->session->userdata('id'),
			);
			$this->db->insert('images', $data2);
			$image_id = $this->uri->segment(3);	
			$data3 = array(
			'rows' => $this->db->get_where('images', array('id' => $image_id)),
			);	
			header('location: ./images/');
		}
	}
}
?>