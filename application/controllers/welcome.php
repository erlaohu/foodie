<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		// load Smarty templating engine
		$this->load->library('smartyci');
		$this->load->model('Food_model', 'food');
		$this->load->model('Sentence_model', 'sentence');
		$this->load->helper('url');
	}

	public function index()
	{
		$foods = $this->food->select('全部', '全部', '全部', 8, 0);
        $sentences = $this->sentence->select(8, 0);
        
        $this->smartyci->assign('foods', $foods);
        $this->smartyci->assign('sentences', $sentences);
		$this->smartyci->assign('active', 'home');
		$this->smartyci->assign('base_url', base_url());
		$this->smartyci->display('./application/views/home.tpl');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */