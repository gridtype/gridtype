<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends MY_Controller{

    function __construct() {

        parent::__construct();

		if(!$this->hmvc_auth->get('logged_in')) redirect('welcome');
        $this->load->library('form_validation');
		$this->load->model('dashboard_model');
        $this->form_validation->CI =& $this;
    }


    public function index(){
    	$data['menu'] = 'dashboard';
		$data['role'] = $this->hmvc_auth->get_role();
		$data['overview'] = $this->dashboard_model->get_user_overview();
		$this->_render('dashboard_view', $data);

    }

	public function get(){
		$data['id'] = $this->uri->segment(3);
		$this->render('dashboard_view', $data);
	}
}