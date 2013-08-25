<head>
<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css/pages.css" />
</head>
<br />
<h3>Add a Record</h3><br />
<table>
<?php echo form_open('pages/add_validate'); ?>
<tr><td align='right'>Page title:</td><td><?php $data = array('id' => 'page_title', 'name' => 'page_title'); echo form_textarea($data, set_value('page_title')); ?></td></tr>
<tr><td align='right'>Page content:</td><td><?php $data = array('id' => 'page_content', 'name' => 'page_content'); echo form_input($data, set_value('page_content')); ?></td></tr>
<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Add'); ?></td></tr>
<?php echo form_close(); ?>
</table>
<?php echo validation_errors('<p class="error">'); ?>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/pages.js"></script>
