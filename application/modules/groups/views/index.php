<h3>Groups Records</h3><br />
<h4><a href="<?php echo base_url() ?>groups/add">Add a Record</a></h4><br />
<table>
<tr>
<th>Id</th>
<th>Name</th>
<th>Url</th>
<th>Description</th>
<th>Private</th>
<th>Timestamp</th>
<th>Creator</th>
<th>Actions</th>
</tr>
<?php foreach ($rows->result() as $row): ?>
<tr>
<td><?php echo $row->id; ?></td>
<td><?php echo $row->name; ?></td>
<td><?php echo $row->url; ?></td>
<td><?php echo $row->description; ?></td>
<td><?php echo $row->private; ?></td>
<td><?php echo $row->timestamp; ?></td>
<td><?php echo $row->creator; ?></td>
<td><a href="<?php echo base_url() ?>groups/edit/<?php echo $row->id; ?>">Edit</a> <a href="<?php echo base_url() ?>groups/delete/<?php echo $row->id; ?>">Delete</a></td>
</tr>
<?php endforeach; ?>
</table>
