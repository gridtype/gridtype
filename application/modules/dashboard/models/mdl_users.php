<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


/**
* Users Model
* These methods are to be only by back end controllers.
*
* @package		GritType
* @author		Jesse Marple
* @link			http://www.zocaloconsulting.com
*/



class Mdl_users extends CI_Model {

   function __construct()
   {
       parent::__construct();
   }


	/**
	* Get album title plus id, text and private
	*
	* @access public
	* @param int
	* @return array
	*/
    function get_username($id)
    {

    	$this->db->get_where('users', array('id' => $id), 1);
        $this->db->where('id', $album);
		$query = $this->db->get('albums');

		if(!$query->num_rows())
			return FALSE;

		$row = $query->row_array();

        return $row;

    }



}
