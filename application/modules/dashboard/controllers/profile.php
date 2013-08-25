<?php

class Profile extends MY_Controller {

   function __construct()
   {
       parent::__construct();
         //if(! $this->hmvc_auth->get('logged_in')) exit('Please log in');
          $this->load->model('Mdl_users');
   }

   public function index()
   {
       $id = $this->hmvc_auth->get('id');
       $row = $this->db->get_where('users', array('id' => $id))->row();
       $data = array(
           'row' => $row,
       );
       $this->_render('users/profile', $data);
       //$this->load->view('users/edit', $data);
   }

   public function index_validate($id)
   {
       $this->load->library('form_validation');
       $this->form_validation->set_rules('username', 'Username', 'trim|required');
       $this->form_validation->set_rules('about', 'About', 'trim|required');
       //$this->form_validation->set_rules('role', 'Role', 'trim|required');
       $this->form_validation->set_rules('email', 'Email', 'trim|required');


       //$this->form_validation->set_rules('password', 'Password', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->edit();
       } else {
           $data = array(
               'username' => $this->input->post('username'),
                'about' => $this->input->post('about'),
               //'role' => $this->input->post('role'),
               'email' => $this->input->post('email'),
               //'password' => $this->input->post('password'),
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
            //secure_password($email, $password)
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

}
