<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Survey extends CI_Controller {
    public function __construct() {
        parent::__construct();

        $this->load->model('survey_model');
    }

    public function index() {
        $params['parents'] = $this->survey_model->get_parents();

        $this->load->view('msi/survey', $params);
    }

}