<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css/groups.css" />
</head>
<br />
<h3>Edit a Record</h3><br />
<table>
<?php echo form_open('groups/edit_validate/'.$row->id); ?>
<tr><td align='right'>Name:</td><td><?php $data = array('id' => 'name', 'name' => 'name', 'value' => $row->name); echo form_input($data, set_value('name')); ?></td></tr>
<tr><td align='right'>Url:</td><td><?php $data = array('id' => 'url', 'name' => 'url', 'value' => $row->url); echo form_input($data, set_value('url')); ?></td></tr>
<tr><td align='right'>Description:</td><td><?php $data = array('id' => 'description', 'name' => 'description', 'value' => $row->description); echo form_input($data, set_value('description')); ?></td></tr>
<tr><td align='right'>Private:</td><td><?php $data = array('id' => 'private', 'name' => 'private', 'value' => $row->private); echo form_input($data, set_value('private')); ?></td></tr>
<tr><td align='right'>Timestamp:</td><td><?php $data = array('id' => 'timestamp', 'name' => 'timestamp', 'value' => $row->timestamp); echo form_input($data, set_value('timestamp')); ?></td></tr>
<tr><td align='right'>Creator:</td><td><?php $data = array('id' => 'creator', 'name' => 'creator', 'value' => $row->creator); echo form_input($data, set_value('creator')); ?></td></tr>
<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Update'); ?></td></tr>
<?php echo form_close(); ?>
</table>
<?php echo validation_errors('<p class="error">'); ?>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/groups.js"></script>
