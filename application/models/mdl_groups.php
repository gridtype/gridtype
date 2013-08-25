<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
* Album Model
* These methods are to be accessed by both front and back end controllers,
* hence the read only nature
*
* @package		GritType
* @author		Jesse Marple
* @link			http://www.zocaloconsulting.com
*/


class Mdl_groups extends MY_Model {

	public function __construct ()
    {
        parent::__construct();
        $this->_database = $this->db;
    }

    /**
     * Gets all groups. That's right. ALL groups.
     *
     * @access public
     * @return array
     */
    public function get_all_groups()
    {
		return $this->db->get('groups')->result();
    }

    /**
     * Gets just the public groups and leaves the private groups out of the results.
     *
     * @access public
     * @return array
     */
    public function get_all_public_groups()
    {
		return $this->db->get_where('groups',array('private' => 0))->result();
    }

	/**
	 * Gets users in a particular group - this is a direct request so we aren't looking for a private
	 * switch
	 *
	 * @access public
	 * @param mixed $id
	 * @return array
	 */
	public function get_users_in_group($id)
	{
		//select all users that have a group id
		$this->db->select('users.username,users.id');
		$this->db->from('users_groups');
		$this->db->where('users_groups.group_id',$id);
		$this->db->join('users','users.id = users_groups.user_id');


		return $this->db->get()->result();
	}

	/**
	 * Get the name, id and description for a particular group.
	 *
	 * @access public
	 * @param mixed $id
	 * @return array
	 */
	public function get_group_info($id)
	{
		return $this->db->get_where('groups',array('id' => $id))->first_row();
	}

	/**
	 * Displays on the dashboard, shows the user their groups.
	 *
	 * @access public
	 * @param mixed $id
	 * @return void
	 */
	public function get_user_groups($id)
	{
		$this->db->select('*');
		$this->db->from('groups');
		$this->db->where('users_groups.user_id',$id);
		$this->db->join('users_groups','users_groups.group_id = groups.id');

		return $this->db->get()->result();
	}

	public function is_user_member($user_id,$group_id)
	{
		$query = $this->db->get_where('users_groups',array('user_id'=>$user_id,'group_id'=>$group_id));
		if($query->num_rows() > 0)
		{
			$status = TRUE;
		} else {
			$status = FALSE;
		}
		return $status;
	}
}