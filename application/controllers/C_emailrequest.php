<?php

defined('BASEPATH') or exit('No direct script access allowed');

class C_emailrequest extends CI_Controller {

    private $titles;
    private $values;
//
    private $partials = 'jab/partials/';
//
    private $page_dashboard = 'jab/depedemail/request/page/dashboard';
    private $page_home = 'jab/depedemail/request/page/home';
    private $page_home_emp_header = 'jab/depedemail/request/page/home_emp_header';
    private $page_home_emp = 'jab/depedemail/request/page/home_emp';
    private $page_complete = 'jab/depedemail/request/page/complete';
    private $page_create = 'jab/depedemail/request/page/create';
    private $page_create_emp = 'jab/depedemail/request/page/create_emp';
    private $page_update = 'jab/depedemail/request/page/update';
    private $page_update_emp = 'jab/depedemail/request/page/update_emp';
    private $page_update_c = 'jab/depedemail/request/page/update_c';
//
    private $form_daterange = 'jab/depedemail/request/form/daterange';
//
    private $cntrl_email_home0 = 'c_emailrequest/request_emp';
    private $cntrl_email_home1 = 'c_emailrequest/request';
    private $cntrl_email_home2 = 'c_emailrequest/complete';
// ANNEX
    private $form_annexa = 'jab/coa/ppe/form/create_annexa';
    private $page_annex = 'jab/coa/ppe/page/annex';

    public function __construct() {
        parent::__construct();
        $this->values = [
            "PAGE" => 'REQUEST',
            "FOOTER" => '2024 - 2025 © Velonic theme by DAVOR',
            "EMAIL_ADDRESS" => 'davor.ict@deped.gov.ph',
            "WEB_PAGE" => 'https://depeddavor.com/home/',
            "REQUEST_COUNT_ISDONE_FALSE" => 0,
            "MAX_REQUEST_PER_USER" => 2,
            "DATE_FROM" => '',
            "DATE_TO" => ''
        ];
        $this->load->model('jb/M_emailrequest'); // LOAD MODEL
        $this->load->model('jb/M_array'); // LOAD ANOTHER MODEL
        
        
    }

// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
// TESTING FUNCTION
// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
    public function test() {
//        $rs = $this->M_array->result(); // ARRAY OF OBJECTS
//        $rs = $this->M_array->row(206); // SINGLE DATA OBJECT
//        $rs = $this->M_array->result_array(); // ALL OBJECTS CONVERTED INTO ARRAYS
//        $rs = $this->M_array->row_array(206);
//        echo "<pre>";
//        print_r($rs); 
        $this->_set_values();
        $this->load->view($this->partials . 'header', $this->values);
        $this->load->view($this->partials . 'topbar', $this->values);
        $this->load->view($this->partials . 'sidebar', $this->values);
        $this->load->view($this->page_annex);
        $this->load->view($this->partials . 'footer', $this->values);
    }

    public function forms_submit() {
//        $data = $this->input->post();
        $data = $this->input->get();
        print_r($data['email']);
    }

    public function request_by_daterange() {
        $this->_set_values();
        $rs['data'] = $this->M_emailrequest->_read_where_isdone_false();

        $this->load->view($this->partials . 'header', $this->values);
        $this->load->view($this->partials . 'topbar', $this->values);
        $this->load->view($this->partials . 'sidebar', $this->values);
        $this->load->view($this->form_daterange, $this->values);
        $this->load->view($this->partials . 'footer', $this->values);
    }

// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
// 𝐅𝐎𝐑𝐌𝐒 - 𝐏𝐎𝐒𝐓
// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
    private function _validate_dates($date_from, $date_to) {
        return (bool) strtotime($date_from) && (bool) strtotime($date_to);
    }

// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
// DASHBOARD - MAIN PAGE
// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
    public function dashboard() {
        $this->values["PAGE"] = "DASHBOARD";
        $this->_set_values();
        $rs['data'] = $this->M_emailrequest->_dashboard_query();
        $this->load->view($this->partials . 'header', $this->values);
        $this->load->view($this->partials . 'topbar', $this->values);
        $this->load->view($this->partials . 'sidebar', $this->values);
        $this->load->view($this->page_dashboard, $rs);
        $this->load->view($this->partials . 'footer', $this->values);
    }

// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
// 𝐒𝐈𝐃𝐄𝐁𝐀𝐑 - REQUEST
// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
    public function request() {
        if ($this->input->server('REQUEST_METHOD') === 'POST' && isset($_POST['date_range'])) { // IF FORM SUBMIT
            $date_from = $this->input->post('date_from');
            $date_to = $this->input->post('date_to');
// Validate the date inputs
            if (!$this->_validate_dates($date_from, $date_to)) {
// Handle invalid dates
// $response = ['status' => 'error', 'message' => 'Invalid date format.'];
// echo json_encode($response);
// return;
            }

// Call the model method to get the data
            $rs['data'] = $this->M_emailrequest->_read_where_isdone_false_daterange($date_from, $date_to);
            $this->values = [
                "DATE_FROM" => $date_from,
                "DATE_TO" => $date_to
            ];

// Return the response
// echo json_encode(['status' => 'success', 'data' => $rs]);
            $this->_set_values();
            $this->load->view($this->partials . 'header', $this->values);
            $this->load->view($this->partials . 'topbar', $this->values);
            $this->load->view($this->partials . 'sidebar', $this->values);
            $this->load->view($this->form_daterange, $this->values);
            $this->load->view($this->page_home, $rs);
            $this->load->view($this->partials . 'footer', $this->values);
        } else {
            $this->_set_values();
            $rs['data'] = $this->M_emailrequest->_read_where_isdone_false();

            $this->load->view($this->partials . 'header', $this->values);
            $this->load->view($this->partials . 'topbar', $this->values);
            $this->load->view($this->partials . 'sidebar', $this->values);
            $this->load->view($this->form_daterange, $this->values);
            $this->load->view($this->page_home, $rs);
            $this->load->view($this->partials . 'footer', $this->values);
        }
    }

    public function request_emp() {
        if (isset($_SESSION['session_empid'])) {
            $static_empID = $_SESSION['session_empid']; // SESSION ID
            // $empID = $this->input->post('empID');
            $data['empID'] = $static_empID; // Assuming $empID is defined

            $this->_set_values();
            $rs['data'] = $this->M_emailrequest->_read_where_isdone_false_empID($static_empID);

            $this->load->view($this->partials . 'header', $this->values);
            $this->load->view($this->partials . 'topbar', $this->values);
            $this->load->view($this->partials . 'sidebar', $this->values);
            $this->load->view($this->page_home_emp_header, $data);
            $this->load->view($this->page_home_emp, $rs);
            $this->load->view($this->partials . 'footer', $this->values);
        } else {
            echo "SESSION ID IS NOT SET";
        }
    }

// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
// 𝐒𝐈𝐃𝐄𝐁𝐀𝐑 - COMPLETE
// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
    public function complete() {
        $this->_set_values();

        $rs['data'] = $this->M_emailrequest->_read_where_isdone_true();

        $this->load->view($this->partials . 'header', $this->values);
        $this->load->view($this->partials . 'topbar', $this->values);
        $this->load->view($this->partials . 'sidebar', $this->values);
        $this->load->view($this->page_complete, $rs);
        $this->load->view($this->partials . 'footer', $this->values);
    }

// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
// 𝐂𝐑𝐄𝐀𝐓𝐄
// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
    public function create($idnumber = "") {
        $this->_set_values();
        $this->values["PAGE"] = "CREATE";

        if (isset($_POST['save'])) {
// FORM_VALIDATION
            $this->form_validation->set_rules("concern_message", "Message", 'required|max_length[2]');
            $this->form_validation->set_rules("personal_email", "Personal Email", "required");
            $this->form_validation->set_rules("concern_message", "Personal Message", "required");
            if ($this->input->post('concern') != 'CREATE' && $this->input->post('concern') != 'OTHER') {
                $this->form_validation->set_rules("deped_email", "Deped Email", "required");
            }
            if ($this->form_validation->run() == FALSE) {
// WE HAVE SOME ERRORS
// echo validation_errors();
// RELOAD THE PAGE
                $this->load->view($this->partials . 'header', $this->values);
                $this->load->view($this->partials . 'topbar', $this->values);
                $this->load->view($this->partials . 'sidebar', $this->values);
                $rs['data'] = $this->M_emailrequest->_read_data_from_employee($idnumber);
                $this->load->view($this->page_create, $rs);
                $this->load->view($this->partials . 'footer', $this->values);
            } else {
// SUBMITTED FORM
                $data = [
                    'mis_emp_table_id' => $this->input->post('mis_emp_table_id'),
                    'school_id' => $this->input->post('school_id'),
                    'first_name' => $this->input->post('first_name'),
                    'last_name' => $this->input->post('last_name'),
                    'concern' => $this->input->post('concern'),
                    'concern_message' => $this->input->post('concern_message'),
                    'plantilla' => $this->input->post('plantilla'),
                    'personal_email' => $this->input->post('personal_email'),
                    'contact_number' => $this->input->post('contact_number'),
                    'deped_email' => $this->input->post('deped_email')
                ];

                $rs = $this->M_emailrequest->_create($data);
                redirect($this->cntrl_email_home1);
            }
        } else {

            $this->load->view($this->partials . 'header', $this->values);
            $this->load->view($this->partials . 'topbar', $this->values);
            $this->load->view($this->partials . 'sidebar', $this->values);

            $rs['data'] = $this->M_emailrequest->_read_data_from_employee($idnumber);
            $this->load->view($this->page_create, $rs);
            $this->load->view($this->partials . 'footer', $this->values);
        }


        if (isset($_POST['cancel'])) {
            redirect($this->cntrl_email_home1);
        }
    }

    public function create_emp() {
         if (isset($_SESSION['session_empid'])) {
        $this->_set_values();
        $this->values["PAGE"] = "CREATE";

        if (isset($_POST['save'])) {
// FORM_VALIDATION
            $this->form_validation->set_rules("concern_message", "Message", 'required|max_length[2]');
//            $this->form_validation->set_rules("personal_email", "Personal Email", "required");
            $this->form_validation->set_rules("concern_message", "Personal Message", "required");
            if ($this->input->post('concern') != 'CREATE' && $this->input->post('concern') != 'OTHER') {
                $this->form_validation->set_rules("deped_email", "Deped Email", "required");
            }
            if ($this->form_validation->run() == FALSE) {
// WE HAVE SOME ERRORS
// echo validation_errors();
// RELOAD THE PAGE
                $this->load->view($this->partials . 'header', $this->values);
                $this->load->view($this->partials . 'topbar', $this->values);
                $this->load->view($this->partials . 'sidebar', $this->values);
                $rs['data'] = $this->M_emailrequest->_read_data_from_employee($_SESSION['session_empid']);
                $this->load->view($this->page_create_emp, $rs);
                $this->load->view($this->partials . 'footer', $this->values);
            } else {
// SUBMITTED FORM
                $data = [
                    'mis_emp_table_id' => $this->input->post('mis_emp_table_id'),
                    'school_id' => $this->input->post('school_id'),
                    'first_name' => $this->input->post('first_name'),
                    'last_name' => $this->input->post('last_name'),
                    'concern' => $this->input->post('concern'),
                    'concern_message' => $this->input->post('concern_message'),
                    'plantilla' => $this->input->post('plantilla'),
//                    'personal_email' => $this->input->post('personal_email'),
                    'contact_number' => $this->input->post('contact_number'),
                    'deped_email' => $this->input->post('deped_email')
                ];

                $rs = $this->M_emailrequest->_create($data);
                redirect($this->cntrl_email_home0);
            }
        } 
        
        else if (isset($_POST['create'])) {

            $this->load->view($this->partials . 'header', $this->values);
            $this->load->view($this->partials . 'topbar', $this->values);
            $this->load->view($this->partials . 'sidebar', $this->values);

            $rs['data'] = $this->M_emailrequest->_read_data_from_employee($_SESSION['session_empid']);
            $this->load->view($this->page_create_emp, $rs);
            $this->load->view($this->partials . 'footer', $this->values);
        }
        else {
       
        }

//        if (isset($_POST['cancel'])) {
//            redirect($this->cntrl_email_home1);
//        }
        
    } else {
            echo "SESSION ID IS NOT SET";
        }
    }

// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
// 𝐑𝐄𝐀𝐃
// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
    public function read() {
//        $rs['data'] = $this->M_emailrequest->_read_all(); // CALL MODEL FUNCTION
//        echo "<pre>";
//        print_r($rs);
    }

    public function count_user_request() {
//        $count = $this->M_emailrequest->_count_request_isdone_false(0); // CALL MODEL FUNCTION
//        echo $count;
    }

    public function count_all_request() {
//        $count = $this->M_emailrequest->_count_all_request_isdone_false(); // CALL MODEL FUNCTION
//        echo $count;
    }

    public function updaterequest() {
        $this->_set_values();
        $this->values["PAGE"] = "UPDATE";
        if (isset($_POST['update_id'])) {
            $id = $this->input->post('update_id');
            $rs['data'] = $this->M_emailrequest->_read_where_id($id);

            $this->load->view($this->partials . 'header', $this->values);
            $this->load->view($this->partials . 'topbar', $this->values);
            $this->load->view($this->partials . 'sidebar', $this->values);
            $this->load->view($this->page_update, $rs);
            $this->load->view($this->partials . 'footer', $this->values);
        } else {
// HANDLE CASES WHERE FORM IS NOT SUBMITTED VIA POST
// redirect($this->cntrl_email_home1);
        }
    }

    public function updaterequest_emp() {
        $this->_set_values();
        $this->values["PAGE"] = "UPDATE";
        if (isset($_POST['update_id'])) {
            $id = $this->input->post('update_id');
            $rs['data'] = $this->M_emailrequest->_read_where_id($id);

            $this->load->view($this->partials . 'header', $this->values);
            $this->load->view($this->partials . 'topbar', $this->values);
            $this->load->view($this->partials . 'sidebar', $this->values);
            $this->load->view($this->page_update_emp, $rs);
            $this->load->view($this->partials . 'footer', $this->values);
        } else {
// HANDLE CASES WHERE FORM IS NOT SUBMITTED VIA POST
// redirect($this->cntrl_email_home1);
        }
    }

    public function updaterequest_c() {
        $this->_set_values();
        $this->values["PAGE"] = "UPDATE";
        if (isset($_POST['update_id'])) {
            $id = $this->input->post('update_id');
            $rs['data'] = $this->M_emailrequest->_read_where_id($id);

            $this->load->view($this->partials . 'header', $this->values);
            $this->load->view($this->partials . 'topbar', $this->values);
            $this->load->view($this->partials . 'sidebar', $this->values);
            $this->load->view($this->page_update_c, $rs);
            $this->load->view($this->partials . 'footer', $this->values);
        } else {
// HANDLE CASES WHERE FORM IS NOT SUBMITTED VIA POST
// redirect($this->cntrl_email_home1);
        }
    }

// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
// 𝐔𝐏𝐃𝐀𝐓𝐄
// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
    public function update() {
// $id = $this->input->get('id');
// $response_date =  $this->input->post('response_date');
// $status = $this->input->post('status');
// $processed_by = $this->input->post('processed_by');
// $response_message = $this->input->post('response_message');
// $data = array(
// 	'response_date' => $response_date,
// 	'status'   => $status,
// 	'processed_by' => $processed_by,
// 	'response_message' => $response_message
// );
// $r = $this->M_emailrequest->_update($id, $data);
// echo $r;
// $rs['data'] = $this->M_emailrequest->_read_where_isdone_false(); // CALL MODEL FUNCTION
// echo "<pre>";
// print_r($rs);
    }

    public function setisdonetrue() {
        if (isset($_POST['update_id'])) {
            $id = $this->input->post('update_id');

            $data = array(
                'is_done' => 1
            );
            $r = $this->M_emailrequest->_update_isdone($id, $data);
            if ($r) {
                redirect($this->cntrl_email_home1); // UPDATE WAS SUCCESSFUL
            }
        }
    }

    public function setisdonefalse() {
        if (isset($_POST['update_id'])) {
            $id = $this->input->post('update_id');

            $data = array(
                'is_done' => 0
            );
            $r = $this->M_emailrequest->_update_isdone($id, $data);
            if ($r) {
                redirect($this->cntrl_email_home2); // UPDATE WAS SUCCESSFUL
            }
        }
    }

    public function setisdeletetrue() {
        if (isset($_POST['update_id'])) {
            $id = $this->input->post('update_id');

            $data = array(
                'is_delete' => 1
            );
            $r = $this->M_emailrequest->_update_isdelete($id, $data);
            if ($r) {
                echo "UPDATE WAS SUCCESSFUL";
// redirect($this->cntrl_email_home1); // UPDATE WAS SUCCESSFUL
            }
        }
    }

    public function save_updaterequest_emp() {
        if (isset($_POST['save_updaterequest'])) {
            $id = $this->input->post('id'); // RETRIEVE THE ID FROM THE POST DATA 

            if ($id) {
                $response_date = $this->input->post('response_date');
                $status = $this->input->post('status');
                $processed_by = $this->input->post('processed_by');
                $response_message = $this->input->post('response_message');

                $data = array(
                    'response_date' => $response_date,
                    'status' => $status,
                    'processed_by' => $processed_by,
                    'response_message' => $response_message
                );
                $r = $this->M_emailrequest->_update_where($id, $data);

                redirect($this->cntrl_email_home1); // UPDATE WAS SUCCESSFUL
            } else {
// Handle the case where no ID was passed
                show_error('ID not provided.');
            }
        }

        if (isset($_POST['cancel_updaterequest'])) {
            redirect($this->cntrl_email_home1);
        }
    }

    public function save_updaterequest() {
        if (isset($_POST['save_updaterequest'])) {
            $id = $this->input->post('id'); // RETRIEVE THE ID FROM THE POST DATA 

            if ($id) {
                $response_date = $this->input->post('response_date');
                $status = $this->input->post('status');
                $processed_by = $this->input->post('processed_by');
                $response_message = $this->input->post('response_message');

                $data = array(
                    'response_date' => $response_date,
                    'status' => $status,
                    'processed_by' => $processed_by,
                    'response_message' => $response_message
                );
                $r = $this->M_emailrequest->_update_where($id, $data);

                redirect($this->cntrl_email_home1); // UPDATE WAS SUCCESSFUL
            } else {
// Handle the case where no ID was passed
                show_error('ID not provided.');
            }
        }

        if (isset($_POST['cancel_updaterequest'])) {
            redirect($this->cntrl_email_home1);
        }
    }

    public function save_updaterequest_c() {
        if (isset($_POST['save_updaterequest'])) {
            $id = $this->input->post('id'); // RETRIEVE THE ID FROM THE POST DATA 

            if ($id) {
                $response_date = $this->input->post('response_date');
                $status = $this->input->post('status');
                $processed_by = $this->input->post('processed_by');
                $response_message = $this->input->post('response_message');

                $data = array(
                    'response_date' => $response_date,
                    'status' => $status,
                    'processed_by' => $processed_by,
                    'response_message' => $response_message
                );
                $r = $this->M_emailrequest->_update_where($id, $data);
                redirect($this->cntrl_email_home2); // UPDATE WAS SUCCESSFUL
            } else {
// Handle the case where no ID was passed
                show_error('ID not provided.');
            }
        }

        if (isset($_POST['cancel_updaterequest'])) {
            redirect($this->cntrl_email_home2);
        }
    }

// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
// 𝐃𝐄𝐋𝐄𝐓𝐄
// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
    public function delete() {
// $rs = $this->M_emailrequest->_delete_where(140); // CALL MODEL FUNCTION
// echo "<pre>";
// print_r($rs);
    }

    public function deleterequest() {
        if (isset($_POST['delete_id'])) {
            $id = $this->input->post('delete_id');
            $rs = $this->M_emailrequest->_delete_where($id); // CALL MODEL FUNCTION

            if ($rs) {
                redirect($this->cntrl_email_home1); // DELETION WAS SUCCESSFUL
            } else {
                echo "FAILED TO DELETE THE ROW.";  // Deletion failed
            }
        }
    }

    public function deleterequest_c() {
        if (isset($_POST['delete_id'])) {
            $id = $this->input->post('delete_id');
            $rs = $this->M_emailrequest->_delete_where($id); // CALL MODEL FUNCTION

            if ($rs) {
                redirect($this->cntrl_email_home2); // DELETION WAS SUCCESSFUL
            } else {
                echo "FAILED TO DELETE THE ROW.";  // Deletion failed
            }
        }
    }

// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
// LOAD PARTIALS
// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
    public function _load_page($page, $data = "", $values = "") {
        $this->load->view($this->partials . 'header', $values);
        $this->load->view($this->partials . 'topbar', $values);
        $this->load->view($this->partials . 'sidebar', $values);
        $this->load->view($page, $data);
        $this->load->view($this->partials . 'footer', $values);
    }

// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
// SET VALUES
// ------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------
    public function _set_values() {
        $count = $this->M_emailrequest->_count_all_request_isdone_false();
        $this->values["REQUEST_COUNT_ISDONE_FALSE"] = $count;
    }
    
    
    public function logout() {
        // Destroy the session
        $this->session->sess_destroy();
//        redirect('yourcontroller/index'); // Redirect after logout
    }
}
