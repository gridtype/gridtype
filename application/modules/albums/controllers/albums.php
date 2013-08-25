<?php

class Albums extends MY_Controller {

	function __construct()
	{
		parent::__construct();
		if(!$this->hmvc_auth->get('logged_in')) redirect(site_url('welcome'));
		$this->load->model('mdl_albums');
	}

	public function index()
	{

		$uid = $this->session->userdata('id');
		$this->db->select('albums.name,
                         albums.id,
                         albums.full_txt,
                         users.username');
		$this->db->from('albums');
		$this->db->where('private',0);
		$this->db->where('owner !=', $uid);
		$this->db->join('users', 'users.id = albums.owner');
		$this->db->limit(12);
		$results = $this->db->get();
		$results = $results->result();

		foreach ($results as $album){
			$album->cover_image = $this->mdl_albums->album_cover($album->id);
			$album->count = $this->mdl_albums->count_images($album->id);
		}

		$data = array(
			'rows' => $results
		);
		$this->_render('albums/index',$data);
	}

	public function ajaxGetAlbums()
	{
		$limit = 0;
		$offset = 0;
		if (isset($_POST['offset'])){
			$offset =  $_POST['offset'];
		}
		if (isset($_POST['limit'])){
			$limit =  $_POST['limit'];
		}
		$uid = $this->hmvc_auth->get('id');
		$this->db->select('albums.name,
                         albums.id,
                         albums.full_txt,
                         users.username');
		$this->db->from('albums');
		$this->db->where('private',0);
		$this->db->where('owner !=', $uid);
		$this->db->join('users', 'users.id = albums.owner');
		$this->db->limit($limit,$offset);
		$query = $this->db->get();
		$results = $query->result();
		foreach ($results as $album){
			$album->cover_image = $this->mdl_albums->album_cover($album->id);
			$album->count = $this->mdl_albums->count_images($album->id);
		}
		echo json_encode($results);
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

}
