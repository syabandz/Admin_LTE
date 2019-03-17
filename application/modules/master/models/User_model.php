<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class User_model extends CI_Model
{

    public $table   = 'user';
    public $id      = 'id';
    public $order   = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json() {
        $this->datatables->select('id,code,name,email,hp');
        $this->datatables->from('user');
        $this->datatables->add_column('action', '<a href="user/read/$1",<i class="fa fa-eye" title="read"></i></a>  <a href="user/update/$1"><i class="fa fa-edit" title="update"></i></a>  <a href="javascript:void(0);" onclick="deletedata($1)"><i class="fa fa-trash" title="delete"></i></a>', 'id');
        return $this->datatables->generate();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->select('user.*, user_level.level_name as level_name');
        $this->db->where($this->id, $id);
        $this->db->join('user_level','user.user_level_id = user_level.user_level_id');
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('id', $q);
        $this->db->or_like('code', $q);
        $this->db->or_like('qr_code', $q);
        $this->db->or_like('name', $q);
        $this->db->or_like('user_level_id', $q);
        $this->db->or_like('hp', $q);
        $this->db->or_like('email', $q);
        $this->db->or_like('password', $q);
        $this->db->or_like('images', $q);
        $this->db->or_like('question1', $q);
        $this->db->or_like('question2', $q);
        $this->db->or_like('question3', $q);
        $this->db->or_like('question4', $q);
        $this->db->or_like('created_on', $q);
        $this->db->or_like('created_by', $q);
        $this->db->or_like('modified_on', $q);
        $this->db->or_like('modified_by', $q);
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id', $q);
        $this->db->or_like('code', $q);
        $this->db->or_like('qr_code', $q);
        $this->db->or_like('name', $q);
        $this->db->or_like('user_level_id', $q);
        $this->db->or_like('hp', $q);
        $this->db->or_like('email', $q);
        $this->db->or_like('password', $q);
        $this->db->or_like('images', $q);
        $this->db->or_like('question1', $q);
        $this->db->or_like('question2', $q);
        $this->db->or_like('question3', $q);
        $this->db->or_like('question4', $q);
        $this->db->or_like('created_on', $q);
        $this->db->or_like('created_by', $q);
        $this->db->or_like('modified_on', $q);
        $this->db->or_like('modified_by', $q);
        $this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

}