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


class Mdl_albums extends CI_Model {

	/**
	* PHP4 Style contructor
	* [if(date('Y', time()) > 2006)) echo 'Flux Capacitor broken again??']
	*
	* @access public
	* @return void
	*/
    function __construct()
    {
        parent::__construct();
    }




	/**
	* Exactly what it says on the tin
	*
	* @access public
	* @return int
	*/
	function count_albums()
	{

        $this->db->select('id');
        $this->db->where('private', 0);
		$query = $this->db->get('albums');

		return $query->num_rows();

	}


	/**
	* Grabs DB resource of albums within range (for pagination)
	*
	* @access public
	* @param int
	* @param int
	* @return resource
	*/
    function get_albums($from, $to)
    {

        $this->db->where('private !=', 1);
        $this->db->order_by('rank', 'asc');
		$query = $this->db->get('albums', $to, $from);

		if(!$query->num_rows())
		{
			return FALSE;
		}
		else
		{
			return $query;
		}

    }

	/**
	* Counts all images per album
	*
	* @access public
	* @return array
	*/
	function get_albums_image_count()
	{

        $this->db->select('id');
        $this->db->where('private !=', 1);
        $this->db->order_by('rank', 'asc');
		$query = $this->db->get('albums');

		$albums = array();

		foreach ($query->result() as $row)
		{
			$albums[$row->id] = $this->count_images($row->id);
		}

		return $albums;

	}

	/**
	* Get cover image for album if set.
	* Otherwise grab the first image, if there is one
	* and, if not, default to placeholder
	*
	* @access public
	* @param int
	* @param string
	* @return array
	*/
	function album_cover($album, $size='thumb')
	{

        $this->db->select('image, image_type');
        $this->db->where('highlight =', 1);
        $this->db->where('album =', $album);
        $this->db->order_by('rank', 'asc');
		$query = $this->db->get('images');

		if(!$query->num_rows())
		{
			if($this->count_images($album))
			{
				$p = $this->album_first_image($album);
			}
			else
			{
				return base_url().'assets/img/no_image.png';
			}
		}
		else
		{
			$p = $query->row();
		}

		return base_url().'/'.$p->image.'_'.$size.$p->image_type;


	}


	/**
	* Get cover image for album if set.
	* Otherwise grab the first image, if there is one
	* and lastly default to placeholder
	*
	* @access public
	* @param int
	* @return mixed
	*/
	function album_first_image($album)
	{

        $this->db->select('image, image_type');
        $this->db->where('album =', $album);
        $this->db->order_by('rank', 'asc');
        $this->db->limit(1);
		$query = $this->db->get('images');

		if(!$query->num_rows())
		{
			return base_url().'assets/img/no_image.png';
		}

		$p = $query->row();

		return $p;

	}


	/**
	* Count images in album.
	*
	* @access public
	* @param int
	* @return int
	*/
	function count_images($album)
	{

        $this->db->select('id');
        $this->db->where('album =', $album);
		$query = $this->db->get('images');

		return $query->num_rows();

	}


	/**
	* Get album title plus id, text and private
	*
	* @access public
	* @param int
	* @return array
	*/
    function get_album_title($album)
    {

        $this->db->select('id, name, url, full_txt, private');
        $this->db->where('url =', $album);
		$query = $this->db->get('albums');

		if(!$query->num_rows())
			return FALSE;

		$row = $query->row_array();

        return $row;

    }


	/**
	* Get album title plus id, text and private
	*
	* @access public
	* @param int
	* @return array
	*/
	function get_images($album)
	{

        $this->db->where('album =', $album);
        $this->db->order_by('rank', 'asc');
		$query = $this->db->get('images');

		return $query;

	}



	/**
	* Get id of album from URL slug
	*
	* @access public
	* @param string
	* @return int
	*/
	function get_album_id($album)
	{

        $this->db->select('id, name, url');
        $this->db->where('url =', $album);
		$query = $this->db->get('albums');

		if(!$query->num_rows())
		{
			return FALSE;
		}

		$name = $query->row();

		return $name->id;

	}


	/**
	* Get image and all it's bits from the db
	*
	* @access public
	* @param int
	* @return object
	*/
	function get_image($id)
	{

        $this->db->where('id = ', $id);
        $query = $this->db->get('images');

		$row = $query->row();

		return $row;

	}



	/**
	* Get next image and all it's bits from the db
	*
	* @access public
	* @param int
	* @return object
	*/
	function get_image_next($id)
	{

        $this->db->where('id = ', $id);
        $query = $this->db->get('images');

		$row = $query->row();

		return $row;

	}



	/**
	* Get prev image and all it's bits from the db
	*
	* @access public
	* @param int
	* @return object
	*/
	function get_image_prev($id)
	{

        $this->db->where('id = ', $id);
        $query = $this->db->get('images');

		$row = $query->row();

		return $row;

	}

}


/* End of file mdl_albums.php */
