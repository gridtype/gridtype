<?php

class Ratings extends MX_Controller {

   function __construct()
   {
       parent::__construct();
       $this->load->model('Mdl_ratings');
   }

   public function index()
   {
       $data = array(
           'rows' => $this->db->get('ratings'),
       );
       $this->load->view('ratings/index', $data);
   }

   public function add()
   {
       $this->load->view('ratings/add');
   }

   public function add_validate()
   {
       $this->load->library('form_validation');
       $this->form_validation->set_rules('criteria1', 'Criteria1', 'trim|required');
       $this->form_validation->set_rules('criteria2', 'Criteria2', 'trim|required');
       $this->form_validation->set_rules('criteria3', 'Criteria3', 'trim|required');
       $this->form_validation->set_rules('criteria4', 'Criteria4', 'trim|required');
       $this->form_validation->set_rules('piece_id', 'Piece id', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->add();
       } else {
           $data = array(
               'criteria1' => $this->input->post('criteria1'),
               'criteria2' => $this->input->post('criteria2'),
               'criteria3' => $this->input->post('criteria3'),
               'criteria4' => $this->input->post('criteria4'),
               'piece_id' => $this->input->post('piece_id'),
           );
           $this->db->insert('ratings', $data);
           $this->index();
       }
   }

   public function edit($id)
   {
       $row = $this->db->get_where('ratings', array('id' => $id))->row();
       $data = array(
           'row' => $row,
       );
       $this->load->view('ratings/edit', $data);
   }

   public function edit_validate($id)
   {
       $this->load->library('form_validation');
       $this->form_validation->set_rules('criteria1', 'Criteria1', 'trim|required');
       $this->form_validation->set_rules('criteria2', 'Criteria2', 'trim|required');
       $this->form_validation->set_rules('criteria3', 'Criteria3', 'trim|required');
       $this->form_validation->set_rules('criteria4', 'Criteria4', 'trim|required');
       $this->form_validation->set_rules('piece_id', 'Piece id', 'trim|required');
       if ($this->form_validation->run() == false) {
           $this->edit();
       } else {
           $data = array(
               'criteria1' => $this->input->post('criteria1'),
               'criteria2' => $this->input->post('criteria2'),
               'criteria3' => $this->input->post('criteria3'),
               'criteria4' => $this->input->post('criteria4'),
               'piece_id' => $this->input->post('piece_id'),
           );
           $this->db->where('id', $id);
           $this->db->update('ratings', $data);
           $this->index();
       }
   }

   public function delete($id)
   {
       $this->db->delete('post', array('id' => $id));
       $this->index();
   }

}
