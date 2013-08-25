    <h1><span class="title-first-part">Explore &gt;</span> Users</h1>

    <h2>Faculty</h2>
    <hr>

    <ul class="unstyled">
        <?php foreach ($faculty as $fac): ?>

        <li><a href="<?php echo base_url() . 'images/user/' . $fac->id;?>"><?php echo $fac->username; ?></a></li><!-- <?php echo $row->id; ?> -->
        <?php endforeach; ?>
    </ul>

    <h2>Students</h2>
    <hr>

    <ul class="unstyled">
        <?php foreach ($students as $stu): ?>

        <li><a href="<?php echo base_url() . 'images/user/' . $stu->id;?>"><?php echo $stu->username; ?></a></li><!-- <?php echo $row->id; ?> -->
        <?php endforeach; ?>
    </ul>

    <h2>Admins</h2>
    <hr>

    <ul class="unstyled">
        <?php foreach ($admins as $adm): ?>

        <li><a href="<?php echo base_url() . 'images/user/' . $adm->id;?>"><?php echo $adm->username; ?></a></li><!-- <?php echo $row->id; ?> -->
        <?php endforeach; ?>
    </ul>