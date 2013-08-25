<?php

class Comments extends MY_Controller {

   function __construct()
   {
       parent::__construct();
		if(! $this->hmvc_auth->is_admin()) redirect((site_url('dashboard')));

   }

   public function index()
   {
       $data = array(
           'rows' => $this->db->get('comments'),
       		'tab' => 'admin-comments',
       		'menu' => 'admin'

       );
		$this->_render('comments/index',$data);
   }
/*

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
