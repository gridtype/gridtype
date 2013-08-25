<head>
<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css/ratings.css" />
</head>
<br />
<h3>Add a Record</h3><br />
<table>
<?php echo form_open('ratings/add_validate'); ?>
<tr><td align='right'>Criteria1:</td><td><?php $data = array('id' => 'criteria1', 'name' => 'criteria1'); echo form_input($data, set_value('criteria1')); ?></td></tr>
<tr><td align='right'>Criteria2:</td><td><?php $data = array('id' => 'criteria2', 'name' => 'criteria2'); echo form_input($data, set_value('criteria2')); ?></td></tr>
<tr><td align='right'>Criteria3:</td><td><?php $data = array('id' => 'criteria3', 'name' => 'criteria3'); echo form_input($data, set_value('criteria3')); ?></td></tr>
<tr><td align='right'>Criteria4:</td><td><?php $data = array('id' => 'criteria4', 'name' => 'criteria4'); echo form_input($data, set_value('criteria4')); ?></td></tr>
<tr><td align='right'>Piece id:</td><td><?php $data = array('id' => 'piece_id', 'name' => 'piece_id'); echo form_input($data, set_value('piece_id')); ?></td></tr>
<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Add'); ?></td></tr>
<?php echo form_close(); ?>
</table>
<?php echo validation_errors('<p class="error">'); ?>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/ratings.js"></script>
