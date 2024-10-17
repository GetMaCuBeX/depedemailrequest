<?php
defined('BASEPATH') or exit('No direct script access allowed');
class M_depedemailrequest extends CI_Model
{


	public function getAllRecords()
	{
		$this->db->where('is_done !=', 1);
		$this->db->or_where('is_done IS NULL'); // Add condition for NULL/ Add your condition here
		$query = $this->db->order_by('id', 'DESC')->get('jab_depedemailrequest'); 
		return $query->result(); // RETURN ALL RESULTSET
	}


	public function displayrecordsById($id)
	{
		$this->db->where('id', $id);
		$query = $this->db->get('jab_depedemailrequest');
		return $query->row(); // ONLY 1 ROW RETURN 
	}


	public function deleteByID($id)
	{
		// Use the where clause to specify the row to delete
		$this->db->where('id', $id);

		// Execute the delete operation
		return $this->db->delete('jab_depedemailrequest');
	}

public function markDoneRequest($id, $new_data){

	$this->db->where('id', $id);
	$this->db->update('jab_depedemailrequest', $new_data);
}


}