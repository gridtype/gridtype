
<center>
<p>&nbsp;</p>
<a class="brand" href="<?php echo $this->config->site_url();?>"> <img src="<?php echo base_url();?>/assets/img/logo.png"> </a>
<p>&nbsp;</p>
<h1>Get the critique you want > </h1>

GRIDTYPE allows for easy upload, sorting and feedback on student design work.
<p>&nbsp;</p>
    <?php echo form_open(site_url('auth/login'),array('class'=>""));?>

  <?php echo form_input(array('name' => 'email', 'class'=>"input-medium", 'placeholder' => "Email"));?>
    <?php echo form_password(array('name'=> 'password', 'class'=>"input-medium", 'placeholder' => "Password"))?>

      <button type="submit" name="login" class="btn btn-success">LOGIN</button>
  
  <?php echo form_close()?>

</center>
