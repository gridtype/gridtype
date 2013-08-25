<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css/pages.css" />
</head>
<br />
<h3>Pages</h3><br />
<h4><a href="<?php echo base_url() ?>dashboard/pages/add">Add a Page</a></h4><br />
<table>
<tr>
<th>Id</th>
<th>Title</th>
<th>Content</th>
<th>Status</th>
<th>Menu</th>
<th>Menu order</th>
<th>Actions</th>
</tr>
<?php foreach ($rows->result() as $row): ?>
<tr>
<td><?php echo $row->id; ?></td>
<td><?php echo $row->title; ?></td>
<td><?php echo $row->content; ?></td>
<td><?php $status = $row->status; echo $status == 1 ? 'Published' : 'Draft'; ?></td>
<td><?php echo $row->menu; ?></td>
<td><?php echo $row->menu_order; ?></td>
<td><a href="<?php echo base_url() ?>dashboard/pages/edit/<?php echo $row->id; ?>">Edit</a> <a href="<?php echo base_url() ?>dashboard/pages/delete/<?php echo $row->id; ?>">Delete</a></td>
</tr>
<?php endforeach; ?>
</table>
