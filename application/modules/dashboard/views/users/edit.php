<h3>Edit a Record</h3><br />
<table>
<?php echo form_open('dashboard/users/edit_validate/'.$row->id); ?>
<tr><td align='right'>Username:</td><td><?php $data = array('id' => 'username', 'name' => 'username', 'value' => $row->username); echo form_input($data, set_value('username')); ?></td></tr>
<tr><td align='right'>Role:</td><td><?php $options = array('user'=>'User','manager'=>'Manager','admin'=>'Admin'); $specifics = "id='role'";echo form_dropdown('role', $options, $row->role ,$specifics); ?></td></tr>
<tr><td align='right'>Email:</td><td><?php $data = array('id' => 'email', 'name' => 'email', 'value' => $row->email); echo form_input($data, set_value('email')); ?></td></tr>
<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Update'); ?></td></tr>
<?php echo form_close(); ?>
</table>
<h3>Change Password</h3>
<p>Passwords can not be edited, only changed.</p>
<table>
<?php echo form_open('dashboard/users/change_password/'.$row->id); ?>
<tr><td align='right'>Password:</td><td><?php $data = array('id' => 'password', 'name' => 'password', 'type' => 'password'); echo form_input($data); ?></td></tr>
<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Update'); ?></td></tr>
<?php echo form_close(); ?>
</table>
<?php echo validation_errors('<p class="error">'); ?>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/users.js"></script>