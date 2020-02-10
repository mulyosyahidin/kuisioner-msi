<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Survey_model extends CI_Model {
    public function __construct()
    {
        parent::__construct();
    }

    public function get_parents()
    {
        $parents = $this->db->order_by('name', 'ASC')->get('msi_survey_parents')->result();

        return $parents;
    }

    public function profile($npm) {
        return $this->db->select('id, name')
            ->where('npm', $npm)
            ->get('students')
            ->row();
    }

    public function validate_npm($npm)
    {
        $check = $this->db->where('npm', $npm)
            ->get('students')
            ->num_rows();

        return ($check > 0) ? TRUE : FALSE;
    }

    public function is_parent_exist($base) {
        $check = $this->db->where('id', $base)
            ->get('msi_survey_parents')
            ->num_rows();

        return ($check > 0) ? TRUE : FALSE;
    }

    public function get_items($parent)
    {
        $get = $this->db->select('id, name')
            ->where('parent_id', $parent)
            ->order_by('name', 'ASC')
            ->get('msi_survey_items')
            ->result();

        return $get;
    }

    public function save_results($item) {
        return $this->db->insert_batch('msi_survey_results', $item);
    }
}