<?php

class Pages extends MY_Controller {

   function __construct()
   {
       parent::__construct();
      if(! $this->hmvc_auth->is_admin()) exit('You are not an Admin!');       
       $this->load->model('Mdl_pages');
   }

	private function render($view,$data=NULL)
	{
			$this->layout->setLayout('/layout_view');
      $data['logged_in'] = $this->hmvc_auth->logged_in();
			$data['header_view'] = $this->load->view('header_view',$data,TRUE);
			$data['footer_view'] = $this->load->view('footer_view',$data,TRUE);
      $data['top_menu_view'] = $this->load->view('admin/menu_admin_view',$data,TRUE);

			$this->layout->view($view,$data);
	}
   public function index()
   {
       $data = array(
           'rows' => $this->db->get('pages'),
       );
		$this->render('pages/index',$data);
   }

   public function add()
   {
		$this->render('pages/add');
   }

   public function add_validate()
   {
       $this->load->library('form_validation');
       $this->form_validation->set_rules('title', 'Title', 'trim|required');
       $this->form_validation->set_rules('content', 'Content', 'trim|required');
       $this->form_validation->set_rules('status', 'Status', 'trim|required');
       $this->form_validation->set_rules('menu', 'Menu', 'trim');
       $this->form_validation->set_rules('menu_order', 'Menu order', 'trim');
       if ($this->form_validation->run() == false) {
           $this->add();
       } else {
           $data = array(
               'title' => $this->input->post('title'),
               'content' => $this->input->post('content'),
               'status' => $this->input->post('status'),
               'menu' => $this->input->post('menu'),
               'menu_order' => $this->input->post('menu_order'),
           );
           $this->db->insert('pages', $data);
           $this->index();
       }
   }

   public function edit($id)
   {
       $row = $this->db->get_where('pages', array('id' => $id))->row();
       $data = array(
           'row' => $row,
       );
		$this->render('pages/edit',$data);
   }

   public function edit_validate($id)
   {
       $this->load->library('form_validation');
       $this->form_validation->set_rules('title', 'Title', 'trim|required');
       $this->form_validation->set_rules('content', 'Content', 'trim|required');
       $this->form_validation->set_rules('status', 'Status', 'trim|required');
       $this->form_validation->set_rules('menu', 'Menu', 'trim|required');
       $this->form_validation->set_rules('menu_order', 'Menu order', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->edit();
       } else {
           $data = array(
               'title' => $this->input->post('title'),
               'content' => $this->input->post('content'),
               'status' => $this->input->post('status'),
               'menu' => $this->input->post('menu'),
               'menu_order' => $this->input->post('menu_order'),
           );
           $this->db->where('id', $id);
           $this->db->update('pages', $data);
           $this->index();
       }
   }

   public function delete($id)
   {
       $this->db->delete('pages', array('id' => $id));
       $this->index();
   }

}
