<?php if ($this->session->userdata('user_level_id') == "") {
  $this->session->set_flashdata('message2', 'Level Name Not Found');
  redirect('master/auth/login');
} 
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Advanced form elements</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/ionicons.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/daterangepicker.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/bootstrap-datepicker.min.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/all.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/bootstrap-timepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="text/css" href="<?php echo base_url(); ?>assets/css/square/blue.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/_all-skins.min.css">
  <!-- Animate style -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/animate.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

  <!-- demo style -->
  <style rel="stylesheet" type="text/css">
    /* FROM HTTP://WWW.GETBOOTSTRAP.COM
     * Glyphicons
     *
     * Special styles for displaying the icons and their classes in the docs.
     */

    .bs-glyphicons {
      padding-left: 0;
      padding-bottom: 1px;
      margin-bottom: 20px;
      list-style: none;
      overflow: hidden;
    }

    .bs-glyphicons li {
      float: left;
      width: 25%;
      height: 115px;
      padding: 10px;
      margin: 0 -1px -1px 0;
      font-size: 12px;
      line-height: 1.4;
      text-align: center;
      border: 1px solid #ddd;
    }

    .bs-glyphicons .glyphicon {
      margin-top: 5px;
      margin-bottom: 10px;
      font-size: 24px;
    }

    .bs-glyphicons .glyphicon-class {
      display: block;
      text-align: center;
      word-wrap: break-word; /* Help out IE10+ with class names */
    }

    .bs-glyphicons li:hover {
      background-color: rgba(86, 61, 124, .1);
    }

    @media (min-width: 768px) {
      .bs-glyphicons li {
        width: 12.5%;
      }
    }
  </style>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>LTE</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <!-- Left side column. contains the logo and sidebar -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">

              <?php if ($this->session->userdata('images') == '') { ?>
              <img src="<?php echo base_url(); ?>assets/img/user.png" class="user-image" alt="User Image">
              <?php }else{ ?>
              <img src="<?php echo base_url(); ?>assets/img/<?php echo $this->session->userdata('images');?>" class="user-image" alt="User Image">
              <?php } ?>

              <span class="hidden-xs"><?php echo $this->session->userdata('name') ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">

                <?php if ($this->session->userdata('images') == '') { ?>
                <img src="<?php echo base_url(); ?>assets/img/user.png" class="img-circle" alt="User Image">
                <?php }else{ ?>
                <img src="<?php echo base_url(); ?>assets/img/<?php echo $this->session->userdata('images');?>" class="img-circle" alt="User Image">
                <?php } ?>

                <p>
                  <?php echo $this->session->userdata('name') ?> -
                  <?php
                  $level_data = $this->db->get('user_level')->result();
                  foreach ($level_data as $data) {
                    if ($data->user_level_id == $this->session->userdata('user_level_id')) {
                      echo $data->level_name;
                    }
                  }
                  $level_name = $this->session->userdata('id_user_level');
                  ?>
                  <small>Created On <?php
                  $this->load->model('Code');
                  $date = $this->Code->timestamp($this->session->userdata('created_on'),'mini');
                  echo $date; 
                  ?></small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="pull-left">
                  <?php if ($this->session->userdata('user_level_id') == 1 ) { ?>
                    <a href="<?php echo site_url('master/auth/profile') ?>" class="btn btn-default btn-flat">Profile</a>
                  <?php } elseif ($this->session->userdata('user_level_id') == 2 ) { ?>
                    <a href="<?php echo site_url('master/auth/profile2') ?>" class="btn btn-default btn-flat">Profile</a>
                  <?php } ?>
                </div>
                <div class="pull-right">
                  <a href="<?php echo site_url('master/auth/logout') ?>" class="btn btn-default btn-flat">Sign out</a>
                </div>
                <!-- /.row -->
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>  
  
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
  
          <?php if ($this->session->userdata('images') == '') { ?>
          <img src="<?php echo base_url(); ?>assets/img/user.png" class="img-circle" alt="User Image">
          <?php }else{ ?>
          <img src="<?php echo base_url(); ?>assets/img/<?php echo $this->session->userdata('images');?>" class="img-circle" alt="User Image">
          <?php } ?>
  
        </div>
        <div class="pull-left info">
          <p><?php echo $this->session->userdata('name') ?></p>
          <a href="#"><i class="fa fa-circle text-success"></i>Status&nbsp;:&nbsp;  
          <?php 
          $active = $this->session->userdata('active');
          if ($this->session->userdata('active') == 1){
            echo 'Active';
          }else{
            echo 'Non Active';
          }
          ?></a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->

      <?php $this->load->view('sidebar'); ?>

    </section>
    <!-- /.sidebar -->
  </aside>


  <?php echo $contents; ?>

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; <?php echo date('Y')?> <a href="https://syabandz.blogspot.com">SyaBaNdz.BlogSpot.com</a>.</strong> All rights reserved.
  </footer>

</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/select2.full.min.js"></script>
<!-- InputMask -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.inputmask.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.inputmask.date.extensions.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/moment.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap-datepicker.min.js"></script>
<!-- bootstrap color picker -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/icheck.min.js"></script>
<!-- FastClick -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/fastclick.js"></script>
<!-- AdminLTE App -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/demo.js"></script>
<!-- Page script -->
<script type="text/javascript">
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })
  })
</script>
</body>
</html>