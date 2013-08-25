<?php

class Groups extends MX_Controller {

   function __construct()
   {
       parent::__construct();
       $this->load->model('Mdl_groups');
   }

	private function render($view,$data=NULL)
	{
			$this->layout->setLayout('/layout_view');
			$data['header_view'] = $this->load->view('header_view',$data,TRUE);
			$data['footer_view'] = $this->load->view('footer_view',$data,TRUE);
			$this->layout->view($view,$data);
	}
   public function index()
   {
       $data = array(
           'rows' => $this->db->get('groups'),
       );
		$this->render('groups/index',$data);
   }

   public function add()
   {
		$this->render('groups/add');
   }

   public function add_validate()
   {
       $this->load->library('form_validation');
       $this->form_validation->set_rules('name', 'Name', 'trim|required');
       $this->form_validation->set_rules('url', 'Url', 'trim|required');
       $this->form_validation->set_rules('description', 'Description', 'trim|required');
       $this->form_validation->set_rules('private', 'Private', 'trim|required');
       $this->form_validation->set_rules('timestamp', 'Timestamp', 'trim|required');
       $this->form_validation->set_rules('creator', 'Creator', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->add();
       } else {
           $data = array(
               'name' => $this->input->post('name'),
               'url' => $this->input->post('url'),
               'description' => $this->input->post('description'),
               'private' => $this->input->post('private'),
               'timestamp' => $this->input->post('timestamp'),
               'creator' => $this->input->post('creator'),
           );
           $this->db->insert('groups', $data);
           $this->index();
       }
   }

   public function edit($id)
   {
       $row = $this->db->get_where('groups', array('id' => $id))->row();
       $data = array(
           'row' => $row,
       );
		$this->render('groups/edit',$data);
   }

   public function edit_validate($id)
   {
       $this->load->library('form_validation');
       $this->form_validation->set_rules('name', 'Name', 'trim|required');
       $this->form_validation->set_rules('url', 'Url', 'trim|required');
       $this->form_validation->set_rules('description', 'Description', 'trim|required');
       $this->form_validation->set_rules('private', 'Private', 'trim|required');
       $this->form_validation->set_rules('timestamp', 'Timestamp', 'trim|required');
       $this->form_validation->set_rules('creator', 'Creator', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->edit();
       } else {
           $data = array(
               'name' => $this->input->post('name'),
               'url' => $this->input->post('url'),
               'description' => $this->input->post('description'),
               'private' => $this->input->post('private'),
               'timestamp' => $this->input->post('timestamp'),
               'creator' => $this->input->post('creator'),
           );
           $this->db->where('id', $id);
           $this->db->update('groups', $data);
           $this->index();
       }
   }

   public function delete($id)
   {
       $this->db->delete('groups', array('id' => $id));
       $this->index();
   }

}
