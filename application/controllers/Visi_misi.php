<?php
class visi_misi extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
	}
	function index()
	{
		$this->load->view('depan/navbar');
		$this->load->view('depan/head');
		$this->load->view('depan/v_visi_misi');
		$this->load->view('depan/footer');
	}
}
