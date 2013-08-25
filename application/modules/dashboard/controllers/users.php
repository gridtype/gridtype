<?php

class Users extends MY_Controller {

   function __construct()
   {
       parent::__construct();
      if(! $this->hmvc_auth->is_admin()) exit('You are not an Admin!');
      $this->load->model('Mdl_users');
   }

<<<<<<< HEAD
<<<<<<< HEAD
		$this->layout->setLayout('/layout_view');
		$data['albums'] = $this->hmvc_auth->get_user_albums();
		$data['userid'] = $this->hmvc_auth->get('id');				
		$data['logged_in'] = $this->hmvc_auth->logged_in();
		$data['username'] = $this->hmvc_auth->get('username');
		$data['role'] = $this->hmvc_auth->get('role');  
		$data['header_view'] = $this->load->view('header_view',$data,TRUE);
		$data['footer_view'] = $this->load->view('footer_view',$data,TRUE);	
		$data['top_menu_view'] = $this->load->view('admin/menu_admin_view',$data,TRUE);
					
		$this->layout->view($view,$data);

  }
		  
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
   public function index()
   {
	  $data = array(
	    'rows' => $this->db->get('users'),
<<<<<<< HEAD
<<<<<<< HEAD
	  );
      $data['tab']	= 	'admin-users';
      $this->render('users/index', $data);
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
	    'tab' => 'admin-users',
	    'menu' => 'admin'
	  );

      $this->_render('users/index', $data);
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
   }

   public function add()
   {
<<<<<<< HEAD
<<<<<<< HEAD
       $this->render('users/add');
=======
       $this->_render('users/add');
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
       $this->_render('users/add');
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
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
<<<<<<< HEAD
<<<<<<< HEAD
            $password = $this->hmvc_auth->secure_password($this->input->post('email'),$this->input->post('password')); 
=======
            $password = $this->hmvc_auth->secure_password($this->input->post('email'),$this->input->post('password'));
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
            $password = $this->hmvc_auth->secure_password($this->input->post('email'),$this->input->post('password'));
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f

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
<<<<<<< HEAD
<<<<<<< HEAD
       $this->render('users/edit', $data);
=======
       $this->_render('users/edit', $data);
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
       $this->_render('users/edit', $data);
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
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
