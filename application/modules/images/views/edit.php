
    <h3>Edit a Record</h3><br>

    <table>
        <?php echo form_open('images/edit_validate/'.$row->id); ?>

        <tr>
            <td align='right'>Album:</td>

            <td><?php $data = array('id' => 'album', 'name' => 'album', 'value' => $row->album); echo form_input($data, set_value('album')); ?></td>
        </tr>

        <tr>
            <td align='right'>Name:</td>

            <td><?php $data = array('id' => 'name', 'name' => 'name', 'value' => $row->name); echo form_input($data, set_value('name')); ?></td>
        </tr>

        <tr>
            <td align='right'>image:</td>

            <td><?php $data = array('id' => 'image', 'name' => 'image', 'value' => $row->image); echo form_input($data, set_value('image')); ?></td>
        </tr>

        <tr>
            <td align='right'>image type:</td>

            <td><?php $data = array('id' => 'image_type', 'name' => 'image_type', 'value' => $row->image_type); echo form_input($data, set_value('image_type')); ?></td>
        </tr>

        <tr>
            <td align='right'>Highlight:</td>

            <td><?php $data = array('id' => 'highlight', 'name' => 'highlight', 'value' => $row->highlight); echo form_input($data, set_value('highlight')); ?></td>
        </tr>

        <tr>
            <td align='right'>Rank:</td>

            <td><?php $data = array('id' => 'rank', 'name' => 'rank', 'value' => $row->rank); echo form_input($data, set_value('rank')); ?></td>
        </tr>

        <tr>
            <td align='right'>Owner:</td>

            <td><?php $data = array('id' => 'owner', 'name' => 'owner', 'value' => $row->owner); echo form_input($data, set_value('owner')); ?></td>
        </tr>

        <tr>
            <td align='right'></td>

            <td><?php echo form_submit('submit', 'Update'); ?></td>
        </tr><?php echo form_close(); ?>
    </table><?php echo validation_errors('<p class="error">'); ?>
    <script type="text/javascript" src="<?php echo base_url() ?>assets/js/images.js">
</script>
