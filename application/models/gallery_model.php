<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
* Gallery Model
* These methods are to be accessed by both front and back end controllers,
* hence the read only nature
*
* @package		GritType
* @author		Jesse Marple
* @link			http://www.zocaloconsulting.com
*/


class gallery_model extends MY_Model {

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
	 * Counts all images inside of a particular album.
	 *
	 * @access public
	 * @param int album_id
	 * @return int
	 */
	function album_count_images($album_id)
	{

		$this->db->where('album', $album_id);
		$this->db->from('images');

		return $this->db->count_all_results();

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
	* Get album title only
	*
	* @access public
	* @param int
	* @return array
	*/
    function get_album_title($album)
    {

        $this->db->select('name');
        $this->db->where('id =', $album);
		$query = $this->db->get('albums');

		if(!$query->num_rows()){
			return FALSE;
		}

		$row = $query->first_row()->name;
        return $row;

    }

	/**
	* Get album's owner's name
	*
	* @access public
	* @param int
	* @return array
	*/
    function get_album_owner_name($album)
    {

        $this->db->select('user.username');
        $this->db->where('url =', $album);
		$query = $this->db->get('albums');

		if(!$query->num_rows())
			return FALSE;

		$row = $query->row_array();
        return $row;

    }

	/**
	* Get album info - title plus id, text and private
	*
	* @access public
	* @param int
	* @return array
	*/
    function get_album_info($album)
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
	* Get album images
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
		//print_r($query);
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
	* Get all of an image's info and the owner
	*
	* @access public
	* @param int
	* @return object
	*/
	function get_image_info($id)
	{
	    $this->db->select("users.username,images.*");
		$this->db->join('users','images.owner = users.id');
		$this->db->where('images.id',$id);
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

	/**
	* Get all the comments for an image from the db
	*
	* @access public
	* @param int
	* @return array
	*/
	function get_comments($id,$from = 0, $to = 10, $filter = 'none')
	{
		$this->db->select('comments.*,users.username,users.role,users.id');
		$this->db->where('image_id',$id);
		$this->db->where('flagged',0);
		$this->db->join('users', 'users.id = comments.user_id');
		$this->db->order_by("timestamp", "desc");
		$query = $this->db->get('comments',$to,$from);

		$result = $query->result();
		return $result;

	}

	/**
	* Get only the comment count for an image from the db
	*
	* @access public
	* @param int
	* @return array
	*/
	function get_comments_count($id, $filter = 'none')
	{
		$this->db->select('comments.id');
		$this->db->where('image_id',$id);
		$this->db->where('flagged',0);
		$this->db->order_by("timestamp", "desc");
		$this->db->from('comments');
		$result = $this->db->count_all_results();
		return $result;

	}

	/**
	 * get_comments_and_count function.
	 *
	 * @access public
	 * @param int piece id
	 * @return array composed of int count and array of comments
	 */
	function get_comments_and_count($id){
		$this->db->select('comments.*,users.username,users.role,users.id');
		$this->db->where('image_id',$id);
		$this->db->where('flagged',0);
		$this->db->join('users', 'users.id = comments.user_id');
		$this->db->order_by("timestamp", "desc");
		$query = $this->db->get('comments');

		$result['comments'] = $query->result();
		$result['comments_count'] = $query->num_rows();
		return $result;
	}
	/**
	* Returns an array of array containing all of the ratings for a particular piece
	*
	* @access private
	* @param int
	* @return array
	*/
	function _get_ratings($id)
	{
		$ratings = $this->db->get_where('ratings',array('piece_id' => $id));
		$ratings = $ratings->result();
		return $ratings;
	}



	/**
	* Simple return of number of ratings
	*
	* @access private
	* @param int
	* @return int
	*/
	function _count_ratings($id)
	{
		$ratings = $this->db->get_where('ratings',array('piece_id' => $id));
		$ratings = $ratings->result();
		$count = count($ratings);
		return $count;
	}

	/**
	* Get count and return of number of ratings
	*
	* @access private
	* @param int
	* @return object
	*/
	function _get_ratings_and_count($id)
	{
		$ratings = $this->db->get_where('ratings',array('piece_id' => $id));
		$ratings = $ratings->result();
		$data['count'] = count($ratings);
		$data['ratings'] = $ratings;
		return $data;
	}

	/**
	* Returns an median of all the rubric ratings for a particular piece
	*
	* @access private
	* @param int
	* @return array
	*/
	function _get_median_rating($ratings){

		//lets get the number of ratings by counting the number or results

		if (empty($ratings)){
			$median = null;
		} else {
			$m1 = array();$m2 = array();$m3 = array();$m4 = array();$m5 = array();
			// print_r($ratings);
			foreach ($ratings as $rating){
				array_push($m1, $rating->criteria1);
				array_push($m2, $rating->criteria2);
				array_push($m3, $rating->criteria3);
				array_push($m4, $rating->criteria4);
				array_push($m5, $rating->criteria5);
			}
			$m1 = $this->_calculate_median($m1);
			$m2 = $this->_calculate_median($m2);
			$m3 = $this->_calculate_median($m3);
			$m4 = $this->_calculate_median($m4);
			$m5 = $this->_calculate_median($m5);
			$median = array($m1,$m2,$m3,$m4,$m5);
		}
		return $median;
	}

	// worker functions for calculatings ratings from above
	function _calculate_median($arr)
	{
		sort($arr);
		$count = count($arr); //total numbers in array
		$middleval = floor(($count-1)/2); // find the middle value, or the lowest middle value
		if($count % 2) { // odd number, middle is the median
			$median = $arr[$middleval];
		} else { // even number, calculate avg of 2 medians
			$low = $arr[$middleval];
			$high = $arr[$middleval+1];
			$median = (($low+$high)/2);
		}
		return $median;
	}

	function _calculate_average($arr)
	{
		$count = count($arr); //total numbers in array
		foreach ($arr as $value) {
			$total = $total + $value; // total value of array numbers
		}
		$average = ($total/$count); // get average value
		return $average;
	}

	function get_complete_image_info($id)
	{
		$data['ratings_and_count'] = $this->_get_ratings_and_count($id);
		$data['median'] = json_encode($this->_get_median_rating($id));
		$data['comments'] = $this->get_comments($id);
		$data['comments_count'] = $this->get_comments_count($id);
		return $data;
	}


	/**
	* Needs to get album, get image, get ratings, get rating count and image comments
	*
	* @access public
	* @param ints
	* @return array
	*/
	function uber_image_info($image_id)
	{
		$ratings_and_count = $this->_get_ratings_and_count($image_id);
		$comments_and_count =
		$data['ratings_count'] = $ratings_and_count['count'];
		$data['median'] = json_encode($this->_get_median_rating($ratings_and_count['ratings']));
		$data['image'] = $this->get_image_info($image_id);
		$data['album'] = $this->get_album_info($data['image']->album);
		$data['comments'] = $this->get_comments_and_count($image_id);
		return $data;
	}

}


/* End of file gallery_model.php */
