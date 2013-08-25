<h3>Add a User</h3><br />
<table>
<?php echo form_open('dashboard/users/add_validate'); ?>
<tr><td align='right'>Username:</td><td><?php $data = array('id' => 'username', 'name' => 'username'); echo form_input($data, set_value('username')); ?></td></tr>
<tr><td align='right'>Role:</td><td><?php $options = array('user'=>'Student','faculty'=>'Teacher','admin'=>'Admin'); $specifics = "id='role'";echo form_dropdown('role', $options, '' ,$specifics); ?></td></tr>
<tr><td align='right'>Email:</td><td><?php $data = array('id' => 'email', 'name' => 'email'); echo form_input($data, set_value('email')); ?></td></tr>
<tr><td align='right'>Password:</td><td><?php $data = array('id' => 'password', 'name' => 'password'); echo form_input($data, set_value('password')); ?></td></tr>
<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Add'); ?></td></tr>
<?php echo form_close(); ?>
</table>
<?php echo validation_errors('<p class="error">'); ?>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/users.js"></script>