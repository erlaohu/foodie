<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Food extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('smartyci');
        $this->load->model('Food_model', 'food');
        $this->load->library('pagination');
        $this->load->helper('url');
	}

	public function search()
	{

        $area = $this->input->post("area");
        $type = $this->input->post("type");
        $consume = $this->input->post("consume");
        $offset = $this->input->post("offset");

        // 每页显示条数
        $limit = 16;

        // 总条数
        $food_count = $this->food->count($area, $type, $consume);

        $foods = [];
        if ($food_count > 0) {
            $foods = $this->food->select($area, $type, $consume, $limit, $offset);
        }

        $page_config['base_url'] = '#';
        $page_config['total_rows'] = $food_count;
        $page_config['per_page'] = $limit;
        $page_config['cur_page'] =  $offset;
        $page_config['prev_link'] = '上一页';
        $page_config['next_link'] = '下一页';
        $page_config['num_links'] = 5;
        $page_config['uri_segment'] = 2;
        $page_config['first_link'] = false;
        $page_config['last_link'] = false;
        $this->pagination->initialize($page_config);
        $this->smartyci->assign('page_link', $this->pagination->create_links());

        $this->smartyci->assign('foods', $foods);
        $this->smartyci->assign('active', 'home');
        $this->smartyci->assign('base_url', base_url());
        $this->smartyci->assign('area', $area);
        $this->smartyci->assign('type', $type);
        $this->smartyci->assign('consume', $consume);
        $this->smartyci->assign('offset', $offset);
        $this->smartyci->display('./application/views/pages/foodList.tpl');
	}

    public function searchDetail()
    {

        $food_id = $this->input->post("food_id");

        $foods = $this->food->selectFoodInfo($food_id);

        $foodDetails = $this->food->selectFoodDetail($food_id);

        $this->smartyci->assign('food', $foods[0]);
        $this->smartyci->assign('foodDetails', $foodDetails);
        $this->smartyci->assign('active', 'home');
        $this->smartyci->assign('base_url', base_url());
        $this->smartyci->display('./application/views/pages/foodDetail.tpl');
    }
}
