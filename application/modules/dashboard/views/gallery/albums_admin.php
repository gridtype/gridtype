<?php include_once('./application/modules/dashboard/views/admin/menu_admin_view.php');?>
<?php if (!empty($query) || $query != NULL) : ?>
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
		<?php foreach ($query as $album) : ?>
		<tr>
			<td><?php echo $album->id; ?></td>
			<td><a href="<?php echo base_url(); ?>images/album/<?php echo $album->id;?>"><?php echo $album->name; ?></a></td>
			<td>IMAGE COUNT</td>
			<td><?php echo $album->private; ?></td>
			<td></td>
		</tr>

		<?php endforeach; ?>
	</tbody>

</table>
<?php endif;?>
