<div class="row-fluid">
	<ul class="nav nav-tabs">
	  <li id="admin-dashboard"><a href="<?php echo base_url() ?>dashboard/admin/">Admin Dashboard</a></li>
	  <li id="admin-projects"><a href="<?php echo base_url() ?>dashboard/albums/admin">Projects</a></li>
	  <li id="admin-comments"><a href="<?php echo base_url() ?>dashboard/comments">Comments</a></li>
	  <li id="admin-users"><a href="<?php echo base_url() ?>dashboard/users">Users</a></li>
<<<<<<< HEAD
<<<<<<< HEAD
	  <!-- <li><a href="<?php echo base_url() ?>dashboard/mvc/">MVC Generator</a></li> -->
=======
	  <li id="admin-mvc"><a href="<?php echo base_url() ?>dashboard/mvc/">MVC Generator</a></li>
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
	  <li id="admin-mvc"><a href="<?php echo base_url() ?>dashboard/mvc/">MVC Generator</a></li>
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
	  <li id="admin-ratings"><a href="<?php echo base_url() ?>dashboard/admin/criterion">Rating Criterion</a></li>
	  <li id="admin-options"><a href="<?php echo base_url() ?>dashboard/admin/options">Global Options</a></li>
	</ul>
</div>
<!-- This is super sloppy JS, but gets the point across. Need to clean this up -->
<?php if (isset($tab) || !empty($tab)) : ?>
<script type="text/javascript">
<<<<<<< HEAD
<<<<<<< HEAD
	$('li#<?php echo $tab;?>').addClass('active');
</script>	
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
	$(document).ready(function(){
		$('li#<?php echo $tab;?>').addClass('active');
	});
</script>
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
<?php endif?>
