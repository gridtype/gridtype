<head>
<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css/pages.css" />
</head>
<br />
<h3>Edit a Record</h3><br />
<table>
<?php echo form_open('pages/edit_validate/'.$row->id); ?>
<tr><td align='right'>Page title:</td><td><?php $data = array('id' => 'page_title', 'name' => 'page_title', 'value' => $row->page_title); echo form_textarea($data, set_value('page_title')); ?></td></tr>
<tr><td align='right'>Page content:</td><td><?php $data = array('id' => 'page_content', 'name' => 'page_content', 'value' => $row->page_content); echo form_input($data, set_value('page_content')); ?></td></tr>
<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Update'); ?></td></tr>
<?php echo form_close(); ?>
</table>
<?php echo validation_errors('<p class="error">'); ?>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/pages.js"></script>
