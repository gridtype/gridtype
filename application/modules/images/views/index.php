<h1><span class="title-first-part">Explore ></span> All Pieces</h1>
<div class="row-fluid">
    <ul class="thumbnails" data-per-slide="6">
        <?php foreach ($rows->result() as $row): ?>
        <li class="span2 thumbnail-item">
            <div class="thumbnail">
                <a href="<?php echo base_url();?>images/view/<?php echo $row->id; ?>">
                	<img src="<?php echo base_url().$row->image.'_thumb'.$row->image_type; ?>">
                </a>
                <div class="caption"><span><?php echo $row->name; ?></span></div>
            </div>
        </li>
        <?php endforeach; ?>
	</ul>
    <a id="load-more-button" class="btn btn-large btn-block">Load More</a>
	<div id="ajax_loader" style="display:none"><img src="<?php echo base_url();?>assets/img/ajax-loader.gif" alt="ajax-loader" width="31" height="31" /></div>
</div>