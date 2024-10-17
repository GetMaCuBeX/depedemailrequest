<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_site extends CI_Model
{

	private $deped; // ANOTHER DATABASE

	public function __construct()
	{
		parent::__construct();
		$this->deped = $this->load->database("deped", TRUE); // LOAD ANOTHER DATABASE
	}


	function run_my_query()
	{
		return "RUN QUERY";
	}

	function insert_table_data($data)
	{
		return $this->db->insert("tbl_users", $data);
	}


	function insert_table_data_another_database($data)
	{
		return $this->deped->insert("tbl_users", $data);
	}
}
