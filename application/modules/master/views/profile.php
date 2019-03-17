  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        User Profile
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">User profile</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
              <div class="box box-widget widget-user">
                  <div class="widget-user-header bg-black" style="background: url('<?php echo base_url(); ?>assets/img/photo1.png') center center;">
                </div>
                <div class="widget-user-image">
                  <?php if ($this->session->userdata('images') == '') { ?>
                    <img class="img-circle" src="<?php echo base_url(); ?>assets/img/user.png" alt="User Avatar">
                  <?php }else{ ?>
                  <img class="img-circle" src="<?php echo base_url(); ?>assets/img/<?php echo $this->session->userdata('images');?>" alt="User Avatar">
                  <?php } ?>
                </div>
                <div class="box-footer">
                  <h3 class="profile-username text-center"><?php echo $this->session->userdata('name') ?></h3>

                  <p class="text-muted text-center">
                    <?php
                      $level_data = $this->db->get('user_level')->result();
                      foreach ($level_data as $data) {
                        if ($data->user_level_id == $this->session->userdata('user_level_id')) {
                          echo $data->level_name;
                        }
                      }
                      $level_name = $this->session->userdata('id_user_level');
                      ?>
                  </p>
              </div>
                <!-- /.box-body -->
              </div>
              <!-- /.widget-user -->
          </div>
          <!-- /.box -->

          <!-- About Me Box -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">About Me</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <ul class="list-group list-group-unbordered">
                  <li class="list-group-item"><br>
                  <strong><i class="fa fa-qrcode"></i>&nbsp;&nbsp;&nbsp;Code</strong><br>
                  <?php
                  echo $this->session->userdata('code');
                  ?>
                  </li>
                  <li class="list-group-item"><br>
                  <strong><i class="fa fa-envelope"></i>&nbsp;&nbsp;&nbsp;Email</strong><br>
                  <?php
                  echo $this->session->userdata('email');
                  ?>
                  </li>
                  <li class="list-group-item"><br>
                  <strong><i class="fa fa-mars"></i>&nbsp;&nbsp;&nbsp;Gender</strong><br>
                  <?php
                  $gender = $this->session->userdata('gender');
                  if ($gender == 'm') {
                    echo 'Male'; 
                  }else{
                    echo 'Female'; 
                  } 
                  ?>
                  </li>
                  <li class="list-group-item"><br>
                  <strong><i class="fa fa-birthday-cake"></i>&nbsp;&nbsp;&nbsp;Place and Date Birthday</strong><br>
                  <?php 
                    $this->load->model('Code');
                    $date  = strtotime($this->session->userdata('date'));
                    $date2 = $this->Code->timestamp($date,'mini');
                    echo $this->session->userdata('born').', '.$date2; 
                  ?>
                  </li>
                  <li class="list-group-item"><br>
                  <strong><i class="fa fa-map-marker margin-r-5"></i>&nbsp;&nbsp;&nbsp;Location</strong><br>
                  <?php
                    $address_data = $this->db->get('address')->result();
                    foreach ($address_data as $data) {
                    if ($data->user_id == $this->session->userdata('id')) { 
                    echo $data->address.', '.$data->city.' '.$data->zipcode.', '.$data->province; 
                  } } ?>
                  </li>
                  <li class="list-group-item"><br>
                  <strong><i class="fa fa-whatsapp margin-r-5"></i>&nbsp;&nbsp;&nbsp;Phone</strong><br>
                  <?php
                    $address_data = $this->db->get('address')->result();
                    foreach ($address_data as $data) {
                    if ($data->user_id == $this->session->userdata('id')) {
                    echo $data->phone;
                  } } ?>
                  </li>
                </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity" data-toggle="tab">Activity</a></li>
              <li><a href="#timeline" data-toggle="tab">Timeline</a></li>
              <li><a href="#settings" data-toggle="tab">Settings</a></li>
            </ul>
            <div class="tab-content">
              <div class="active tab-pane" id="activity">

              <form class="form-horizontal">
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                      <input type="email" class="form-control" id="inputName" placeholder="Name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Email</label>

                    <div class="col-sm-10">
                      <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputName" placeholder="Name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputExperience" class="col-sm-2 control-label">Experience</label>

                    <div class="col-sm-10">
                      <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputSkills" class="col-sm-2 control-label">Skills</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputSkills" placeholder="Skills">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-danger">Submit</button>
                    </div>
                  </div>
                </form>

              </div>
              <div class="tab-pane" id="timeline">

              <form class="form-horizontal">
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                      <input type="email" class="form-control" id="inputName" placeholder="Name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Email</label>

                    <div class="col-sm-10">
                      <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputName" placeholder="Name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputExperience" class="col-sm-2 control-label">Experience</label>

                    <div class="col-sm-10">
                      <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputSkills" class="col-sm-2 control-label">Skills</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputSkills" placeholder="Skills">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-danger">Submit</button>
                    </div>
                  </div>
                </form>

              </div>
              <div class="tab-pane" id="settings">

                <form class="form-horizontal">
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                      <input type="email" class="form-control" id="inputName" placeholder="Name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Email</label>

                    <div class="col-sm-10">
                      <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputName" placeholder="Name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputExperience" class="col-sm-2 control-label">Experience</label>

                    <div class="col-sm-10">
                      <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputSkills" class="col-sm-2 control-label">Skills</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputSkills" placeholder="Skills">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-danger">Submit</button>
                    </div>
                  </div>
                </form>

              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->