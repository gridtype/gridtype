<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css/comments.css" />
</head>
<br />
<h3>Add a Record</h3><br />
<table>
<?php echo form_open('comments/add_validate'); ?>
<tr><td align='right'>Image id:</td><td><?php $data = array('id' => 'image_id', 'name' => 'image_id'); echo form_input($data, set_value('image_id')); ?></td></tr>
<tr><td align='right'>User id:</td><td><?php $data = array('id' => 'user_id', 'name' => 'user_id'); echo form_input($data, set_value('user_id')); ?></td></tr>
<tr><td align='right'>Comment:</td><td><?php $data = array('id' => 'comment', 'name' => 'comment'); echo form_input($data, set_value('comment')); ?></td></tr>
<tr><td align='right'>Role:</td><td><?php $data = array('id' => 'role', 'name' => 'role'); echo form_input($data, set_value('role')); ?></td></tr>
<tr><td align='right'>Flagged:</td><td><?php $data = array('id' => 'flagged', 'name' => 'flagged'); echo form_input($data, set_value('flagged')); ?></td></tr>
<tr><td align='right'>Timestamp:</td><td><?php $data = array('id' => 'timestamp', 'name' => 'timestamp'); echo form_input($data, set_value('timestamp')); ?></td></tr>
<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Add'); ?></td></tr>
<?php echo form_close(); ?>
</table>
<?php echo validation_errors('<p class="error">'); ?>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/comments.js"></script>
