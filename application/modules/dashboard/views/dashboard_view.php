    <h1>Dashboard</h1>
    <div class="info">

   </div>

    <div>
        <div class="recent-list">
            <h3>Recent Rated</h3>
            	<hr />
            	<?php if(!$overview['rated_pieces']) { echo '<h4 style="font-weight:300">No Ratings Yet...</h4>'; } else {?>
                <?php foreach ($overview['rated_pieces'] as $piece) {
                  echo '<a href="'.site_url('dashboard/images/view').'/album-'.$piece->album.'/'.$piece->id.'"><img src="'.site_url().$piece->image.$piece->image_type.'" width="200" height="200"/></a>'; 
                };}?>
            

           
     
        </div>
        <div class="recent-comment">
            <h3>Recently Commented</h3>
            <hr />
            	<?php if(!$overview['recent_comments']) { echo '<h4  style="font-weight:300">No Comments Yet...</h4>'; } else {?>
                <?php foreach ($overview['recent_comments'] as $comment) { ?>
                    <?php print_r($comment->image);?>
	                <div class="comment-dashboard span2">
                        
                              <?php
                                echo '<a href="dashboard/images/view/album-'.$comment->album.'/'.$comment->image_id.'"><img class="dash-recent-commented" src="'.site_url().$comment->image . $comment->image_type.'"/></a>';
                                echo $comment->comment; 
                            ?>
                            
                            </div> 
                           <?php };}?>
                        

                            
                      
                    <p>
                  
        </div>
    </div>
    