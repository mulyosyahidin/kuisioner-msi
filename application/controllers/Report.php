<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends CI_Controller {
    public function __construct()
    {
        parent::__construct();

        $this->load->model('report_model', 'report');
    }

    public function index()
    {
        $params['title'] = 'Hasil Survey MSI 2020';
        $reports['reports'] = $this->report->reports();

        $this->load->view('adminlte/header', $params);
        $this->load->view('adminlte/report', $reports);
        $this->load->view('adminlte/footer');
    }

    public function overview()
    {
        $params['title'] = 'Ringkasan Hasil Survey';

        $overview['total']['base'] = $this->report->total_base();
        $overview['total']['items'] = $this->report->total_language();
        $overview['total']['students'] = $this->report->total_students();
        $overview['total']['votes'] = $this->report->total_votes();
        
        $stats['bases'] = $this->report->base_stats();
        $stats['all_language'] = $this->report->all_language();
        $stats['desktop'] = $this->report->desktop();
        $stats['mobiles'] = $this->report->mobiles();
        $stats['web'] = $this->report->web();

        $this->load->view('adminlte/header', $params);
        $this->load->view('adminlte/overview', $overview);
        $this->load->view('adminlte/footer', $stats);
    }
}