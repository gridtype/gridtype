<?php

/**
 * MY Controller class
 *
 * Extends the base class and loads Gallery Controllers
 *
 * @package		GridType
 * @author		Jesse Marple
 * @link		http://www.zocaloconsulting.com
 */
class MY_Controller extends CI_Controller {


	function __construct()
	{

		parent::__construct();

		define('IMAGE_VIEWER', 'fancybox');

		//test if you are logged in at the base of the controller constructor
		if(! $this->hmvc_auth->get('logged_in')) redirect(site_url('welcome'));
		//load our dependencies
		$this->load->database();
		$this->load->library(array('session'));
        $this->_load_settings();
        $this->_check_login();
		if ( $this->uri->segment(1, 0) == 'admin' )
		{
			$this->output->enable_profiler($this->config->item('profiler_admin'));
		}
		else
		{
			$this->output->enable_profiler($this->config->item('profiler'));
		}
	}

	/**
	 * Loads Gallery settings from the db, set imagelib and max upload size
	 *
	 * @access	private
	 * @return	void
	 */
    function _load_settings()
    {

        if (!$this->db->table_exists('settings'))
        {
            $this->output->enable_profiler($this->config->item('profiler_site'));
			define("LIB", "");
			define("LIB_PATH", "");
            return;
        }

		$this->db->where('id', 1);
		$this->db->limit(1);
		$query = $this->db->get('settings');

		if($query->num_rows())
		{
			$row = $query->row();

			define("GALLERY_NAME", $row->name);
			define("GALLERY_SUMMARY", $row->summary);
			define("GALLERY_THEME", $row->default_theme);
			define("PER_PAGE", $row->per_page);
			define("GALLERY_W", $row->w);
			define("GALLERY_H", $row->h);
			define("GALLERY_MID_W", $row->mid_w);
			define("GALLERY_MID_H", $row->mid_h);
			define("GALLERY_THUMB_W", $row->thumb_w);
			define("GALLERY_THUMB_H", $row->thumb_h);
			define("LIB", $row->lib);

			if(LIB == 'ImageMagick' || LIB == 'netbm')
			{
				define("LIB_PATH", $row->lib_path);
			}
			else
			{
				define("LIB_PATH", FALSE);
			}

			$max_upload = min(ini_get('post_max_size'), ini_get('upload_max_filesize'));
			$max_upload = str_replace('M', '', $max_upload);
			$max_upload = $max_upload * 1024;

			define("GALLERY_MAX_UPLOAD", $max_upload);
        }

    }


	/**
	 * Loads Gallery settings from the db, set imagelib and max upload size
	 *
	 * @access	private
	 * @return	void
	 */
    function _check_login()
    {


/*
		// flash uploadify; not logged in auth via db key
		if(($this->uri->segment(1) == 'admin') && ($this->uri->segment(3) == 'upload_batch'))
		{
			return;
		}
		// not admin area, no need
        elseif($this->uri->segment(1) != 'admin')
        {
            return;
        }


		// admin area but no admin session; send back to login
        if($this->session->userdata('username') === FALSE && $this->uri->segment(1) == 'admin')
        {
            redirect('/login', 'refresh');
            exit;
         }
*/

		 if($this->hmvc_auth->is_admin() == TRUE)
		 {
			 $this->output->enable_profiler(TRUE);
		 }


    }


	/**
	 * Checks if request is AJAX
	 *
	 * @access	private
	 * @return	bool
	 */
    function _is_ajax()
    {
        return (isset($_SERVER['HTTP_X_REQUESTED_WITH']) && ($_SERVER['HTTP_X_REQUESTED_WITH'] == 'XMLHttpRequest'));
    }

	/**
	 * renders all layouts and templates that extend this controller
	 * @uses	$this->_render->('some_template',[$data])
	 *
	 * @access	private
	 * @return	void
	 */

	function _render($view,$data=NULL){
		if (!isset($data['menu']) || $data == NULL){
			$data['menu'] = '';
		};
		$this->layout->setLayout('/layout_view');
		$data['logged_in'] = TRUE;
		$data['albums'] = $this->hmvc_auth->get_user_albums();
		$data['userid'] = $this->hmvc_auth->get('id');
		$data['username'] = $this->hmvc_auth->get('username');
		$data['role'] = $this->hmvc_auth->get('role');
		$data['logged_in'] = $this->hmvc_auth->logged_in();
		$data['header_view'] = $this->load->view('header_view',$data,TRUE);
		$data['footer_view'] = $this->load->view('footer_view',$data,TRUE);

		$this->output->enable_profiler(TRUE);

		$this->layout->view($view,$data);

	}


}

/* End of file MY_Controllers.php */