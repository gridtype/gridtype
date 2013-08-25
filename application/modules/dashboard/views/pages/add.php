<h3>Add a Page</h3><br />
<table>
<?php echo form_open('dashboard/pages/add_validate'); ?>
<tr><td align='right'>Title:</td><td><?php $data = array('id' => 'title', 'name' => 'title'); echo form_input($data, set_value('title')); ?></td></tr>
<tr><td align='right'>Content:</td><td><?php $data = array('id' => 'content', 'name' => 'content'); echo form_textarea($data, set_value('content')); ?></td></tr>
<tr><td align='right'>Status:</td><td>
	<?php $status_options = array(
                  '0'  => 'Draft',
                  '1'   => 'Published'
                );
	echo form_dropdown('status', $status_options, set_value('status')); ?>
</td></tr>
<tr><td align='right'>Menu:</td><td><?php $data = array('id' => 'menu', 'name' => 'menu'); echo form_input($data, set_value('menu')); ?></td></tr>
<tr><td align='right'>Menu order:</td><td><?php $data = array('id' => 'menu_order', 'name' => 'menu_order'); echo form_input($data, set_value('menu_order')); ?></td></tr>
<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Add'); ?></td></tr>
<?php echo form_close(); ?>
</table>
<?php echo validation_errors('<p class="error">'); ?>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/pages.js"></script>
