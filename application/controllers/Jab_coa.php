<?php
defined('BASEPATH') or exit('No direct script access allowed');



class Jab_coa extends CI_Controller
{

	private $partials = 'jab/partials/';
	private $page_home = 'jab/coa/ppe/page/home';
	private $page_ppe = 'jab/coa/ppe/page/ppe';

	private $cntrl_coa_home = 'jab_coa/home';

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function home()
	{
		$data['data'] = $this->M_coa->getAllRecords();
		$this->load_data($this->page_home, $data);
	}


	public function ppe()
	{
		$data['data'] = $this->M_coa->getAllRecords();
		$this->load_data($this->page_ppe, $data);
	}


	public function load($page)
	{
		$this->load->view($this->partials . 'header');
		$this->load->view($this->partials . 'topbar');
		$this->load->view($this->partials . 'sidebar');
		$this->load->view($page);
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
