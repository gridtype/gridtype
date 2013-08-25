<head>
<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css/pages.css" />
</head>
<br />

<?php foreach ($content->result() as $thecontent): ?>
<h3><?php echo $thecontent->page_title; ?></h3><br />


<?php echo $thecontent->page_content; ?>


<?php endforeach; ?>
