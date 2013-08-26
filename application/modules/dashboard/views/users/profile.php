	<h1>Profile</h1>
	
	<div class="span6 well">
		<?php echo form_open('dashboard/profile/index_validate/'.$row->id); ?>
		<p>
		
		<br />
		Full Name:<br />
		<?php $data = array('id' => 'username', 'name' => 'username', 'value' => $row->username); echo form_input($data, set_value('username')); ?>
		</p>
		
		<p>
		About Me (140 Charecters)<br />
		<?php $data = array('id' => 'about', 'cols' => '20', 'rows' => '20', 'name' => 'about', 'value' => $row->about); echo form_textarea($data, set_value('about')); ?>
		</p>
		
		
		<p>
		Email:<br />
		
		<?php $data = array('id' => 'email', 'name' => 'email', 'value' => $row->email); echo form_input($data, set_value('email')); ?>
		
		</p>
		<?php $btnClass = array('class' => 'my_class'); echo form_submit('submit', 'Save Info', 'class="btn btn-success"'); ?>
		<?php echo form_close(); ?></div>

	<div class="span4 well pull-right">
		<h3>Change Password</h3>
		<small><em>Type a new password below, and press 'Update Password'</em></small>
		
		<?php echo form_open('dashboard/profile/change_password/'.$row->id); ?>
		New Password:
		
		<?php $data = array('id' => 'password', 'name' => 'password', 'type' => 'password'); echo form_input($data); ?>
		
		<?php echo form_submit('submit', 'Update Password', 'class="btn btn-info"'); ?>
		
		<?php echo form_close(); ?>
		
		<?php echo validation_errors('<p class="error">'); ?>
	
	</div>
