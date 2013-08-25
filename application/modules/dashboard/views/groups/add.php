<h3>Add a Group</h3>

<?php echo form_open('groups/add_validate'); ?>
<label>Name</label>
<?php $data = array('id' => 'name', 'name' => 'name'); echo form_input($data, set_value('name')); ?>
<label>Description</label>
<?php $data = array('id' => 'description', 'name' => 'description'); echo form_input($data, set_value('description')); ?>
<label>Private</label>
<?php $data = array('id' => 'private', 'name' => 'private'); echo form_input($data, set_value('private')); ?>
<label>Creator</label>
<?php $data = array('id' => 'creator', 'name' => 'creator'); echo form_input($data, set_value('creator')); ?>
<br/>
 <?php echo form_submit(array('class' => 'btn', 'name' => 'submit', 'value' => 'Add')); ?>
<?php echo form_close(); ?>
<?php echo validation_errors('<p class="error">'); ?>