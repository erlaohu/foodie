<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mail extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('smartyci');
        $this->load->helper('url');
	}

	public function send()
	{
        $name = $this->input->post("name");
        $email = $this->input->post("email");
        $subject = $this->input->post("subject");
        $message = $this->input->post("message");

        if ($name == '' || $email == '' || $message == '') {
            $this->smartyci->assign('status', '必输入的项目没有填写！');
        } else {
            $config = Array(
              'protocol' => 'smtp',
              'smtp_host' => 'smtp.chihuo-re.com',
              'smtp_port' => '25',
              'smtp_user' => 'info@chihuo-re.com', // change it to yours
              'smtp_pass' => 'chihuo0908$', // change it to yours
              'mailtype' => 'html',
              'charset' => 'utf-8',
              'wordwrap' => TRUE
            );

            $this->load->library('email', $config);
            $this->email->set_newline("\r\n");
            $this->email->from('info@chihuo-re.com'); // change it to yours
            $this->email->to('info@chihuo-re.com');// change it to yours
            $this->email->subject($subject);
            $this->email->message('姓名：' . $name. "\r\n". '联系方式：' . $email . "\r\n" . '信息：' . $message);

            if($this->email->send()) {
                $this->smartyci->assign('status', 'success');
            } else {
                $this->smartyci->assign('status', $this->email->print_debugger());
            }
        }

        $this->smartyci->assign('active', 'contact');
        $this->smartyci->assign('base_url', base_url());
        $this->smartyci->display('./application/views/pages/contact.tpl');
	}
}