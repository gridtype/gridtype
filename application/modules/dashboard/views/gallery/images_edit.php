	<?php   if($query->image): ?>
<div class="span6">
	    <img src="<?php echo base_url().$query->image.'_mid'.$query->image_type.'?x='.time(); ?>"  alt="<?php echo $query->name; ?>" width="<?php echo $image_size[0]?>" height="<?php echo $image_size[1]?>" class="img-polaroid"/>
</div>


	<?php endif; ?>

<div class="span6">

<?php echo form_open_multipart('dashboard/images/submit'); ?>

		<input type="hidden" name="id" value="<?php echo $query->id; ?>" />
		<input type="hidden" name="album" value="<?php echo $album; ?>" />
		<input type="hidden" name="owner" value="<?php echo $user_id; ?>" />
		<strong>Title of this work:</strong>
		<input type="text" name="name" class="input-xxlarge" value="<?php echo $query->name; ?>" /><p>

		<label>Replace this image?
 		<input name="image" type="file" />
		<?php
			if(!$query->image)
			{
				echo 'No image uploaded';
			}
		?>
		</label>
		<strong>Description (Size, Audience, Typefaces, Concepts etc..)</strong><br/><textarea name="description" class="input-xxlarge" rows="3"><?php echo $query->description;?></textarea></label><p>

		<p><strong>What do you want people to give you feedback on?</strong><br/><textarea name="objective" class="input-xxlarge" rows="3"><?php echo $query->objective;?></textarea></label>
		<br/>
		<p><label class="checkbox">
		<input type="checkbox" name="highlight" <?php if($query->highlight) echo 'checked="checked"'; ?> />
		Make this image the album cover?</label></p>
		<button type="submit" class="btn btn-mini btn-success">Save <i class="icon-ok-circle icon-white" style="margin-top:0;"></i></button>
		<a href="#deleteModal" class="btn btn-mini btn-danger" data-toggle="modal">Delete <i class="icon-trash icon-white"></i></a>
</form>
</div>

	<div id="deleteModal" class="modal hide fade">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	    <h3>Delete Image</h3>
	  </div>
	  <div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		<?php echo anchor($delete, 'Delete <i class="icon-trash icon-white"></i>', array('class' => 'btn btn-danger', 'title' => $query->name)); ?>
	  </div>
	</div>

