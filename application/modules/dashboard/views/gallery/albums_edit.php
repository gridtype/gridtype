
<?php echo form_open_multipart('dashboard/albums/submit'); ?>

	<div class="hidden">
		<input type="hidden" name="id" value="<?php echo $query->id; ?>" />
		<input type="hidden" name="owner" value="<?php echo $query->owner; ?>" />
	
	</div>

	<p>
		<h3 id="uploadModalLabel">Edit Album > <?php echo $query->name; ?></h3>
		<strong>Album Title</strong><br />
		<input type="text" name="name" value="<?php echo $query->name; ?>" />
	</p>

	<p>
		<strong>Keep this album private?</strong></br>
		<input type="checkbox" name="private" <?php if($query->private) echo 'checked="checked"'; ?> />
	</p>

	<p>
		<strong>Album Description:</strong><br />
		<textarea name="full_txt" rows="10" cols="25"><?php echo $query->full_txt; ?></textarea>
	</p>



	<div class="submit">
		
		<button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Close</button>
		<input type="submit" class="btn btn-success" value="Save Changes"/>
	</div>


</form>
