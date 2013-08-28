    <footer>
        <p class="pull-right"><a href="#">&copy; 2013 Zocalo</a></p>
      
        <p>Learn about some of the awesome technologies behind Zocalo's Firestarter <a href="<?php echo site_url();?>/intro">here</a>.</p>
    </footer>
        <?php if (isset($logged_in) && $logged_in == TRUE){ ?>
    
    <!-- Modal -->

    <div id="uploadModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="uploadModalLabel" aria-hidden="true">
    <?php if (empty($albums)){ ?>

	<form action='<?php echo site_url();?>dashboard/albums/add_album'>
    <div class="modal-header">
        <h3 id="uploadModalLabel">Add a Project</h3>
    </div>

    <div class="modal-body">
        <div class="alert alert-info"><strong>Notice</strong><br /> You need to add a Project before you can add single pieces. Fill out the form below to create your first project.</div>

        <div class="hidden">
            <input type="hidden" name="id" value="">
        </div>

        <div class="hidden">
            <input type="hidden" name="owner" value="<?php echo $userid; ?>">
        </div>

        <div>
            <strong>Name</strong><br /> <input type="text" name="name" value="" class="input-xxlarge">
        </div>
        <div><br />
            <strong>Description</strong><br />
            <textarea name="full_txt" rows="10" cols="25" class="input-xxlarge"></textarea>
        </div>
          <div><br />
            <strong>Private Album</strong> <input type="checkbox" name="private">
        </div>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
        <input type="submit" class="btn btn-primary">
    </div>
    </form>
    <?php  } else { ?>
    <form action="<?php echo site_url();?>/dashboard/images/ajax_submit" method="POST" enctype="multipart/form-data">
    <div class="modal-header">
        <h3 id="uploadModalLabel">Upload a Piece</h3>
    </div>

    <div class="modal-body">
        <input type="hidden" name="owner" value="<?php echo $userid;?>"> <label><strong>Album</strong></label> <select name="album">
            <?php foreach ($albums as $album) {
	                echo '<option value="'.$album->id.'">'.$album->name.'</option>';
                };?>
        </select>
        <br/>
        
      <!--  <input type='text' name="new-album" placeholder="Add to New Album"> -->
     
  
        <div>
            <label><strong>Title of this work:</strong></label> <input type="text" name="image-name" value="" class="input-xxlarge">
        </div>

        <div>
            <label><strong>Description (Size, Audience, Typefaces, Concepts etc..)</strong><br>
            <textarea name="description" class="input-xxlarge" rows="3">
</textarea></label>
        </div>

        <div>
            <label><strong>What do you want people to give you feedback on?</strong><br>
            <textarea name="objective" class="input-xxlarge" rows="3">
</textarea></label>
        </div>

        <div>
            <label><strong>Image Upload</strong></label> <input name="image" type="file">
        </div>
    </div>

    <div class="modal-footer">
            <div class="text-left muted"><strong>Maximum File Size:</strong> 3mb <br/><strong>Filetypes:</strong>
             jpg / png / gif</div>
             <button class="btn btn-danger" data-dismiss="modal" aria-hidden="true" onClick="this.form.reset()">Cancel</button> 
             <input type="submit" class="btn btn-success" value="Upload">
    </div>
    </form>

    <?php };/* //end album check */?>
    </div>

    <div id="addAlbumModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="addAlbumLabel" aria-hidden="true">
	<form action='<?php echo base_url();?>dashboard/albums/add_album'>
    <div class="modal-header">
        <h3 id="addAlbumModalLabel">Add a Project</h3>
    </div>

    <div class="modal-body">

        <div class="hidden">
            <input type="hidden" name="id" value="">
            <input type="hidden" name="owner" value="<?php echo $userid; ?>">
        </div>

        <div>
            <label>Name:</label> <input type="text" name="name" value="" class="input-xxlarge">
        </div>

        <div>
            <label>Private?</label> <input type="checkbox" name="private">
        </div>

        <div>
            <label>Description:</label> 
            <textarea name="full_txt" rows="10" cols="25" class="input-xxlarge"></textarea>
        </div>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
        <input type="submit" class="btn btn-primary">
    </div>
    </form>
    <?php };/* //end logged in check*/?>
        
