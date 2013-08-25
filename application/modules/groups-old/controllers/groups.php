<?php

class Groups extends MY_Controller {

	function __construct()
	{
		parent::__construct();
		if(!$this->hmvc_auth->get('logged_in')) redirect(site_url('welcome'));
		$this->load->model('Mdl_groups');
	}

	public function index()
	{
		$data['rows'] = $this->Mdl_groups->get_all_public_groups();
		$this->_render('index',$data);

	}

	public function view($id)
	{
		$uid = $this->session->userdata('id');

		$data['users'] = $this->Mdl_groups->get_users_in_group($id);
		$data['group'] = $this->Mdl_groups->get_group_info($id);
		$data['is_member'] = $this->Mdl_groups->is_user_member($uid,$id);
		$this->_render('view',$data);
	}

	public function edit()
	{

	}

	public function edit_validation()
	{

	}

	public function delete()
	{

	}
}
