<?php


class Website_home extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model('Slider_Model');
		$this->load->model('Event_Model');
		$this->load->library('session');
	}


	public function index()
	{
		
		$data['fetch_slider'] = $this->Slider_Model->fetch('nqash_cms.tblsliders');
		$data['fetch_contact'] = $this->Event_Model->fetch_contact('nqash_cms.tblcontact');
		$this->load->view('index',$data);
	}

	
}
