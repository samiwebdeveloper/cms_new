<?php

class Add_product_category extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		date_default_timezone_set('Asia/Karachi');
		$this->load->model('Slider_Model');
	}
	public function index()
	{
		$data['title'] = "Category";
		$data['fetch_data'] = $this->Slider_Model->fetch('nqash_cms.tblcategory');
		$data['fetch_data_d'] = $this->Slider_Model->fetch_with_condition('nqash_cms.tblcategory','Parentid',0);

		$this->load->view('category_view', $data);
	}
	public function edit_record()
	{
		$id= $this->uri->segment(3);
		$data['fetch_data'] = $this->Slider_Model->fetch('nqash_cms.tblcategory');
		$data['fetch_record'] = $this->Slider_Model->fetch_with_condition('nqash_cms.tblcategory','Categoryid',$id);
		$this->load->view('category_view', $data);
	}
	public function delete_record()
	{
		$id = $this->uri->segment(3);
		$this->Slider_Model->Delete_record('nqash_cms.tblcategory', 'Categoryid', $id);
		$this->session->set_flashdata('msg', '<div class="  col-md-12 alert alert-success" role="alert"> <button class="close "  data-dismiss="alert"></button>
		<strong>Successfully!: </strong>Records has been Deleted. </div>');
		redirect("Add_product_category");
	}
	public function insert()
	{
			
		 $id=$this->Slider_Model->Insert_record('nqash_cms.tblcategory', $_POST);
		if ($id>0) {
			$this->session->set_flashdata('msg', '<div class="  col-md-12 alert alert-success" role="alert"> <button class="close "  data-dismiss="alert"></button>
		<strong>Successfully!: </strong>Records has been saved. </div>');
		redirect("Add_product_category");
		} else {
			$this->session->set_flashdata('msg', '<div class="  col-md-12 alert alert-danger" role="alert"> <button class="close "  data-dismiss="alert"></button>
		<strong>Alert!: </strong>Record is not inserted.</div>');
		redirect("Add_product_category");
		}
	}

	public function edit_data()
	{	
		
		
		$efect_rows=$this->Slider_Model->edit_category_record($_POST['ParentId'],$_POST['Category'],$_POST['id']);
	if ($efect_rows) {
		$this->session->set_flashdata('msg', '<div class="  col-md-12 alert alert-success" role="alert"> <button class="close "  data-dismiss="alert"></button>
	<strong>Successfully!: </strong>Record has been saved. </div>');
		redirect("Add_product_category");
	} else {
		$this->session->set_flashdata('msg', '<div class="  col-md-12 alert alert-danger" role="alert"> <button class="close "  data-dismiss="alert"></button>
		<strong>Alert!: </strong>Record is not inserted. </div>');
			redirect("Add_product_category");
	}
		
	
	}
}