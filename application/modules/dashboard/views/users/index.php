<?php include_once('./application/modules/dashboard/views/admin/menu_admin_view.php');?>

    <a href="<?php echo base_url() ?>dashboard/users/add" class="btn">Add a User</a>

    <table class="table table-hover">
        <thead>
            <tr>
                <th>Id</th>

                <th>Username</th>

                <th>Role</th>

                <th>Email</th><!-- <th>Password</th> -->

                <th>Actions</th>
            </tr>
        </thead>

        <tbody>
            <?php foreach ($rows->result() as $row): ?>

            <tr>
                <td><?php echo $row->id; ?></td>

                <td><?php echo $row->username; ?></td>

                <td><?php echo $row->role; ?></td>

                <td><?php echo $row->email; ?></td><!-- <td><?php echo $row->password; ?></td> -->

                <td><a href="<?php echo base_url() ?>dashboard/users/edit/<?php echo $row->id; ?>">Edit</a> | <a href="<?php echo base_url() ?>dashboard/users/delete/<?php echo $row->id; ?>">Delete</a></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>