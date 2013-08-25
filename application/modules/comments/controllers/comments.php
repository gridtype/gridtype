<?php

class Comments extends MX_Controller {

   function __construct()
   {
       parent::__construct();
       $this->load->model('Mdl_comments');
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
           'rows' => $this->db->get('comments'),
       );
		$this->render('comments/index',$data);
   }

   public function add()
   {
		$this->render('comments/add');
   }

   public function add_validate()
   {
       $this->load->library('form_validation');
       $this->form_validation->set_rules('image_id', 'Image id', 'trim|required');
       $this->form_validation->set_rules('user_id', 'User id', 'trim|required');
       $this->form_validation->set_rules('comment', 'Comment', 'trim|required');
       $this->form_validation->set_rules('role', 'Role', 'trim|required');
       $this->form_validation->set_rules('flagged', 'Flagged', 'trim|required');
       $this->form_validation->set_rules('timestamp', 'Timestamp', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->add();
       } else {
           $data = array(
               'image_id' => $this->input->post('image_id'),
               'user_id' => $this->input->post('user_id'),
               'comment' => $this->input->post('comment'),
               'role' => $this->input->post('role'),
               'flagged' => $this->input->post('flagged'),
               'timestamp' => $this->input->post('timestamp'),
           );
           $this->db->insert('comments', $data);
           $this->index();
       }
   }

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
       $this->form_validation->set_rules('flagged', 'Flagged', 'trim|required');
       $this->form_validation->set_rules('timestamp', 'Timestamp', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->edit();
       } else {
           $data = array(
               'image_id' => $this->input->post('image_id'),
               'user_id' => $this->input->post('user_id'),
               'comment' => $this->input->post('comment'),
               'role' => $this->input->post('role'),
               'flagged' => $this->input->post('flagged'),
               'timestamp' => $this->input->post('timestamp'),
           );
           $this->db->where('id', $id);
           $this->db->update('comments', $data);
           $this->index();
       }
   }

   public function delete($id)
   {
       $this->db->delete('comments', array('id' => $id));
       $this->index();
   }

}
