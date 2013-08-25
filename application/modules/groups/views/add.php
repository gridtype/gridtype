<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css/groups.css" />
</head>
<br />
<h3>Add a Record</h3><br />
<table>
<?php echo form_open('groups/add_validate'); ?>
<tr><td align='right'>Name:</td><td><?php $data = array('id' => 'name', 'name' => 'name'); echo form_input($data, set_value('name')); ?></td></tr>
<tr><td align='right'>Url:</td><td><?php $data = array('id' => 'url', 'name' => 'url'); echo form_input($data, set_value('url')); ?></td></tr>
<tr><td align='right'>Description:</td><td><?php $data = array('id' => 'description', 'name' => 'description'); echo form_input($data, set_value('description')); ?></td></tr>
<tr><td align='right'>Private:</td><td><?php $data = array('id' => 'private', 'name' => 'private'); echo form_input($data, set_value('private')); ?></td></tr>
<tr><td align='right'>Timestamp:</td><td><?php $data = array('id' => 'timestamp', 'name' => 'timestamp'); echo form_input($data, set_value('timestamp')); ?></td></tr>
<tr><td align='right'>Creator:</td><td><?php $data = array('id' => 'creator', 'name' => 'creator'); echo form_input($data, set_value('creator')); ?></td></tr>
<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Add'); ?></td></tr>
<?php echo form_close(); ?>
</table>
<?php echo validation_errors('<p class="error">'); ?>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/groups.js"></script>
