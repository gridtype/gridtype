<h3>Edit a Record</h3><br />
<table>
<tr><td align='right'>Username:</td><td><?php $data = array('id' => 'username', 'name' => 'username', 'value' => $row->username); echo form_input($data, set_value('username')); ?></td></tr>
<tr><td align='right'>Role:</td><td><?php $data = array('id' => 'role', 'name' => 'role', 'value' => $row->role); echo form_input($data, set_value('role')); ?></td></tr>
<tr><td align='right'>Email:</td><td><?php $data = array('id' => 'email', 'name' => 'email', 'value' => $row->email); echo form_input($data, set_value('email')); ?></td></tr>
<tr><td align='right'>Password:</td><td><?php $data = array('id' => 'password', 'name' => 'password', 'value' => $row->password); echo form_input($data, set_value('password')); ?></td></tr>
<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Update'); ?></td></tr>
</table>
<?php echo validation_errors('<p class="error">'); ?>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/users.js"></script>
