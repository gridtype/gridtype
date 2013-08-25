<?php

class Pages extends MX_Controller {

   function __construct()
   {
       parent::__construct();
       $this->load->model('Mdl_pages');
   }

 private function render($view,$data=NULL){
	
		$this->layout->setLayout('/layout_view');
		$data['header_view'] = $this->load->view('header_view',$data,TRUE);
		$data['footer_view'] = $this->load->view('footer_view',$data,TRUE);	
		$this->layout->view($view,$data);

	}
   public function index()
   {
       $data = array(
           'rows' => $this->db->get('pages'),
       );
       $this->render('index', $data);
   }

public function about()
   {	$pagetitle = 'About';
       $data = array(
           'content' => $this->db->get_where('pages', array('page_title' => $pagetitle))
       );
       $this->render('index', $data);
   }
   
}
