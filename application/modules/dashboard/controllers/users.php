<?php

class Users extends MY_Controller {

   function __construct()
   {
       parent::__construct();
      if(! $this->hmvc_auth->is_admin()) exit('You are not an Admin!');
      $this->load->model('Mdl_users');
   }

   public function index()
   {
	  $data = array(
	    'rows' => $this->db->get('users'),
      'tab' => 'admin-users',
      'menu' => 'admin'

	  );
      $this->_render('users/index', $data);
   }

   public function add()
   {
       $this->_render('users/add');
   }

   public function add_validate()
   {
       $this->load->library('form_validation');
       $this->form_validation->set_rules('username', 'Username', 'trim|required');
       $this->form_validation->set_rules('role', 'Role', 'trim|required');
       $this->form_validation->set_rules('email', 'Email', 'trim|required');
       $this->form_validation->set_rules('password', 'Password', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->add();
       } else {
            $password = $this->hmvc_auth->secure_password($this->input->post('email'),$this->input->post('password'));
           $data = array(
               'username' => $this->input->post('username'),
               'role' => $this->input->post('role'),
               'email' => $this->input->post('email'),
               'password' => $password,
           );
           $this->db->insert('users', $data);
           $this->index();
       }
   }

   public function edit($id)
   {
       $row = $this->db->get_where('users', array('id' => $id))->row();
       $data = array(
           'row' => $row,
       );

       $this->_render('users/edit', $data);
   }

   public function edit_validate($id)
   {
       $this->load->library('form_validation');
       $this->form_validation->set_rules('username', 'Username', 'trim|required');
       $this->form_validation->set_rules('role', 'Role', 'trim|required');
       $this->form_validation->set_rules('email', 'Email', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->edit();
       } else {
           $data = array(
               'username' => $this->input->post('username'),
               'role' => $this->input->post('role'),
               'email' => $this->input->post('email'),
           );
           $this->db->where('id', $id);
           $this->db->update('users', $data);
           $this->index();
       }
   }
   public function change_password($id)
   {
       $this->db->select('email');
       $email_object = $this->db->get_where('users', array('id' => $id))->row();
       $this->load->library('form_validation');
       $this->form_validation->set_rules('password', 'Password', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->edit();
       } else {
            $email = $email_object->email;
            $post_data = $this->input->post();
            $password = $this->hmvc_auth->secure_password($email,$post_data['password']);
            $data = array(
                'password' => $password
              );
           $this->db->where('id', $id);
           $this->db->update('users', $data);
           $this->index();
       }
   }
   public function delete($id)
   {
       $this->db->delete('users', array('id' => $id));
       $this->index();
   }

}
