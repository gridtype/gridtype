<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css/comments.css" />
</head>
<br />
<h3>Comments Records</h3><br />
<h4><a href="<?php echo base_url() ?>comments/add">Add a Record</a></h4><br />
<table>
<tr>
<th>Id</th>
<th>Image id</th>
<th>User id</th>
<th>Comment</th>
<th>Role</th>
<th>Flagged</th>
<th>Timestamp</th>
<th>Actions</th>
</tr>
<?php foreach ($rows->result() as $row): ?>
<tr>
<td><?php echo $row->id; ?></td>
<td><?php echo $row->image_id; ?></td>
<td><?php echo $row->user_id; ?></td>
<td><?php echo $row->comment; ?></td>
<td><?php echo $row->role; ?></td>
<td><?php echo $row->flagged; ?></td>
<td><?php echo $row->timestamp; ?></td>
<td><a href="<?php echo base_url() ?>comments/edit/<?php echo $row->id; ?>">Edit</a> <a href="<?php echo base_url() ?>comments/delete/<?php echo $row->id; ?>">Delete</a></td>
</tr>
<?php endforeach; ?>
</table>
