<h1><span class="title-first-part">Project ></span> <?php echo $album;?> </h1>
	<ul id="">
        <?php foreach($rows as $row) : ?>
            <li id="images-<?php echo $row->id?>" class="<?php echo ($row->highlight) ? 'highlight image_block' : 'image_block'; ?> span3">
                <?php if($row->highlight): ?>
                    <span>Cover image</span>
                <?php endif; ?>

                <div class="img_wrap">
                    <?php echo anchor('images/view/'.$row->id, '<img src="'.base_url(). 'assets'. $row->image.'_thumb'.$row->image_type.'"  alt="'.$row->name.'" class="img-polaroid"/>'); ?>
                </div>
            </li>
        <?php endforeach; ?>
	</ul>