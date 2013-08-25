<!DOCTYPE html>
<html>
  <head>
<!--start-meta-->
	<?php echo (isset($meta_view)) ? $meta_view : ''; ?>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--end-meta-->
    <!-- Le basic styles -->
    <style>
      body {
        padding-top: 60px;
      }
    </style>
    <link rel="stylesheet" href="<?php echo site_url();?>assets/css/bootstrap.css" type="text/css" media="screen" charset="utf-8">
    <link rel="stylesheet" href="<?php echo site_url();?>assets/css/bootstrap-responsive.css" type="text/css" media="screen" charset="utf-8">
    <link rel="stylesheet" href="<?php echo site_url();?>assets/css/webfonts.css" type="text/css" media="screen" charset="utf-8">
    <link rel="stylesheet" href="<?php echo site_url();?>assets/css/sitewide.css" type="text/css" media="screen" charset="utf-8">
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="<?php echo base_url()?>assets/ico/favicon.ico">

     <script src="<?php echo base_url()?>assets/js/lib/jquery.js"></script>
<<<<<<< HEAD
<<<<<<< HEAD
     
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
  </head>

  <body class="<?php if($this->uri->segment(1) != FALSE){ echo 'section-'.$this->uri->segment(1).' ';} if($this->uri->segment(2) != FALSE) { echo 'type-'.$this->uri->segment(2);} if ($this->uri->segment(3) != FALSE) {echo '-'.$this->uri->segment(3);} ?> ">

<!--start_nav-->
	<?php echo (isset($header_view) && $this->hmvc_auth->get('logged_in')) ? $header_view : ''; ?>
<!--end_nav-->

    <div class="container-fluid container">
	    <!--special_nav-->
	    <div class="row-fluid">
	    	<?php echo (isset($top_menu_view)) ? $top_menu_view : ''; ?>
	    </div>
	    <!--special_nav-->
	    <div class="row-fluid">
			<?php echo (isset($sidebar_view)) ? $sidebar_view : '<div class="span12">'; ?>

			    <?php echo $this->error->error_view()?>

			    <?php echo (isset($content_for_layout)) ? $content_for_layout : ''; ?>
		    </div>
	    </div>

<!--start_footer-->
	<?php echo (isset($footer_view)) ? $footer_view : ''; ?>
<!--end_footer-->

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<?php echo base_url()?>assets/js/lib/respond.min.js"></script>
    <script src="<?php echo base_url()?>assets/js/lib/modernizr.min.js"></script>
    <script src="<?php echo base_url()?>assets/js/lib/modernizr.min.js"></script>
    <script src="<?php echo base_url()?>assets/js/define.js"></script>
    <script src="<?php echo base_url()?>assets/js/controller.js"></script>
    <script src="<?php echo base_url()?>assets/js/lib/bootstrap.js"></script>
  </body>
</html>
