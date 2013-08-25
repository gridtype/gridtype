    <div class="banner"></div>
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="<?php echo base_url();?>dashboard"> <img src="<?php echo base_url();?>/assets/img/logo.png" width="90"> </a>
          <div class="nav-collapse">

            <ul class="nav">
            	<li class="dropdown" id="exploretip" data-toggle="tooltip" title="Explore Art" data-placement="bottom">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>Explore</strong> <b class="caret"></b></a>
	                <ul class="dropdown-menu">
		              <li><a href="<?php echo base_url();?>images">Pieces</a></li>
		              <li><a href="<?php echo base_url();?>albums">Projects</a></li>
		              <li><a href="<?php echo base_url();?>users">Users</a></li>
		              <li><a href="<?php echo base_url();?>groups">Groups</a></li>

	                </ul>
            	</li>
            </ul>



            <ul class="nav pull-right">
            <?php if (isset($role) && $role == 'admin') : ?>

              <li class="<?php echo ($menu == 'admin') ? 'active' : '';?>"><a href="<?php echo base_url();?>dashboard/admin">Admin</a></li>
  	 		<?php endif;?>
	 			<li class="<?php echo ($menu == 'dashboard') ? 'active' : '';?>"><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
  	 			<li class="<?php echo ($menu == 'images') ? 'active' : '';?>"><a href="<?php echo base_url();?>dashboard/images">My Pieces</a></li></strong>
  	 			<li class="<?php echo ($menu == 'albums') ? 'active' : '';?>"><a href="<?php echo base_url();?>dashboard/albums">My Projects</a></li>
  	 			<li class="<?php echo ($menu == 'groups') ? 'active' : '';?>"><a href="<?php echo base_url();?>dashboard/groups">My Groups</a></li>

               <li class="dropdown" id="addtip" data-animation="true" data-html="true" title="Begin Uploading" data-placement="bottom">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>Add</strong><b class="caret"></b></a>
                        <div id="example" rel="popover" data-trigger="hover"  data-original-title="Start Here!" data-placement="bottom"></div>
                                          <ul class="dropdown-menu">


                           <li ><a href="#uploadModal" data-toggle="modal" >Upload Piece</a></li>
                           <li><a href="#addAlbumModal" data-toggle="modal">Create Project</a></li>

                        </ul>

               </li>


               <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-user"></i><b class="caret"></b></a>
                        <ul class="dropdown-menu">
                           <li><a href="<?php echo base_url();?>dashboard/profile">My Account</a></li>
                          <li class="divider"></li>
			              <li><a href="<?php echo base_url();?>logout">Log-Out</a></li>
                        </ul>
              </li>

              </ul>
           </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

