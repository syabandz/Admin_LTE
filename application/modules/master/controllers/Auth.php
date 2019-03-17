<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Auth extends CI_Controller
{
    function __construct() {
        parent::__construct();
        $this->load->model('Code');
        $this->load->model('User_model');
    }

    public function index() {
        $this->template->load('template','advanced');
    } 
    
    public function register() {
        $this->load->view('register');
    } 
    
    public function register_action() {
        $code           = $this->Code->user_code();
        $qr_code        = $code;
        $name           = $this->input->post('name');
        $hp             = $this->input->post('hp');
        $email          = $this->input->post('email');
        $password       = $this->input->post('password',TRUE);
        $options        = array("cost" => 4);
        $hashPassword   = password_hash($password,PASSWORD_BCRYPT,$options);

        $this->load->library('ciqrcode'); //pemanggilan library QR CODE

		$config['cacheable']	= true; //boolean, the default is true
		$config['cachedir']		= './assets/'; //string, the default is application/cache/
		$config['errorlog']		= './assets/'; //string, the default is application/logs/
		$config['imagedir']		= './assets/images/'; //direktori penyimpanan qr code
		$config['quality']		= true; //boolean, the default is true
		$config['size']			= '1024'; //interger, the default is 1024
		$config['black']		= array(224,255,255); // array, default is array(255,255,255)
		$config['white']		= array(70,130,180); // array, default is array(0,0,0)
		$this->ciqrcode->initialize($config);

		$qr_code=$code.'.png'; //buat name dari qr code sesuai dengan nim

		$params['data'] = $code; //data yang akan di jadikan QR CODE
		$params['level'] = 'H'; //H=High
		$params['size'] = 10;
		$params['savename'] = FCPATH.$config['imagedir'].$qr_code; //simpan image QR CODE ke folder assets/images/
		$this->ciqrcode->generate($params); // fungsi untuk generate QR CODE

        $data = array(
            'code'          => $code,
            'qr_code'       => $qr_code,
            'name'          => $name,
            'hp'            => $hp,
            'email'         => $email,
            'password'      => $hashPassword,
            'user_level_id' => 2,
            'active'        => 0,
        );
        $this->User_model->insert($data);
        $this->session->set_flashdata('message2','Register your account success');
        redirect('master/auth/login');
}

    public function login() {
        $this->load->view('login');
    } 
    
    public function login_action() {
        $email    = $this->input->post('email');
        $password = $this->input->post('password',TRUE);
        $user_level_id = $this->input->post('user_level_id',TRUE);
        $hashPass = password_hash($password,PASSWORD_DEFAULT);
        $hash     = password_verify($password, $hashPass);
        // query check email
        $this->db->where('email',$email);
        // query check password hash
        $user    = $this->db->get('user');
        if ($user->num_rows() > 0) {
            $row = $user->row_array();
            if (password_verify($password,$row['password'])) {
                // retrive user data to session and check user_level_id
                if ($user_level_id == 1) {
                    $this->session->set_userdata($row);
                    redirect('master/auth/profile');
                }elseif ($user_level_id == 2) {
                    $this->session->set_userdata($row);
                    redirect('master/auth/profile2');
                }elseif ($user_level_id == 3) {
                    $this->session->set_userdata($row);
                    redirect('master/auth/profile3');
                }else{
                    $this->session->set_flashdata('message', 'Choose level name');
                    redirect('master/auth/login');
                }
            } else {
                $this->session->set_flashdata('message','Incorect your password');
                redirect('master/auth/login');
            }
        } else {
            $this->session->set_flashdata('message','Incorrect your email');
            redirect('master/auth/login');
        }
    }

    public function forgot() {
        $this->load->view('forgot');
    } 
    
    public function forgot_action() {
        $email          = $this->input->post('email');
        $password       = $this->input->post('password',TRUE);
        $options        = array("cost" => 4);
        $hashPassword   = password_hash($password,PASSWORD_BCRYPT,$options);
        // query check email if not found
        $this->db->where('email',$email);
        $user     = $this->db->get('user');
        if ($user->num_rows() > 0) {
            // query check email if equal by input
            $user_data= $this->db->get('user')->result();
            foreach ($user_data as $data) {
                if ($data->email == $email) {
                    // get by id to update proccess if there is not id can not to update
                    $id = $data->id;
                        $data = array(
                        'id'        => $id,
                        'email'     => $email,
                        'password'  => $hashPassword,
                    );
                    $this->User_model->update($id, $data);
                    $this->session->set_flashdata('message2','Change your password success');
                    redirect('master/auth/login');
                }
            }
        } else {
            $this->session->set_flashdata('message','Incorrect your email');
            redirect('master/auth/forgot');
        }
    }

    public function logout() {
        $this->session->sess_destroy();
        redirect('master/auth/login');
    }

    public function profile() {
        if ($this->session->userdata('user_level_id') == 1 ) {
            $this->template->load('template','master/profile');
        } else {
            $this->session->set_flashdata('message','Incorrect your level name');
            redirect('master/auth/login');
        }
    }

    public function profile2() {
        if ($this->session->userdata('user_level_id') == 2 ) {
            $this->template->load('template','widgets');
        } else {
            $this->session->set_flashdata('message','Incorrect your level name');
            redirect('master/auth/login');
        }
    }

    public function profile3() {
        if ($this->session->userdata('user_level_id') == 3 ) {
            $this->template->load('template','widgets');
        } else {
            $this->session->set_flashdata('message','Incorrect your level name');
            redirect('master/auth/login');
        }
    }

    public function email() {
        $email = $this->input->post('email');
        $user_data = $this->db->get_where('user',array('email' => $email))->result();
        foreach ($user_data as $data) {
            $data = array(
                'email' => $data->email,
            );
            echo json_encode($data);
        }

    }
}