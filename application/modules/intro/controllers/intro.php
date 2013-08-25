<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Intro extends MX_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */

	private function render($view,$data=NULL){
	
		$this->layout->setLayout('/layout_view');

		$data['header_view'] = $this->load->view('header_view',$data,TRUE);
		$data['footer_view'] = $this->load->view('footer_view',$data,TRUE);	
		$this->layout->view($view,$data);

	}

	public function index()
	{
		$this->render('intro_message');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */