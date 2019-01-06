<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Food_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
        $this->separator = ', ';
	}

	public function count($area, $type, $consume)
	{
		if($area != '全部') {
            $area = explode($this->separator, $area);
            $area_where = "( ";
            $index = 0;
            foreach ($area as $value) {
                $area_where = $area_where . "(AREA LIKE '%" . $value ."%')";
                if ($index == count($area) - 1) {
                    $area_where = $area_where . " )";
                } else {
                    $area_where = $area_where . " OR ";
                }
                $index++;
            }
            $this->db->where($area_where);
        }
		if($type != '全部') {
            $type = explode($this->separator, $type);
            $type_where = "( ";
            $index = 0;
            foreach ($type as $value) {
                $type_where = $type_where . "(TYPE LIKE '%" . $value ."%')";
                if ($index == count($type) - 1) {
                    $type_where = $type_where . " )";
                } else {
                    $type_where = $type_where . " OR ";
                }
                $index++;
            }
            $this->db->where($type_where);
        }
        if($consume != '全部') {
            $consume = explode($this->separator, $consume);
            $consume_where = "( ";
            $index = 0;
            foreach ($consume as $value) {
                $value = explode('～', $value);
                $consume_where = $consume_where . "(CONSUME >= " . $value[0] ." AND CONSUME < " . $value[1] . ")";
                if ($index == count($consume) - 1) {
                    $consume_where = $consume_where . " )";
                } else {
                    $consume_where = $consume_where . " OR ";
                }
                $index++;
            }
            $this->db->where($consume_where);
        }
        $this->db->where('delete_flg', '0');
        return  $this->db->count_all_results('TBL_FOOD');

	}

	public function select($area, $type, $consume, $limit, $offset)
	{

        if($area != '全部') {
            $area = explode($this->separator, $area);
            $area_where = "( ";
            $index = 0;
            foreach ($area as $value) {
                $area_where = $area_where . "(AREA LIKE '%" . $value ."%')";
                if ($index == count($area) - 1) {
                    $area_where = $area_where . " )";
                } else {
                    $area_where = $area_where . " OR ";
                }
                $index++;
            }
            $this->db->where($area_where);
        }
        if($type != '全部') {
            $type = explode($this->separator, $type);
            $type_where = "( ";
            $index = 0;
            foreach ($type as $value) {
                $type_where = $type_where . "(TYPE LIKE '%" . $value ."%')";
                if ($index == count($type) - 1) {
                    $type_where = $type_where . " )";
                } else {
                    $type_where = $type_where . " OR ";
                }
                $index++;
            }
            $this->db->where($type_where);
        }
        if($consume != '全部') {
            $consume = explode($this->separator, $consume);
            $consume_where = "( ";
            $index = 0;
            foreach ($consume as $value) {
                $value = explode('～', $value);
                $consume_where = $consume_where . "(CONSUME >= " . $value[0] ." AND CONSUME < " . $value[1] . ")";
                if ($index == count($consume) - 1) {
                    $consume_where = $consume_where . " )";
                } else {
                    $consume_where = $consume_where . " OR ";
                }
                $index++;
            }
            $this->db->where($consume_where);
        }
        $this->db->where('delete_flg', '0');
        $this->db->order_by('sort', 'asc');

		$res = $this->db->get('TBL_FOOD', $limit, $offset);

        return $res->result_array();
	}

    public function selectFoodInfo($id)
    {

        $this->db->where('food_id', $id);

        $res = $this->db->get('TBL_FOOD');

        return $res->result_array();
    }

    public function selectFoodDetail($id)
    {

        $this->db->where('food_id', $id);
        $this->db->where('delete_flg', '0');
        $this->db->order_by('sort', 'asc');

        $res = $this->db->get('TBL_FOOD_DETAIL');

        return $res->result_array();
    }
}