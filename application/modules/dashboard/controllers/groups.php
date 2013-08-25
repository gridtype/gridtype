<?php

class Groups extends MY_Controller {

   function __construct()
   {
       parent::__construct();
       $this->load->model('Mdl_groups');
   }

   public function index()
   {
   	   $uid = $this->session->userdata('id');

       $data = array(
           'rows' => $this->Mdl_groups->get_user_groups($uid),
       		'menu' => 'groups'
       	);
		$this->_render('groups/index',$data);
   }

   public function add()
   {
		$this->_render('groups/add');
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
		$this->_render('groups/edit',$data);
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
