<?php

<<<<<<< HEAD
<<<<<<< HEAD
class Comments extends GT_Controller {
=======
class Comments extends MY_Controller {
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
class Comments extends MY_Controller {
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f

   function __construct()
   {
       parent::__construct();
		if(! $this->hmvc_auth->is_admin()) redirect((site_url('dashboard')));

   }

<<<<<<< HEAD
<<<<<<< HEAD
	private function render($view,$data=NULL)
	{
		
		$this->layout->setLayout('/layout_view');
		$data['albums'] = $this->hmvc_auth->get_user_albums();
		$data['userid'] = $this->hmvc_auth->get('id');				
		$data['logged_in'] = $this->hmvc_auth->logged_in();
		$data['username'] = $this->hmvc_auth->get('username');
		$data['role'] = $this->hmvc_auth->get('role');  
		$data['header_view'] = $this->load->view('header_view',$data,TRUE);
		$data['footer_view'] = $this->load->view('footer_view',$data,TRUE);				
		$this->layout->view($view,$data);
	}
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
   public function index()
   {
       $data = array(
           'rows' => $this->db->get('comments'),
<<<<<<< HEAD
<<<<<<< HEAD
       		'tab' => 'admin-comments'

       );
		$this->render('comments/index',$data);
   }
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
       		'tab' => 'admin-comments',
       		'menu' => 'admin'

       );
		$this->_render('comments/index',$data);
   }
/*
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f

   public function edit($id)
   {
       $row = $this->db->get_where('comments', array('id' => $id))->row();
       $data = array(
           'row' => $row,
       );
		$this->render('comments/edit',$data);
   }

   public function edit_validate($id)
   {
       $this->load->library('form_validation');
       $this->form_validation->set_rules('image_id', 'Image id', 'trim|required');
       $this->form_validation->set_rules('user_id', 'User id', 'trim|required');
       $this->form_validation->set_rules('comment', 'Comment', 'trim|required');
       $this->form_validation->set_rules('role', 'Role', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->edit();
       } else {
           $data = array(
               'image_id' => $this->input->post('image_id'),
               'user_id' => $this->input->post('user_id'),
               'comment' => $this->input->post('comment'),
               'role' => $this->input->post('role'),
           );
           $this->db->where('id', $id);
           $this->db->update('comments', $data);
           $this->index();
       }
   }

*/
   public function delete($id)
   {
       $this->db->delete('comments', array('id' => $id));
       $this->index();
   }

}
