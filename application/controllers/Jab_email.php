<?php
defined('BASEPATH') or exit('No direct script access allowed');



class Jab_email extends CI_Controller
{

	private $table_request = 'jab_depedemailrequest';

	private $partials = 'jab/partials/';
	private $page_home = 'jab/depedemail/request/page/home';
	private $page_create = 'jab/depedemail/request/page/create';
	private $page_update = 'jab/depedemail/request/page/update';

	private $cntrl_email_home = 'jab_email/home';

	public function __construct()
	{
		//call CodeIgniter's default Constructor
		parent::__construct();

		//load database library manually
		$this->load->database();

		//The URL Helper file contains functions that assist in working with URLs.
		// $this->load->helper('url');

		//load Model, 
		//config->autoload.php
		//$autoload['model'] = array('Model_depedemailrequest');
		// $this->load->model('DepedEmail_Model');
	}
	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */
	public function home()
	{
		// if (! file_exists(APPPATH . 'views/request/email/page/home.php')) {show_404();}
		$data['data'] = $this->M_depedemailrequest->getAllRecords();
		$this->load_data($this->page_home, $data);
	}

	public function create()
	{
		$this->load($this->page_create);
		if ($this->input->post('save') || isset($_POST['save'])) {
			$data = [
				'mis_emp_table_id' => $this->input->post('mis_emp_table_id'),
				'concern' => $this->input->post('concern'),
				'concern_message' => $this->input->post('concern_message'),
				'personal_email' => $this->input->post('personal_email'),
				'deped_email' => $this->input->post('deped_email')
			];
			$this->db->insert($this->table_request, $data);

			if ($this->db->affected_rows() > 0) {
				// echo "Records Saved Successfully";
				redirect($this->cntrl_email_home);
			} else {
				// echo "Failed to Saved Records";
			}
		}
		if ($this->input->post('cancel') || isset($_POST['cancel'])) {
			redirect($this->cntrl_email_home);
		}
	}



	public function update()
	{
		$id = $this->input->get('id');
		$data['data'] = $this->M_depedemailrequest->displayrecordsById($id);
		$this->load_data($this->page_update, $data);

		if ($this->input->post('update')) {
			$this->updateById($id);
		}
		if ($this->input->post('cancel')) {
			redirect($this->cntrl_email_home);
		}

		// if ($this->input->post('update_id')) {
		// 	$id = $this->input->post('update_id');
		// 	$data['data'] = $this->M_depedemailrequest->displayrecordsById($id);
		// 	$this->load_data($this->page_update, $data);
		// } else {
		// 	redirect($this->cntrl_email_home);
		// }
	}

	public function updateById($id)
	{
		$response_date =  $this->input->post('response_date');
		$status = $this->input->post('status');
		$processed_by = $this->input->post('processed_by');
		$response_message = $this->input->post('response_message');


		$data = array(
			'response_date' => $response_date,
			'status'   => $status,
			'processed_by' => $processed_by,
			'response_message' => $response_message
		);
		$this->db->where('id', $id);
		$this->db->update('jab_depedemailrequest', $data);
		redirect($this->cntrl_email_home);
	}

	public function updaterequest()
	{
		if ($this->input->post('update_id')) {
			$id = $this->input->post('update_id');
			$data['data'] = $this->M_depedemailrequest->displayrecordsById($id);

			$this->load_data($this->page_update, $data);
		} else {
			// Handle cases where form is not submitted via POST
			// redirect($this->cntrl_email_home);
		}
	}

	public function save_updaterequest()
	{
		if ($this->input->post('save_updaterequest') || isset($_POST['save_updaterequest'])) {
			// Retrieve the ID from the POST data
			$id = $this->input->post('id');
			echo $id;

			if ($id) {
				$response_date =  $this->input->post('response_date');
				$status = $this->input->post('status');
				$processed_by = $this->input->post('processed_by');
				$response_message = $this->input->post('response_message');
		
		
				$data = array(
					'response_date' => $response_date,
					'status'   => $status,
					'processed_by' => $processed_by,
					'response_message' => $response_message
				);
				$this->db->where('id', $id);
				$this->db->update('jab_depedemailrequest', $data);
				redirect($this->cntrl_email_home);
			} else {
				// Handle the case where no ID was passed
				show_error('ID not provided.');
			}
		} else if(isset($_POST['cancel_updaterequest'])){
			redirect($this->cntrl_email_home);
		}else if($this->input->post('delete_updaterequest')){
			$id = $this->input->post('id');
			$is_success = $this->M_depedemailrequest->deleteByID($id);
			if ($is_success) {
				// Deletion was successful
				redirect($this->cntrl_email_home);
			} else {
				// Deletion failed
				echo "Failed to delete the row.";
			}
		}
		
		else {
			// Handle invalid form submission
			show_error('Invalid submission.');
		}
	}

	
	public function delete()
	{
		if ($this->input->post('delete_updaterequest') ) {
			$id = $this->input->post('delete_updaterequest');
			$is_success = $this->M_depedemailrequest->deleteByID($id);
			if ($is_success) {
				// Deletion was successful
				redirect($this->cntrl_email_home);
			} else {
				// Deletion failed
				echo "Failed to delete the row.";
			}
		} else {
			// redirect($this->cntrl_email_home);
		}
	}
	
	public function markdonerequest()
	{
		if ($this->input->post('markdonerequest') ) {
			$id = $this->input->post('markdonerequest');
			$data = array(
				'is_done' => 1
			);
			$is_success = $this->M_depedemailrequest->markDoneRequest($id,$data);
			if ($is_success) {
				// Deletion was successful
				redirect($this->cntrl_email_home);
			} else {
				// Deletion failed
				echo "Failed to delete the row.";
			}	
			





			redirect($this->cntrl_email_home);
			if ($is_success) {
				// Deletion was successful
				redirect($this->cntrl_email_home);
			} else {
				// Deletion failed
				echo "Failed to delete the row.";
			}
		} else {
			// redirect($this->cntrl_email_home);
		}
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
