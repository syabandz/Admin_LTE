<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/font-awesome.min.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/all.css">
  <!-- Select2 -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/AdminLTE.min.css">
  <!-- Animate style -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/animate.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>Admin</b>LTE</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body animated tada">
     
      <?php       if ( empty($this->session->userdata('message')) && empty( $this->session->userdata('message2')) ) { ?>
        <p class="login-box-msg" style="text-align:center;"><?php echo "Change your password"; ?></p>
      <?php } elseif ($this->session->userdata('message') != '') { ?>
        <p class="login-box-msg" style="text-align:center; color:red;"><?php echo $this->session->userdata('message'); ?></p>
      <?php } ?>
      
    <form action="<?php echo site_url('master/auth/forgot_action') ?>" method="post">
      <div class="form-group has-feedback">
        <input type="email" class="form-control" name="email" id="email" value="" placeholder="Email" required autofocus />
        <span class="fa fa-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="password" id="password" value="" placeholder="Password" required />
        <span class="fa fa-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">&nbsp;
          <a href="#" onclick="$('[name=password]').attr('type', 'text')"><i class="fa fa-eye"></i></a>
          <a href="#" onclick="$('[name=password]').attr('type', 'password')"><i class="fa fa-eye-slash"></i></a>
        </div>
        <!-- /.col -->
        <div class="row">
          <div class="col-xs-12">
            <a href="<?php echo site_url('master/auth/login') ?>" class="btn btn-warning pull-right" style="margin-right: 15px;"><i class="fa fa-undo"></i>&nbsp;&nbsp;Cancel</a>
            <button type="submit" class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-save"></i>&nbsp;&nbsp;Save</button>
          </div>
        </div>
        <!-- /.col -->
      </div>
    </form>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/select2.full.min.js"></script>
<!-- iCheck 1.0.1 -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/icheck.min.js"></script>
<!-- AdminLTE App -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/adminlte.min.js"></script>
<!-- Page script -->
<script type="text/javascript">
$(function () {
  //Initialize Select2 Elements
  $('.select2').select2()
})
  //Initialize iCheck Elements
  $(function () {
  $('input').iCheck({
    checkboxClass: 'icheckbox_square-blue',
    radioClass: 'iradio_square-blue',
    increaseArea: '20%' /* optional */
  });
});
</script>
</body>
</html>