<div class="row-fluid">
	<ul class="nav nav-tabs">
	  <li id="admin-dashboard"><a href="<?php echo base_url() ?>dashboard/admin/">Admin Dashboard</a></li>
	  <li id="admin-projects"><a href="<?php echo base_url() ?>dashboard/albums/admin">Projects</a></li>
	  <li id="admin-comments"><a href="<?php echo base_url() ?>dashboard/comments">Comments</a></li>
	  <li id="admin-users"><a href="<?php echo base_url() ?>dashboard/users">Users</a></li>
	  <li id="admin-mvc"><a href="<?php echo base_url() ?>dashboard/mvc/">MVC Generator</a></li>
	  <li id="admin-ratings"><a href="<?php echo base_url() ?>dashboard/admin/criterion">Rating Criterion</a></li>
	  <li id="admin-options"><a href="<?php echo base_url() ?>dashboard/admin/options">Global Options</a></li>
	</ul>
</div>
<!-- This is super sloppy JS, but gets the point across. Need to clean this up -->
<?php if (isset($tab) || !empty($tab)) : ?>
<script type="text/javascript">
	$(document).ready(function(){
		$('li#<?php echo $tab;?>').addClass('active');
	});
</script>
<?php endif?>
