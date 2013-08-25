<h1><span class="title-first-part">Explore ></span> Groups</h1>

    	<div class="row-fluid">
			<ul>
				<?php foreach($rows as $row) : ?>
					<li>
						<a href="<?php echo site_url().'groups/view/'.$row->id; ?>"><?php echo $row->name; ?></a>
					</li>
				<?php endforeach; ?>
			</ul>
