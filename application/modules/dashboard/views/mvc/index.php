	<h1>MVC Generator</h1>

	<?php include_once('./application/modules/dashboard/views/admin/menu_admin_view.php');?>

	<?php echo form_open('dashboard/mvc/create_mvc');?>
	<label>Table Name</label>
	<input type="text" placeholder="Put in the table name" id="table-name" name="table">
	<input type="submit" class="btn" value="Add">
	<?php echo form_close();?>