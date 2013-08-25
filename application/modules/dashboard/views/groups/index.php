<h1><span class="title-first-part">Dashboard ></span> My Groups</h1>

    	<div class="row-fluid">
			<ul>
				<?php foreach($rows as $row) : ?>
					<li>
						<?php echo $row->name; ?> (COUNT) <a href="<?php echo site_url().'groups/view/'.$row->id; ?>">View</a> | Leave
					</li>
				<?php endforeach; ?>
			</ul>
