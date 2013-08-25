<head>
<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css/ratings.css" />
<script language="javascript" type="text/javascript" src="<?php echo base_url() ?>assets/js/jquery.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo base_url() ?>assets/js/jquery.flot.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo base_url() ?>assets/js/jquery.flot.pie.js"></script>

</head>
<?php $session_id = $this->session->userdata('session_id'); echo $session_id;?>
<br />
<h3>Ratings Records</h3><br />



<h4><a href="<?php echo base_url() ?>ratings/add">Add a Record</a></h4><br />
<?php foreach ($rows->result() as $row): ?>
<script type="text/javascript">
$(function () {
	var data<?php echo $row->id; ?> = [
		{ label: "First Impression",  data: <?php echo $row->criteria1; ?>},
		{ label: "Conceptualization",  data: <?php echo $row->criteria2; ?>},
		{ label: "Form & Content",  data: <?php echo $row->criteria3; ?>},
		{ label: "Recommend Iteration",  data: <?php echo $row->criteria4; ?>}
	];
		
	// DONUT
    $.plot($("#donut<?php echo $row->id; ?>"), data<?php echo $row->id; ?>, 
	{
		series: {
			pie: { 
				innerRadius: 0.6,
				show: true,
				label: {
					show:false
				}
			}
		}
	});
		});

</script>




    <div id="donut<?php echo $row->id; ?>" class="graph" style="width:300px; height:300px;"></div>


<a href="<?php echo base_url() ?>ratings/edit/<?php echo $row->id; ?>">Edit</a> <a href="<?php echo base_url() ?>ratings/delete/<?php echo $row->id; ?>">Delete</a>

<?php endforeach; ?>

