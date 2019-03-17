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
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/sweetalert.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="#"><b>Admin</b>LTE</a>
  </div>

  <div class="register-box-body animated tada">

      <?php       if ( empty($this->session->userdata('message')) && empty( $this->session->userdata('message2')) ) { ?>
        <p class="login-box-msg" style="text-align:center;"><?php echo "Register a new membership"; ?></p>
      <?php } elseif ($this->session->userdata('message') != '') { ?>
        <p class="login-box-msg" style="text-align:center; color:red;"><?php echo $this->session->userdata('message'); ?></p>
      <?php } elseif ($this->session->userdata('message2') != '') { ?>
        <p class="login-box-msg" style="text-align:center; color:green;"><?php echo $this->session->userdata('message2'); ?></p>
      <?php } ?>

      <form action="<?php echo site_url('master/auth/register_action') ?>" method="post">
        <div class="form-group has-feedback">
          <input type="text" class="form-control" name="name" id="name" placeholder="Full name" required>
          <span class="fa fa-user form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="number" class="form-control" name="hp" id="hp" placeholder="No Handphone" required>
          <span class="fa fa-whatsapp form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="email" class="form-control" name="email" id="email" placeholder="Email" required>
          <span class="fa fa-envelope form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
          <span class="fa fa-lock form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="password" class="form-control" name="password2" id="password2" placeholder="Retype password" required>
          <span class="fa fa-sign-in form-control-feedback"></span>
        </div>
        <div class="row">
          <div class="col-xs-8">
            <div class="checkbox icheck">
              <label>
                <input type="checkbox"> I agree to the <a href="#">terms</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-xs-4">
            <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

    <div class="social-auth-links text-center">
      <p>- OR -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using
        Facebook</a>
      <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using
        Google+</a>
    </div>

    <a href="<?php echo site_url('master/auth/login') ?>" class="text-center">I already have a membership</a>
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->

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
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/sweetalert.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/sweetalert-dev.js"></script>
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

<script type="text/javascript">
$(document).ready(function(){
    $('#email').change(function() {
        var email = $(this).val();
        console.log(email);
        $.ajax({
            url : "<?php echo base_url('master/auth/email') ?>",
            type : 'POST',
            dataType: 'JSON',
            data : 'email='+email,
            success : function(data) {
                if (data.email == email){
                    swal({
                        type : "info",
                        title: "Failed",
                        text : "Can not save this email !",
                    });
                }
            }
        });
    });
});
</script>

<script type="text/javascript">
$(document).ready(function(){
    $('#password2').change(function() {
        var password2 = $(this).val();
        console.log(password2);
        var password  = $('#password').val();
        if (password2 != password) {
          swal({
              type : "info",
              title: "Failed",
              text : "Password is different !",
          });
        }
    });
});
</script>

</body>
</html>