<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ajax extends CI_Controller {
    public function __construct() {
        parent::__construct();

        $this->load->model('survey_model');
    }

    public function validate_npm()
    {
        if ( ! $this->input->is_ajax_request()) {
            return $this->output->set_content_type('application/json')
                ->set_output(json_encode(array('errors' => TRUE, 'messages' => 'Halaman ini hanya dapat diakses dengan AJAX')));
        }
        
        $npm = $this->input->post('npm');
        $is_exist = $this->survey_model->validate_npm($npm);
        $profile = $this->survey_model->profile($npm);

        $response = array(
            'success' => TRUE,
            'is_exist' => $is_exist,
            'message' => ($is_exist) ? $profile->name : 'Mahasiswa tidak ada'
        );
        
        return $this->output->set_content_type('application/json')
            ->set_output(json_encode($response));
    }

    public function items() {
        if ( ! $this->input->is_ajax_request()) {
            return $this->output->set_content_type('application/json')
                ->set_output(json_encode(array('errors' => TRUE, 'messages' => 'Halaman ini hanya dapat diakses dengan AJAX')));
        }

        $base = $this->input->post('base');

        if ( $this->survey_model->is_parent_exist($base)) {
            $items = $this->survey_model->get_items($base);

            $response = array(
                'success' => TRUE,
                'items' => $items
            );
        }

        return $this->output->set_content_type('application/json')
            ->set_output(json_encode($response));
    }

    public function save_results() {
        if ( ! $this->input->is_ajax_request()) {
            return $this->output->set_content_type('application/json')
                ->set_output(json_encode(array('errors' => TRUE, 'messages' => 'Halaman ini hanya dapat diakses dengan AJAX')));
        }

        $this->load->library('user_agent');
        $ua = $this->agent->agent_string();
        $date = date('Y-m-d H:i:s');

        $npm = $this->input->post('npm');
        $items = $this->input->post('items');

        if ( ! empty($npm) && (strlen($npm) == 9) && is_array($items) && count($items) > 0) {
            $save = array();
            $n = 0;

            foreach ($items as $item) {
                $save[$n]['student'] = strtoupper($npm);
                $save[$n]['item_id'] = $item;
                $save[$n]['input_time'] = $date;
                $save[$n]['input_device'] = $ua;

                $n++;
            }

            $this->survey_model->save_results($save);

            $response = array(
                'success' => TRUE,
                'items' => $save
            );
        }
        else {
            $response = array(
                'errors' => TRUE,
                'message' => 'Harap pilih setidaknya satu'
            );
        }

        return $this->output->set_content_type('application/json')
            ->set_output(json_encode($response));
    }

}