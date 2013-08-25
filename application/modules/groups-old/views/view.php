<h1><span class="title-first-part">Group ></span> <?php echo $group->name; ?></h1>

    	<div class="row-fluid">
			<ul>
			<?php if (!empty($users)) : ?>
			<?php if ($is_member == 1) : ?>
				You are a member of this group.
			<? endif; ?>
			<?php foreach($users as $user) : ?>
				<li>
					<a href="<?php echo site_url().'images/user/'.$user->id; ?>"><?php echo $user->username; ?></a>
				</li>
			<?php endforeach; ?>
			</ul>
			<?php else : ?>
			It doesn't look like this group has any members.
			<?php endif; ?>
    	</div>