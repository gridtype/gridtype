<?php foreach ($query->result() as $row1): ?> 
	<?php $albname = $row1->name; ?>
<?php endforeach; ?>

<h1><span class="title-first-part">Dashboard > My Projects > </span><?php echo $albname; ?>
</h1>
<div class="row-fluid">
	
		<?
			if(!$query->result()) { ?>
				<div class="alert alert-info">
				  <h4>Welcome to GridType!</h4>
				  You don't have any pieces uploaded yet! Why not ADD some?
				  <p><br/>
				   <button class="btn btn-success" href="#uploadModal" data-toggle="modal"> Upload <i class="icon-upload icon-white"></i></button>
				</div>
			<?php } else { ?>

	<ul class="thumbnails" data-per-slide="6">

			<?php
			foreach ($query->result() as $row):

				$class = ($row->highlight) ? 'highlight image_block' : 'image_block';
                $img = '<img src="'.base_url().$row->image.'_mid'.$row->image_type.'"  alt="'.$row->name.'" />';

		?>
			<li id="images-<?php echo $row->id?>" class="span2 thumbnail-item">

				<div class="thumbnail">
				<?php if($row->highlight): ?>
					<span>Cover image</span>
				<?php endif; ?>
                    <?php echo anchor('dashboard/images/view/album-'.$row->album.'/'.$row->id, $img); ?>

                    <div class="caption">
                 	  <h3> <?php echo $row->name; ?>		</h3>

<div class="btn-toolbar image-toolbar">
			    	<div class="btn-group">

                    <?php echo anchor('dashboard/images/view/album-'.$row->album.'/'.$row->id,'<i class="icon-eye-open icon-white "></i>' , array('class' => 'view btn btn-mini btn-info','title' => 'Click to view')); ?>
                    <?php echo anchor('dashboard/images/edit/album-'.$row->album.'/'.$row->id,  '<i class="icon-edit icon-white"></i>', array('class' => 'edit btn btn-mini btn-success','title' => 'Click to edit', 'data-edit-id' => $row->id)); ?>
                    <?php echo anchor('dashboard/images/delete/'.$row->id, '<i class="icon-trash icon-white "></i>', array('class' => 'delete_ajax btn btn-mini btn-danger', 'title' => 'Click to delete')); ?>


             			    	</div>
                    </div>
				</div>
			</li>
		<?php endforeach; } ?>
</ul>
</div>