
	<?php include_once('./application/modules/dashboard/views/admin/menu_admin_view.php');?>

<table class="table table-hover">

	<thead>
		<tr>
			<th>Preview</th>
			<th>Name</th>
			<th>Images</th>
			<th>Private?</th>
			<th>Delete</th>
		</tr>
	</thead>

	<tbody>
		<?php 
			foreach ($query->result() as $row): 
			$private = ($row->private) 
                ? '<img src="'.base_url().'assets/admin/i/private.png" title="Private galleries will not be listed in the Gallery. Click the thumbnail to for a link to the Album " />' 
                : '';
            $img = '<img src="'.$this->Gallery_model->album_cover($row->id).'" width="60" alt="Preview" class="new_window" title="Click for a preview of the gallery" />';
            $images = $this->dashboard_model->album_count_images($row->id);
		?>
			<tr class="album_row">
				<td>
                    <?php echo anchor('/gallery/album/'.$row->url, 
                                $img, array('title' => 'Click to view')); ?>
                </td>
				<!-- Using the below as it is cleaner UI than an edit button
				<td>
                    <?php echo anchor('admin/albums/edit/'.$row->id, 
                                        $row->name, array('class' => 'edit')); ?>
                </td> -->

				<td>
					<strong><?php echo  $row->name?></strong><br />
                </td>
                <td>
                    <?php echo anchor('dashboard/images/show/'.$row->id, $images.' image(s)', array('class' => 'image')); ?>                
                </td>
				<td><?php echo $private; ?></td>
				<td>
                    <?php echo anchor('dashboard/albums/delete/'.$row->id, 
                                        'Delete', array('class' => 'delete_ajax', 
                                        'title' => $row->name)); ?>
                </td>

			</tr>
		<?php endforeach; ?>
	</tbody>

</table>
