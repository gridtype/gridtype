<h1><span class="title-first-part">Explore ></span> All Projects</h1>
<p>&nbsp;</p>
    <div class="row-fluid">
        <ul class="thumbnails" data-per-slide="6">
            <?php foreach ($rows as $row): ?>
            <li class="span2 thumbnail-item">
                <div class="thumbnail">
                    <?php echo'<a href="'.base_url().'images/album/'.$row->id.'"><img src="'.$row->cover_image.'" alt="Album" title="Click to view the album" /></a>';?>
                    <div class="caption">
                        <h3><?php echo $row->name; ?></h3>
                        <small>By: <A href="<?php echo base_url();?>users/show/<?php echo $row->id ?>"><?php echo $row->username;?></A></small>
                       
                        <div class="badge badge-info" style="float:right;"><?php echo $row->count; ?></div>
                      
                        
                    </div>
                    
                </div>
            </li>
            <?php endforeach; ?>
        </ul>
        <a id="load-more-button" class="btn btn-large btn-block">Load More</a>
		<div id="ajax_loader" style="display:none"><img src="<?php echo base_url();?>assets/img/ajax-loader.gif" alt="ajax-loader" width="31" height="31" /></div>        
    </div>