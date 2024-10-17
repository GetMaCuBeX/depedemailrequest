<?php
defined('BASEPATH') or exit('No direct script access allowed');



class Jab_action extends CI_Controller
{

	public function __consttruct()
	{
		parent::__construct();
	}

	public function get_all_data()
	{
		$data = $this->M_action->select_all_data();
		echo "<pre>";
		print_r($data);
	}


	public function update_data()
	{
		if ($this->M_action->update_table_data()) {
			echo "DATA IS UPDATED";
		};
	}
}
