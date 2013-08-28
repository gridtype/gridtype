<?php echo form_open_multipart('dashboard/albums/add_album'); ?>

	<div class="hidden">
		<input type="hidden" name="id" value="" />
	
	</div>
	<div class="hidden">
		<input type="hidden" name="owner" value="<?php echo $user_id; ?>" />
	
	</div>
	<div>
		<label>Name:</label>
		<input type="text" name="name" value="" />
	</div>


	<div>
		<label>Private?</label>asdfs
		<input type="checkbox" name="private" />
	</div>

	<div>
		<label>Description:</label>
		<textarea name="full_txt" rows="10" cols="25"></textarea>
	</div>



	<div class="submit">
		<input type="submit" value="Create Album" />
	</div>

</form>
