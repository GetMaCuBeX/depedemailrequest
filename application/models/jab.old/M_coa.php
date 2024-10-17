<?php

defined('BASEPATH') or exit('No direct script access allowed');


class M_coa extends CI_Model
{


	public function getAllRecords()
	{
		// $query = $this->db->order_by('created_at', 'DSC')->get('jab_depedemailrequest');
		// return $query->result(); // RETURN ALL RESULTSET
	}


	public function displayrecordsById($id)
	{
		// $this->db->where('id', $id);
		// $query = $this->db->get('jab_depedemailrequest');
		// return $query->row(); // ONLY 1 ROW RETURN 
	}
}
