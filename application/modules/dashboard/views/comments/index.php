<?php include_once('./application/modules/dashboard/views/admin/menu_admin_view.php');?>
    <table class="table table-hover table-condensed">
        <tr>
            <th>Id</th>

            <th>Image id</th>

            <th>User id</th>

            <th>Comment</th>

<!--             <th>Role</th> -->

            <th>Flagged</th>

            <th>Timestamp</th>

            <th>Actions</th>
        </tr><?php foreach ($rows->result() as $row): ?>
		
        <tr class="<?php echo ($row->flagged == 1 ? 'error' : '');?>">
            <td><?php echo $row->id; ?></td>

            <td><?php echo $row->image_id; ?></td>

            <td><?php echo $row->user_id; ?></td>

            <td><?php echo $row->comment; ?></td>

<!--             <td><?php echo $row->role; ?></td> -->

            <td><?php echo $row->flagged; ?></td>

            <td><?php echo $row->timestamp; ?></td>

            <td><a href="<?php echo base_url() ?>comments/edit/<?php echo $row->id; ?>"><i class="icon-edit"></i>Edit</a> <a href="<?php echo base_url() ?>comments/delete/<?php echo $row->id; ?>">Delete</a></td>
        </tr><?php endforeach; ?>
    </table>