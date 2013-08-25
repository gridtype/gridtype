<?php

class Profile extends MY_Controller {

   function __construct()
   {
       parent::__construct();
         //if(! $this->hmvc_auth->get('logged_in')) exit('Please log in');
          $this->load->model('Mdl_users');
   }
  private function render($view,$data=NULL){

    $this->layout->setLayout('/layout_view');

	$data['logged_in'] = TRUE;
	$data['albums'] = $this->hmvc_auth->get_user_albums();
	$data['userid'] = $this->hmvc_auth->get('id');		
	$data['username'] = $this->hmvc_auth->get('username');
	$data['role'] = $this->hmvc_auth->get('role');  
	$data['logged_in'] = $this->hmvc_auth->logged_in();
	$data['header_view'] = $this->load->view('header_view',$data,TRUE);
	$data['footer_view'] = $this->load->view('footer_view',$data,TRUE); 
    $this->layout->view($view,$data);

  }

   public function index()
   {
       $id = $this->hmvc_auth->get('id');
       $row = $this->db->get_where('users', array('id' => $id))->row();
       $data = array(
           'row' => $row,
       );
       $this->render('users/profile', $data);
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
