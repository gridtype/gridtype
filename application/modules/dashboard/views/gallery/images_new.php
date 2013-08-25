
<p><?php echo anchor('dashboard/images/show/'.$album, 'Back', array('class' => 'back')); ?></p>

<?php echo form_open_multipart('dashboard/images/submit'); ?>

	<div class="hidden">
		<input type="hidden" name="album" value="<?php echo $album; ?>" />
		<input type="hidden" name="owner" value="<?php echo $user_id; ?>" />
	</div>
	<div>
		<label>Title</label>
		<input type="text" name="name" value="" />
	</div>


	<div>
		<label>Image</label>
 		<input name="image" type="file" />


	</div>

	<div class="submit">
		<input type="submit" value="Save image" />
	</div>

</form>
