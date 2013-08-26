<?php foreach ($theowner->result() as $user): ?>

<h1><span class="title-first-part">Explore > Images ></span> <?php echo $user->username;?></h1>
<?php endforeach; ?>


<p>&nbsp;</p>

<div class="row-fluid">
    <ul class="thumbnails" data-per-slide="6">
        <?php foreach ($rows->result() as $row): ?>

        <li class="span2 thumbnail-item">
            <div class="thumbnail">
                <a href="<?php echo base_url();?>/images/single/<?php echo $row->id; ?>">
                	<img src="<?php echo base_url().$row->image.$row->image_type; ?>">
                </a>
                <div class="caption">
                        <span><?php echo $row->name; ?></span>
                </div>

            </div>
        </li>
        <?php endforeach; ?>
    </ul>
</div>
