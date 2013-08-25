    <div id="main" class="span7">
    <img src="<?php echo base_url().$image->image.''.$image->image_type.'?x='.time(); ?>" alt="<?php echo $image->name; ?>" class="single-image img-polaroid"></div>

    <div id="right-rail" class="span5">
        <!--        <div>Count <span class="badge"><?php echo $count;?></span></div> -->
		<ul class="nav nav-tabs" id="tabs">
		  <li class="active"><a href="#info">Info</a></li>
		  <li><a href="#rate">Rating <span class="badge badge-info"><?php echo $ratings_count;?></span></a></li>
		  <li><a href="#comments">Comments <?php if($comments['comments_count'] && $comments['comments_count'] > 0){ echo '<span class="badge badge-info">'.$comments['comments_count'].'</span>';}?></a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane active" id="info">
				<h3><?php echo $image->name;?></h3>
                <p><strong>Description</strong><br>
                <?php echo $image->description;?></p><strong>Objective</strong><br>
                <?php echo $image->objective;?>
                <p>&nbsp;</p><?php echo anchor('dashboard/images/edit/album-'.$image->album.'/'.$image->id,  'Edit <i class="edit icon-edit icon-white"></i>', array('class' => 'btn btn-mini btn-success')); ?> <a href="#deleteModal" class="btn btn-mini btn-danger" title="Delete" data-toggle="modal">Delete <i class="edit icon-trash icon-white"></i></a>
			</div>
			<div class="tab-pane" id="rate">
	            <div id="rating-graph" style="padding-top:20px;height:190px;margin-left:0px; padding:0; margin-bottom:80px;">
	                <small><em>Ratings based on the <strong>median</strong> of all ratings submitted by all users</em></small><br>
	                <small>Total Ratings: <?php echo $ratings_count; ?></small>
	            </div>
			</div>
			<div class="tab-pane" id="comments">
		            <div id="comments-block" class="expanded">
						<?php if (isset($comments['comments']) && !empty($comments['comments'])){
		                                foreach ($comments['comments'] as $comment){ ?>
		            <blockquote class="<?php echo $comment->role != 'user' ? 'alert-info' : '' ?>">
		                <?php if ($comment->role != 'user') {?><?php echo $comment->comment;?>

		                <p></p>

		                <div class="byline btn btn-mini disabled">
		                    By: <strong><?php echo $comment->username;?></strong> <em>(Faculty)</em>
		                </div><?php } else { ?>

		                <p><?php echo $comment->comment;?></p>

		                <p></p>

		                <div class="byline btn btn-large btn-mini disabled">
		                    By: <?php echo $comment->username;?> <em>(Student)</em>
		                </div><?php } ?>
		            </blockquote><?php }; // end of foreach comments

		                            ?>

		          <?php } else {

		                                echo 'No Comments Yet.';

		                            }; ?><!--end of if comments ! empty -->
		        </div>
		</div>
		</div></div>
    <?php echo '<script type="text/javascript"> var median = '. $median .'</script>';?>
	<div id="deleteModal" class="modal hide fade">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	    <h3>Delete Image</h3>
	  </div>
	  <div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
	    <?php echo anchor('dashboard/images/delete/'.$query->id.'/'.$query->album,  'Delete', array('class' => 'btn btn-danger', 'title' => $query->name)); ?>
	  </div>
	</div>
