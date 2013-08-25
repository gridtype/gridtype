<!-- code complete -->
<h1><span class="title-first-part">Dashboard ></span> My Projects</h1>
		<?php if (!empty($query)) : ?>

    	<div class="row-fluid">
			<ul>
			<?php foreach ($query as $album): ?>
					<li class="album_row span2">
					<div class="thumbnail">
					<?php echo anchor('dashboard/images/album/'.$album->id, '<img src="'.$album->cover_image.'">', array('title' => 'Click to view')); ?>
						<div class="caption">
							<h3><?php echo  $album->name?> <small class="badge badge-info"><?php echo $album->image_count;?></small></h3>
							<?php //echo $private; ?>
							<div class="btn-toolbar">
								<div class="btn-group">
									<?php echo anchor('dashboard/images/album/'.$album->id,'<i class="icon-eye-open icon-white "></i>' , array('class' => 'view btn btn-mini btn-info','title' => 'Click to view')); ?>
									<?php echo anchor('dashboard/albums/edit/'.$album->id,  '<i class="icon-edit icon-white"></i>', array('class' => 'edit btn btn-mini btn-success','title' => 'Click to edit', 'data-edit-id' => $album->id)); ?>
									<?php echo anchor('dashboard/albums/delete/'.$album->id, '<i class="icon-trash icon-white "></i>', array('class' => 'delete_ajax btn btn-mini btn-danger', 'title' => 'Click to delete')); ?>
								</div>
							</div>
						</div>
					</div>
				</li>
				<?php endforeach; ?>
				</ul>
    	</div>
    	<!-- Edit Album Modal -->
		<div id="editAlbumModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editAlbumLabel" aria-hidden="true">
		<?php
		$formAttr = array('id' => 'editAlbumForm');
		echo form_open('dashboard/albums/submit', $formAttr); ?>

		  <div class="modal-header">
		    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
		    <h3 id="editAlbumLabel">Edit Album > <span id="modal-album-name"></span></h3>
		  </div>
		  <div class="modal-body">
			<input type="hidden" name="id" value="" />
			<input type="hidden" name="owner" value="" />

			<p>
				<strong>Album Title</strong><br />
				<input type="text" class="input-block-level" name="name" value="" />
			</p>

			<p>
				<strong>Keep this album private?</strong></br>
				<input type="checkbox" name="private" />
			</p>

			<p>
				<strong>Album Description:</strong><br />
				<textarea class="input-block-level" name="full_txt" rows="10" cols="25"></textarea>
			</p>
		  </div>
		  <div class="modal-footer">
			  <button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Close</button>
			  <input type="submit" class="btn btn-success" value="Save Changes"/>
		  </div>
		  </form>
		</div>
		<?php else : ?>

			<div class="alert alert-info">
				  <h4>Welcome to GridType!</h4>
				  You don't have any projects yet! Why not start some?
				  <p><br/>
				   <button class="btn btn-success" href="#addAlbumModal" data-toggle="modal"> New Project <i class="icon-plus icon-white"></i></button>
			</div>
    	<?php endif; ?>