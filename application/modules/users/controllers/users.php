<?php

class Users extends MY_Controller {

   function __construct()
   {
       parent::__construct();
		if(! $this->hmvc_auth->get('logged_in')) redirect(site_url('welcome'));
       $this->load->model('Mdl_users');
   }
   public function index()
   {
	   $user_array = $this->db->get('users');
	   $user_array = $user_array->result();
	   $admins = array();
	   $faculty = array();
	   $users = array();
	   foreach($user_array as $user){
			switch ($user->role) {
			    case "admin":
			        array_push($admins,$user);
			        break;
			    case "faculty":
			        array_push($faculty,$user);
			        break;
			    case "user":
			        array_push($users,$user);
			        break;
			    default:
			        array_push($users,$user);
			        break;
			}
	   };
       $data = array(

			'admins' => $admins,
			'faculty' => $faculty,
			'students' => $users

       );
		$this->_render('users/index',$data);
   }





   public function add()
   {
       $this->load->view('users/add');
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
           $data = array(
               'username' => $this->input->post('username'),
               'role' => $this->input->post('role'),
               'email' => $this->input->post('email'),
               'password' => $this->input->post('password'),
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
       $this->load->view('users/edit', $data);
   }



   public function view($id)
   {
       $row = $this->db->get_where('users', array('id' => $id))->row();
       $data = array(
           'row' => $row,
       );
       $this->load->view('users/view', $data);
   }



   public function edit_validate($id)
   {
       $this->load->library('form_validation');
       $this->form_validation->set_rules('username', 'Username', 'trim|required');
       $this->form_validation->set_rules('role', 'Role', 'trim|required');
       $this->form_validation->set_rules('email', 'Email', 'trim|required');
       $this->form_validation->set_rules('password', 'Password', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->edit();
       } else {
           $data = array(
               'username' => $this->input->post('username'),
               'role' => $this->input->post('role'),
               'email' => $this->input->post('email'),
               'password' => $this->input->post('password'),
           );
           $this->db->where('id', $id);
           $this->db->update('users', $data);
           $this->index();
       }
   }

   public function delete($id)
   {
       $this->db->delete('post', array('id' => $id));
       $this->index();
   }

}
