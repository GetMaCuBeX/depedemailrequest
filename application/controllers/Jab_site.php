<?php
defined('BASEPATH') or exit('No direct script access allowed');



class Jab_site extends CI_Controller
{

	private $table_1 = 'tbl_users';

	private $partials = 'jab/partials/';
	private $page_home = 'jab/service/tutorial/page/home';
	private $page_service = 'jab/service/tutorial/page/service';
	private $page_pass_var = 'jab/service/tutorial/page/pass_var';


	public function __construct()
	{
		parent::__construct();
	}

	public function home()
	{
		$data['data'] = $this->M_site->run_my_query();
		$this->load_data($this->page_home, $data);
	}

	public function insert_data_intotable()
	{
		$data = array(
			"name" => "Joel",
			"email" => "joel.benaldo.1991@gmail.com",
			"phone_no" => "09266761631",
		);
		$this->M_site->insert_table_data($data);
		$this->M_site->insert_table_data_another_database($data);
	}

	public function service($id = "", $name = "") // OPTIONAL VALUE =""
	{
		// echo "SERVICE ID: " . $id . " SERVICE NAME: " . $name;
		$this->load($this->page_service);
	}

	public function product($name)
	{
		echo "PRODUCT NAME: " . $name;
	}

	public function pass_var()
	{
		$message = $this->M_site->run_my_query();
		$this->insert_data_intotable();
		// $info_array = array(
		// 	'organization_name' => 'Online Web Tutor',
		// 	'author_name' => 'Joel A. Benaldo',
		// 	'email' => 'joel.benaldo.1991@gmail.com'
		// );
		// $this->load($this->page_pass_var, $info_array);
		//  OR
		// $info_array['organization_name'] = "Online Web Tutor";
		// $info_array['author_name']  = "Joel A. Benaldo";
		// $info_array['email'] = "joel.benaldo.1991@gmail.com";
		// $this->load($this->page_pass_var, $info_array);
		// OR
		$this->load($this->page_pass_var, array(
			'organization_name' => 'Online Web Tutor',
			'author_name' => 'Joel A. Benaldo',
			'email' => 'joel.benaldo.1991@gmail.com',
			'message' => $message
		));
	}













	public function load($page, $info = "")
	{
		$this->load->view($this->partials . 'header');
		$this->load->view($this->partials . 'topbar');
		$this->load->view($this->partials . 'sidebar');
		$this->load->view($page, $info);
		$this->load->view($this->partials . 'footer');
	}
	public function load_data($page, $data)
	{
		$this->load->view($this->partials . 'header');
		$this->load->view($this->partials . 'topbar');
		$this->load->view($this->partials . 'sidebar');
		$this->load->view($page, $data);
		$this->load->view($this->partials . 'footer');
	}
}
