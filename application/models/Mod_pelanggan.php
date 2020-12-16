<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Mod_pelanggan extends CI_Model {

  public function __construct()
  {
    parent::__construct();
  }
  public function get($id = null, $limit = 5, $offset = 0)
  {
    if ($id === null) {
      return $this->db->get('tb_pelanggan', $limit, $offset);
    } else {
      return $this->db->get_where('tb_pelanggan', ['id_pelanggan' => $id])->result_array();
    }
  }
  
  public function count()
  {
    return $this->db->get('tb_pelanggan')->num_rows();
  }

  public function add($data)
  {
    try{
      $this->db->insert('tb_pelanggan', $data);
      $error = $this->db->error();
      if (!empty($error['code'])) {
        throw new Exception('Terjadi Kesalahan :' . $error['message']);
        return false;
      }
      return ['status' => true, 'data' => $this->db->affected_rows()];
    } catch (Exception $ex) {
      return ['status' => false, 'msg' => $ex->getMessage()];
    }
  }
  public function update($id, $data)
  {
    try{
      $this->db->update('tb_pelanggan', $data, ['id_pelanggan' => $id]);
      $error = $this->db->error();
      if (!empty($error['code'])) {
        throw new Exception('Terjadi Kesalahan :' . $error['message']);
        return false;
      }
      return ['status' => true, 'data' => $this->db->affected_rows()];
    } catch (Exception $ex) {
      return ['status' => false, 'msg' => $ex->getMessage()];
    }
  }

  public function delete($id)
  {
    try{
      $this->db->delete('tb_pelanggan',['id_pelanggan' => $id]);
      $error = $this->db->error();
      if (!empty($error['code'])) {
        throw new Exception('Terjadi Kesalahan :' . $error['message']);
        return false;
      }
      return ['status' => true, 'data' => $this->db->affected_rows()];
    } catch (Exception $ex) {
      return ['status' => false, 'msg' => $ex->getMessage()];
    }
  }
}