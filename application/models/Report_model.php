<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report_model extends CI_Model {
    public function __construct()
    {
        parent::__construct();
    }

    public function reports()
    {
        return $this->db->query("SELECT res.id, st.name, it.name as language, p.name AS parent, res.input_time, res.input_device
            FROM msi_survey_results AS res
            JOIN students st ON st.npm = res.student
            JOIN msi_survey_items it ON it.id = res.item_id
            JOIN msi_survey_parents p ON p.id = it.parent_id
            ORDER BY res.id ASC")->result();
    }

    public function total_base()
    {
        return $this->db->get('msi_survey_parents')->num_rows();
    }

    public function total_language()
    {
        return $this->db->get('msi_survey_items')->num_rows();
    }

    public function total_students()
    {
        return $this->db->get('students')->num_rows();
    }

    public function total_votes()
    {
        return $this->db->get('msi_survey_results')->num_rows();
    }

    public function base_stats()
    {
        return $this->db->query("SELECT p.name, COUNT(*) AS jumlah
            FROM msi_survey_results AS res
            JOIN students st ON st.npm = res.student
            JOIN msi_survey_items it ON it.id = res.item_id
            JOIN msi_survey_parents p ON p.id = it.parent_id
            GROUP BY p.name")->result();
    }

    public function all_language()
    {
        return $this->db->query("SELECT p.name AS parent, it.name, COUNT(it.name) AS jumlah
            FROM msi_survey_results AS res
            JOIN students st ON st.npm = res.student
            JOIN msi_survey_items it ON it.id = res.item_id
            JOIN msi_survey_parents p ON p.id = it.parent_id
            GROUP BY NAME")->result();
    }

    public function desktop()
    {
        return $this->db->query("SELECT it.name, COUNT(it.name) AS jumlah
            FROM msi_survey_results AS res
            JOIN students st ON st.npm = res.student
            JOIN msi_survey_items it ON it.id = res.item_id
            JOIN msi_survey_parents p ON p.id = it.parent_id
            WHERE p.id = '3'
            GROUP BY name")->result();
    }

    public function mobiles()
    {
        return $this->db->query("SELECT it.name, COUNT(it.name) AS jumlah
            FROM msi_survey_results AS res
            JOIN students st ON st.npm = res.student
            JOIN msi_survey_items it ON it.id = res.item_id
            JOIN msi_survey_parents p ON p.id = it.parent_id
            WHERE p.id = '2'
            GROUP BY name")->result();
    }

    public function web()
    {
        return $this->db->query("SELECT it.name, COUNT(it.name) AS jumlah
            FROM msi_survey_results AS res
            JOIN students st ON st.npm = res.student
            JOIN msi_survey_items it ON it.id = res.item_id
            JOIN msi_survey_parents p ON p.id = it.parent_id
            WHERE p.id = '1'
            GROUP BY name")->result();
    }
}