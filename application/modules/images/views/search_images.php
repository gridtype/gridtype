<h1><span class="title-first-part">Search ></span> <?php echo $searchstring; ?></h1>

<ul id="">
        <?php foreach ($image_results->result() as $row): 

               echo $row->name . '<br />';
     /*        $img = '<img src="'.base_url().$row->image.'_thumb'.$row->image_type.'"  alt="'.$row->name.'" class="img-polaroid"/>';

        ?>
            <li id="images-<?php echo $row->id?>" class="span3">
                <?php if($row->highlight): ?>           
                    <span>Cover image</span>            
                <?php endif; ?>

                <div class="img_wrap">
                    <?php echo anchor('images/single/'.$row->id, $img); ?>
                </div>


            </li>
        <?php */ endforeach; ?>
</ul>