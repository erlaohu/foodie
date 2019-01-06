<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sentence_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
        $this->separator = ', ';
	}

	public function select($limit, $offset)
	{

        $this->db->where('delete_flg', '0');
        $this->db->order_by('sort', 'asc');

		$res = $this->db->get('TBL_SENTENCE', $limit, $offset);

        return $res->result_array();
	}
}