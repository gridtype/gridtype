<?php

class Flag extends MX_Controller {

   function __construct()
   {
       parent::__construct();
   }
   
   /* Ajax Flag(ing) 
   *  uses a type to determine which method to use
   *  options include comment, image
   *
   */
   public function ajax_flag(){
   	  $id = $_POST['id'];
   	  $type = $_POST['type'];	   
	   if ($type == null){
		   echo 'flagging failed';
	   } else {
		   if ($type === 'comment'){
			   echo 'comment flagged';
		   }
		   if ($type === 'image'){
			 echo 'image flagged';
			 $data = array(
               'flagged' => 1
            );
            $this->db->where('id', $id);
            $this->db->update('images', $data);			   
		   }
		   if ($type === 'user'){
			   echo 'user flagged';			   
		   }
	   }
	   
   }
}