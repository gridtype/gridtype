<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends MY_Controller
{
    function __construct()
    {
        parent::__construct();

		if(! $this->hmvc_auth->is_admin()){
			//exit('You are not an Admin!');
			redirect(site_url());
<<<<<<< HEAD
<<<<<<< HEAD
		} 
       
        $this->load->library('form_validation');
        $this->form_validation->CI =& $this;
    }
	
	private function render($view,$data=NULL){
		if ($data === NULL ){
			$data['tab'] = 'admin-dashboard';
		}
		$this->layout->setLayout('/layout_view');		
		$data['albums'] = $this->hmvc_auth->get_user_albums();
		$data['userid'] = $this->hmvc_auth->get('id');				
		$data['logged_in'] = $this->hmvc_auth->logged_in();	
        $data['username'] = $this->hmvc_auth->get('username');
        $data['role'] = $this->hmvc_auth->get('role');	
		$data['header_view'] = $this->load->view('header_view',$data,TRUE);
		$data['footer_view'] = $this->load->view('footer_view',$data,TRUE);		
		
		$this->layout->view($view,$data);
	
	}




	public function index()
	{
		//$data['tab']	= 	'admin-dashboard';		
		$this->output->enable_profiler(TRUE);
		$data['tab'] = 'admin-dashboard';
		self::render('admin/dashboard_admin',$data);
		
	}
	
=======
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

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
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

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
/*
	public function pagination()
	{
		$data['id'] = (int) $this->uri->segment(4);

		$data['page'] = self::create_pagination(50);

		self::render('admin/dashboard_admin_add_view',$data);
	}
*/
/*
<<<<<<< HEAD
<<<<<<< HEAD
	
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
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
<<<<<<< HEAD
<<<<<<< HEAD
	
	public function criterion()
	{
		$data['tab']	= 	'admin-ratings';
		self::render('admin/dashboard_admin_criterion',$data);
		
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f

	public function criterion()
	{
		$data['tab']	= 	'admin-ratings';
		$this->_render('admin/dashboard_admin_criterion',$data);

<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
	}
	public function options()
	{
		$data['tab']	= 	'admin-options';
<<<<<<< HEAD
<<<<<<< HEAD
		self::render('admin/dashboard_admin_options',$data);
		
	}	
	
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		$this->_render('admin/dashboard_admin_options',$data);

	}

<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
}
