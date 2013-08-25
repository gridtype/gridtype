
<?php echo anchor('dashboard/albums', 'Back', array('class' => 'back')); ?>

<div class="controls">
<?php echo anchor('dashboard/images/new_image/album-'.$album_id, 'New Image', array('class' => 'control', 'id' => 'image_single')); ?>
<!-- Soon we will be able to upload multiple images at the same time. 
<?php echo anchor('dashboard/images/uploadify/'.$album_id, 'Upload multiple images', array('class' => 'control', 'id' => 'image_multi')); ?>
-->
<?php echo anchor('dashboard/albums/edit/'.$album_id, 'Edit Album Info', array('class' => 'control', 'id' => 'album_edit')); ?>
</div>

<noscript>
    <div class="warning">
        <p>You must have javascript enabled for the reorder function to work</p>
    </div>
</noscript>

<ul id="reOrder">
		<?
			foreach ($query->result() as $row): 

				$class = ($row->highlight) ? 'highlight image_block' : 'image_block';
                $img = '<img src="'.base_url().$row->image.'_thumb'.$row->image_type.'"  alt="'.$row->name.'" />';

		?>
			<li id="images-<?php echo $row->id?>" class="<?php echo $class; ?>">
				<?php if($row->highlight): ?>			
					<span>Cover image</span>			
				<?php endif; ?>

				<div class="img_wrap">
                    <?php echo anchor('dashboard/images/edit/album-'.$album_id.'/'.$row->id, $img); ?>
				</div>



				<div class="caption">
                    <?php echo anchor('dashboard/images/view/album-'.$album_id.'/'.$row->id, 
                                        'View', array('class' => 'view')); ?>
                    <?php echo anchor('dashboard/images/edit/album-'.$album_id.'/'.$row->id, 
                                        'Edit', array('class' => 'edit')); ?>
                    <?php echo anchor('dashboard/images/delete/'.$row->id.'/'.$album_id, 
                                        'Delete', 
                                        array('class' => 'delete_ajax', 'title' => $row->name)); ?>
                    <?php echo anchor('dashboard/images/highlight/'.$album_id.'/'.$row->id, 
                                        'Set as cover image', 
                                        array('class' => 'make_default')); ?>
<!-- 					<a href="#" class="close">
						[ Close ]
					</a> -->
				</div>

				<p>
                    <?php echo anchor(
                                'dashboard/images/edit/album-'.$album_id.'/'.
                                $row->id, character_limiter($row->name, 10), 
                                array('class' => 'edit')); ?>
</p>

			</li>
		<?php endforeach; ?>
</ul>


