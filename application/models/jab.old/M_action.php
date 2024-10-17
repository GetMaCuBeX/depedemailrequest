<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_action extends CI_Model
{

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}


	public function select_all_data()
	{
		// $this->db->select("*");
		// $query = $this->db->get("tbl_users");
		// return $result =  $query->result();
		// OR
		// $this->db->select("name,email");
		// $this->db->from("tbl_users");
		// $query = $this->db->get();
		// return $result = $query->result();
		// OR
		$this->db->select("*");
		$this->db->from("tbl_users");
		// $this->db->where("email", "joel.benaldo.1991@gmail.com");
		$this->db->where(array(
			"id" => 1,
			"email" => "joel.benaldo.1991@gmail.com"
		));
		$query = $this->db->get();
		return $result = $query->result();
	}


	public function update_table_data()
	{
		$data = array(
			"name" => "New name",
			"email" => "new email",
			"phone_no" => "new no"
		);

		$this->db->where("id", 1);
		$this->db->update("tbl_users", $data);
		return True;
	}
}
