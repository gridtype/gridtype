<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends MY_Controller
{
    function __construct()
    {
        parent::__construct();

		if(! $this->hmvc_auth->is_admin()){
			//exit('You are not an Admin!');
			redirect(site_url());

		}

        $this->load->library('form_validation');
        $this->form_validation->CI =& $this;
    }

	public function index()
	{
		$data['menu'] = 'admin';
		$data['tab'] = 'admin-dashboard';
		$this->_render('admin/dashboard_admin',$data);

    }
/*
	public function pagination()
	{
		$data['id'] = (int) $this->uri->segment(4);

		$data['page'] = self::create_pagination(50);

		self::render('admin/dashboard_admin_add_view',$data);
	}
*/
/*
 	private function create_pagination($total)
	{

		$this->load->library('pagination');

		$config['total_rows'] = $total;
		$this->pagination->initialize($config);


		return $this->pagination->create_links();

	}
*/

	public function users(){
	     redirect('/users/index/');
		//self::render('users/index');
	}
	
	public function criterion()
	{
		$data['tab']	= 	'admin-ratings';
		self::render('admin/dashboard_admin_criterion',$data);
	}
	public function options()
	{
		$data['tab']	= 	'admin-options';
		$this->_render('admin/dashboard_admin_options',$data);

	}
}
