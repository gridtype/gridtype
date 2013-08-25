<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends MY_Controller{

    function __construct() {

        parent::__construct();

		if(!$this->hmvc_auth->get('logged_in')) redirect('welcome');
        $this->load->library('form_validation');
		$this->load->model('dashboard_model');
        $this->form_validation->CI =& $this;
    }

/*
	private function render($view,$data=NULL){

		$this->layout->setLayout('/layout_view');
		$data['logged_in'] = TRUE;
		$data['albums'] = $this->hmvc_auth->get_user_albums();
		$data['userid'] = $this->hmvc_auth->get('id');
		$data['username'] = $this->hmvc_auth->get('username');
		$data['header_view'] = $this->load->view('header_view',$data,TRUE);
		$data['footer_view'] = $this->load->view('footer_view',$data,TRUE);
		$this->layout->view($view,$data);

	}
*/

    public function index(){
    	$data['menu'] = 'dashboard';
		$data['role'] = $this->hmvc_auth->get_role();
		$data['overview'] = $this->dashboard_model->get_user_overview();
<<<<<<< HEAD
<<<<<<< HEAD
		$this->render('dashboard_view', $data);
=======
		$this->_render('dashboard_view', $data);
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
		$this->_render('dashboard_view', $data);
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f

    }

	public function get(){
		$data['id'] = $this->uri->segment(3);
		$this->render('dashboard_view', $data);
	}
}