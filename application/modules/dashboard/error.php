<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Error</title>

<!-- <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/css/admin.css" type="text/css" media="screen" />
 -->

</head>


<body id="login">

<div id="header">
	<h1>GridType</h1>
</div>


	<div id="content">

        <div class="error">

            <?php foreach($errors as $error): ?>

                <p><?php echo $error; ?></p>

            <?php endforeach; ?>

        </div>


        <p>
        <a href="<?php echo $_SERVER['HTTP_REFERER']; ?>" class="back">Go Back</a>
        </p>

	</div>


</body>

</html>
