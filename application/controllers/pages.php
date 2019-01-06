<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pages extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('smartyci');
		$this->load->helper('url');
	}

	public function view($page = 'error')
	{
		if ( ! file_exists(APPPATH.'views/pages/'.$page.'.tpl'))
		{
			// Whoops, we don't have a page for that!
			show_404();
		}

		// highlight active menu item
		$this->smartyci->assign('active', $page);

		// 联系我们
		if ($page == 'contact') {
			$this->smartyci->assign('status', '');
		}

		$this->smartyci->assign('base_url', base_url());
		$this->smartyci->display('./application/views/pages/'.$page.'.tpl');
	}
}