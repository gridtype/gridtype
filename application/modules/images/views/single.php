    <div id="main" class="span7">
<<<<<<< HEAD
<<<<<<< HEAD
        <h1><?php echo $row->name;?></h1>
        <small class="muted">By:</small> 
        <a href="<?php echo base_url() . 'images/user/' . $owner_id;?>"><?php echo $owner_name;?></a>
		<a href="<?php echo base_url().$row->image.$row->image_type;?>" class="fancybox"><img src="<?php echo base_url().$row->image.$row->image_type;?>" class="img-polaroid" style="cursor:pointer"></a>

        <div class="iterations-well">
            <div class="iteration-container"><img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"></div>
        </div>
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		<a href="<?php echo base_url().$row->image.$row->image_type;?>" class="fancybox"><img src="<?php echo base_url().$row->image.$row->image_type;?>" class="img-polaroid" style="cursor:pointer"></a>

   <!--     <div class="iterations-well">
            <div class="iteration-container"><img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"> <img src="<?php echo base_url()?>/assets/img/iteration-holder.png" class="iteration-thumb"></div>
        </div> -->
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
    </div>

    <div id="right-rail" class="span5">
        <ul class="nav nav-tabs" id="tabs">
            <li class="active"><a href="#info">Info</a></li>

            <li><a href="#rate">Rate</a></li>

            <li><a href="#comments">Comments</a></li>

            <li><a href="#flag">Flag</a></li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane active" id="info">
<<<<<<< HEAD
<<<<<<< HEAD
                <?php if(isset($owner_about) && $owner_about != '') : ?>

                <p><strong>About the Artist</strong><br>
                <span class="muted"><?php echo $owner_about; ?></span></p><?php endif;?><?php
                                    if(isset($row->description) && $row->description != '' ): ?>

                <p><strong>Description</strong><br>
                <span class="muted"><?php echo $row->description; ?></span></p><?php endif;?><?php 
                                    if(isset($row->objective) && $row->objective != '') : ?>

                <p><strong>I would like feedback on</strong><br>
                <span class="muted"><?php echo $row->objective; ?></span></p><?php endif;?>
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
				<h3><?php echo $row->name;?></h3>
                <small class="muted">By:</small> 
				<a href="<?php echo base_url() . 'images/user/' . $owner_id;?>"><?php echo $owner_name;?></a>
                <?php if(isset($owner_about) && $owner_about != '') : ?>
    	            <p><strong>About the Artist</strong><br>
	                <span class="muted"><?php echo $owner_about; ?></span></p>
                <?php endif;?>
                <?php if(isset($row->description) && !empty($row->description)):?>
                	<?php var_dump($row->description);?>
                	<p><strong>Description</strong><br>
					<span class="muted"><?php echo $row->description; ?></span></p>
                <?php endif;?>
                <?php if(isset($row->objective) && !empty($row->objective)) : ?>
					<p><strong>I would like feedback on</strong><br>
	 				<span class="muted"><?php echo $row->objective; ?></span></p>
	 			<?php endif;?>
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
            </div>

            <div class="tab-pane" id="rate">
                <div id="rating-graph" class="" style="padding-top:20px;height:190px;  margin-left:0px; padding:0; margin-bottom:80px;">
                    <small><em>Ratings based on the <strong>median</strong> of all ratings submitted by all users</em></small><br>
                    <small>Total Ratings: <?php echo $total_ratings; ?></small>
                </div>
                
                <?php $attributes = array('id' => 'ajax-rating-form'); ?><?php echo form_open('images/add_rating',$attributes); ?>
				<div class="row-fluid">
                <fieldset class="span6">
                    <p><strong>First Impression:</strong><br>
                    <small>First impression is the gut feeling of the viewer.</small><br>
                    <select name="criteria1">
                        <option value="1">
                            1) Boring and Drab
                        </option>

                        <option value="2">
                            2) Typical and Tired
                        </option>

                        <option value="3">
                            3) Pleasantly Satisfied
                        </option>

                        <option value="4">
                            4) Strong and Motivating
                        </option>

                        <option value="5">
                            5) Powerful and Pursuasive
                        </option>
                    </select></p>

                    <p><strong>Concept:</strong><br>
                    <small>How does the concept show through in this piece? Is the concept clear and unique?</small><br>
                    <select name="criteria2">
                        <option value="1">
                            1) Not Apparent
                        </option>

                        <option value="2">
                            2) Weak
                        </option>

                        <option value="3">
                            3) Obvious, yet seems considered
                        </option>

                        <option value="4">
                            4) Smart
                        </option>

                        <option value="5">
                            5) Memorable, Truly Original
                        </option>
                    </select></p>

                    <p><strong>Form:</strong><br>
                    <small>How does the visual execution meet the concept?</small> <select name="criteria3">
                        <option value="1">
                            1) Not-Considered
                        </option>

                        <option value="2">
                            2) Acceptably Executed
                        </option>

                        <option value="3">
                            3) Somewhat Considered
                        </option>

                        <option value="4">
                            4) Carefully Considered
                        </option>

                        <option value="5">
                            5) Exquisitely Executed
                        </option>
                    </select></p>
                </fieldset>

                <fieldset class="span6">
                    <strong>Appropriate for Audience:</strong><br>
                    <small>Does the execution so far seem appropriate for the target audience?</small><br>
                    <select name="criteria4">
                        <option value="1">
                            1) Totally Inappropriate
                        </option>

                        <option value="2">
                            2) Barely Appropriate
                        </option>

                        <option value="3">
                            3) Somewhat Appropriate
                        </option>

                        <option value="4">
                            4) Fitting
                        </option>

                        <option value="5">
                            5) Extremely Appropriate
                        </option>
                    </select>

                    <p>&nbsp;</p><strong>Ready to Deliver:</strong><br>
                    <small>Could the piece be delivered as a finished product?</small> 
                    <select name="criteria5">
                        <option value="1">
                            1) Try a different direction entirely
                        </option>

                        <option value="2">
                            2) Could benefit from more iteration
                        </option>

                        <option value="3">
                            3) Getting somewehre
                        </option>

                        <option value="4">
                            4) Small details to be considered
                        </option>

                        <option value="5">
                            5) Finished
                        </option>
                    </select>

                   <input type="hidden" name="image_id" id="image_id" value="<?php echo $row->id;?>"> 
                   <input type="hidden" name="owner" value="<?php echo $row->owner;?>"> 
                </fieldset>
				</div>
                    <div class="row-fluid">
                    <?php  
                    	$attr = array('class'=>'btn btn-success','name'=>'submit', 'id' => 'rating-button','value'=>'Add Rating to the Graph'); 
                    	echo form_submit($attr); ?>
                    </div>
                <?php echo form_close(); ?>

                <div id="myResultsDiv"></div>
            </div>

            <div class="tab-pane" id="comments">
				<div id="comment-form-container" class="<?php //echo empty($comments) ? 'expanded' : 'collapsed';?>">
					<p><strong>I would like feedback on</strong><br>
					<?php echo $row->objective; ?></p>
	                <form id="comment-form" action="<?php echo base_url(); ?>images/ajax_post_comment" accept-charset="utf-8">
	                	
	                    <fieldset>
	                        <legend>Leave a Comment</legend>						
							<input type="hidden" name="image_id" value="<?php echo $row->id;?>"> 
	                        <textarea rows="3" name="comment" class="input-block-level">
	</textarea> <button type="submit" class="btn btn-success">Submit</button> <button id="comment-form-cancel" type="button" class="btn btn-danger">Cancel</button>
	                    </fieldset>
	                </form>

		
	            </div>            
	            <div id="comments-block" class="expanded">
                <?php  if (isset($comments) && !empty($comments)){
                        foreach ($comments as $int => $comment){ ?>

	                <blockquote class="<?php echo $comment->role != 'user' ? 'alert-info' : '' ?>">
	                    <p><?php echo $comment->comment;?></p><?php if ($comment->role != 'user') {?>
	
	                    <div class="btn btn-mini disabled text-left">
	                        By: <strong><?php echo $comment->username;?></strong> <em>(Faculty)</em>
	                    </div><?php } else { ?>
	
	                    <div class="btn btn-large btn-mini disabled text-left">
	                        By: <?php echo $comment->username;?> <em>(Student)</em>
	                    </div><?php } ?> <small class="text-right"><?php echo $comment->timestamp; ?></small>
	                </blockquote>
	                <?php }; // end of foreach comments 
		                }; //endif ?>
<!--				Our Pagination doesn't work at the moment so I'm removing it.
		            <ul class="pager">
		                <li class="previous disabled"><a href="#">&larr; Newer</a></li>
		
		                <li><a id="leave-a-comment">Leave a Comment</a></li>
		
		                <li class="next"><a href="#">Older &rarr;</a></li>
		            </ul>
-->

				</div>
			</div>
	        <div class="tab-pane" id="flag">
	            <div class="alert flag-alert alert-block alert-error fade in">
	                <h4 class="alert-heading">Flag this image for review?</h4>
	
	                <p>Is this image inappropriate in content or spam?</p>
	
	                <p><button class="btn btn-danger" data-flag-type="image" data-flag-id="<?php echo $row->id;?>">Flag this Image</button></p>
	            </div>
	
	            <div class="alert flag-confirmation alert-info fade out">
	                This image has been flagged.
	            </div>
	        </div>
	    </div><!-- end of tab container -->
    </div>
    <?php echo '<script type="text/javascript"> var median = '. $median .'</script>';?><script type="text/javascript"></script>
    
    