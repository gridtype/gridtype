    <?php if (isset($logged_in) && $logged_in == TRUE){ ?>
    
    <!-- Modal -->

    <div id="uploadModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="uploadModalLabel" aria-hidden="true">
    <?php if (empty($albums)){ ?>

	<form action='dashboard/albums/ajax_add_album'>
    <div class="modal-header">
        <h3 id="uploadModalLabel">Add an Album</h3>
    </div>

    <div class="modal-body">
        You need to add an album before you can add images. Fill out the form below to create your first album or visit here.

        <div class="hidden">
            <input type="hidden" name="id" value="">
        </div>

        <div class="hidden">
            <input type="hidden" name="owner" value="<?php echo $userid; ?>">
        </div>

        <div>
            <label>Name:</label> <input type="text" name="name" value="">
        </div>

        <div>
            <label>Private?</label> <input type="checkbox" name="private">
        </div>

        <div>
            <label>Description:</label> 
            <textarea name="full_txt" rows="10" cols="25"></textarea>
        </div>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
        <input type="submit" class="btn btn-primary">
    </div>
    </form>
    <?php  } else { ?>
    <form action="dashboard/images/ajax_submit" method="POST" enctype="multipart/form-data">
    <div class="modal-header">
        <h3 id="uploadModalLabel">Upload an Image</h3>
    </div>

    <div class="modal-body">
        <input type="hidden" name="owner" value="<?php echo $userid;?>"> <label>Album</label> <select name="album">
            <?php foreach ($albums as $album) {
	                echo '<option value="'.$album->id.'">'.$album->name.'</option>';
                };?>
        </select>

        <div>
            <label>Title</label> <input type="text" name="name" value="">
        </div>

        <div>
            <label>Description<br>
            <textarea name="description" class="input-xxlarge" rows="3">
</textarea></label>
        </div>

        <div>
            <label>Objective<br>
            <textarea name="objective" class="input-xxlarge" rows="3">
</textarea></label>
        </div>

        <div>
            <label>Image</label> <input name="image" type="file">
        </div>
    </div>

    <div class="modal-footer">LIES
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button> <input type="submit" class="btn btn-primary">
    </div>
    </form>

    <?php };/* //end album check */?>
    </div>
    <?php };/* //end logged in check*/?>
        