<?php

class Add_product extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		date_default_timezone_set('Asia/Karachi');
		$this->load->model('Event_Model');
		$this->load->model('Slider_Model');

	}
	// get data  and populate in group edit form

	public function edit_master_detail()
	{
		$id = $this->uri->segment(3);
		$data['data'] = $this->Event_Model->fetch_record_detail_pro($id);
		$data['fetch_data_d'] = $this->Slider_Model->fetch_with_condition('nqash_cms.tblcategory','Parentid',0);
		$data['get_event_data'] = $this->Event_Model->fetch_with_condition_arr('tblproduct','productid',$id);
		$data['get_event_img_data'] = $this->Event_Model->fetch_with_condition_arr('tblproductimage','ProductId',$id);
		$this->load->view('edit_product_view', $data);
	}

	public function update_sorting()
	{

		$id = $this->input->post('row_id');
		$sort_no = $this->input->post('sort_no');
		$data = array(
			'sort_no' 		=> $sort_no
		);
		$this->Event_Model->Update_record('nqash_cms.tblevent', 'EventId', $id, $data);
		echo '<div class="  col-md-12 alert alert-success" role="alert"> <button class="close "  data-dismiss="alert"></button>
	<strong>Successfully!: </strong>Records has been Update. </div>';
	}


	// get data from group edit  form and update in tbleventimage and tblevent
	public function edit_master_detail_row()
	{
		
		
		// update tblevent 
		$id = $this->Event_Model->edit_product_record(trim($_POST['Description']), trim($_POST['XPrice']), trim($_POST['Price']), $_POST['CategoryId'],$_POST['status'], $_POST['event_id']);
		
		// delete old data according to id from tbleventimg table;
		$id_arr = $_POST['id'];
		if (!empty($_POST['id'])) {
			foreach ($id_arr as  $row_id) {
				$this->Event_Model->Delete_record('nqash_cms.tblproductimage', 'ProductImageId', $row_id);
			}
		}
		for ($i = 0; $i < count($_FILES['img_name']['name']); $i++) {
			$alternattext = $_POST['text'][$i];
			if (strlen($_FILES['img_name']['name'][$i]) == 0) {
				$img = $_POST['file_text'][$i];
			} else {
				if (file_exists(FCPATH."assets/upload_product/".$_POST['file_text'][$i])) {
					unlink(FCPATH."assets/upload_product/".$_POST['file_text'][$i]);
				 }
				$_FILES['file']['name'] = $_FILES['img_name']['name'][$i];
				$_FILES['file']['type'] = $_FILES['img_name']['type'][$i];
				$_FILES['file']['tmp_name'] = $_FILES['img_name']['tmp_name'][$i];
				$_FILES['file']['error'] = $_FILES['img_name']['error'][$i];
				$_FILES['file']['size'] = $_FILES['img_name']['size'][$i];

				$config['upload_path'] = 'assets/upload_product/';
				$config['allowed_types'] = 'jpg|jpeg|png';
				$config['encrypt_name'] = TRUE;

				$this->load->library('upload', $config);
				if (!$this->upload->do_upload('file')) {
					$data['error'] =  '<div class="  col-md-12 alert alert-danger" role="alert"> <button class="close "  data-dismiss="alert"></button>
						<strong>Alert!: </strong>Upload Correct File Formate. </div>';
				} else {
					$data_ = array('upload_data' => $this->upload->data());
					$imgName[$i] = $this->upload->data();
					$img = $imgName[$i]['file_name'];
				}
			}
			$event_detail = [
				'ProductId' => trim($_POST['event_id']),
				'Image' =>  trim($img),
				'Alternative' => trim($alternattext)
			];
			$this->Event_Model->Insert_record('nqash_cms.tblproductimage', $event_detail);
		}
		$this->session->set_flashdata('msg', '<div class="  col-md-12 alert alert-success" role="alert"> <button class="close "  data-dismiss="alert"></button>
		<strong>Successfully!: </strong>Records has been saved. </div>');
		redirect(base_url() . "Add_product");
	}

	public function edit_record()
	{
		$event_img_id = $this->uri->segment(3);
		$event_id = $this->uri->segment(4);
		$data['data'] = $this->Event_Model->fetch_record();
		$data['get_event_img_data'] = $this->Event_Model->get_event_img_data($event_img_id);
		$data['get_event_data'] = $this->Event_Model->get_event_data($event_id);

		$this->load->view('product_view', $data);
	}

	
	public function index()
	{
		$data['fetch_data'] = $this->Slider_Model->fetch_arr('nqash_cms.tblproduct');
		$data['fetch_data_d'] = $this->Slider_Model->fetch_with_condition('nqash_cms.tblcategory','Parentid',0);
		$data['data'] = $this->Event_Model->fetch_record();
		$this->load->view('product_view', $data);
	}
	public function delete_record()
	{
		$id = $this->uri->segment(3);
		$this->Event_Model->Delete_record('nqash_cms.tblproduct', 'ProductId', $id);
		// $this->Event_Model->Delete_record('nqash_cms.tblevent', 'EventId', $id);
		$this->session->set_flashdata('msg', '<div class="  col-md-12 alert alert-success" role="alert"> <button class="close "  data-dismiss="alert"></button>
		<strong>Successfully!: </strong>Records has been Deleted. </div>');
		redirect(base_url() . "Add_product");
	}

	public function insert_data()
	{

		$this->load->library('form_validation');
		$this->form_validation->set_rules('Description', 'Description', 'required');
		$this->form_validation->set_rules('Price', 'Price', 'required');
		if ($this->form_validation->run() == true) {
			$CategoryId = $this->input->post('ParentId');
			$Description = $this->input->post('Description');
			$XPrice = $this->input->post('XPrice');
			$Price = $this->input->post('Price');
			$upload_files = $_FILES['file']['name'];
			$text = $_POST['text'];

			$product = [
				'CategoryId' => trim($CategoryId),
				'Description' => trim($Description),
				'XPrice' => trim($XPrice),
				'Price' => trim($Price),
			];
			$config['upload_path'] = 'assets/upload_product/';
			$config['allowed_types'] = 'jpg|jpeg|png';
			$config['encrypt_name'] = TRUE;
			$this->load->library('upload', $config);

			$id = $this->Event_Model->Insert_record('nqash_cms.tblproduct', $product);
			$files = $_FILES;
			$cpt = count($_FILES['file']['name']);
			for ($i = 0; $i < $cpt; $i++) {
				$_FILES['file']['name'] = $files['file']['name'][$i];
				$_FILES['file']['tmp_name'] = $files['file']['tmp_name'][$i];
				$_FILES['file']['error'] = $files['file']['error'][$i];
				$_FILES['file']['size'] = $files['file']['size'][$i];
				if ($this->upload->do_upload('file')) {
					$data['error'] = array('error' => '<div class=" col-md-12 alert alert-success" role="alert"> <button class="close "  data-dismiss="alert"></button>
					<strong>Successfully!: </strong>Record Has Been Saved.</div>');
					$imgName[$i] = $this->upload->data();
					$img = $imgName[$i]['file_name'];
					$event_detail = [
						'ProductId' => $id,
						'Image' =>  $img,
						'Alternative' => $text[$i]
					];
					$this->Event_Model->Insert_record('nqash_cms.tblproductimage', $event_detail);
				} else {
					$data['error'] = array('error' => '<div class=" col-md-12 alert alert-danger" role="alert"> <button class="close "  data-dismiss="alert"></button>
					<strong>Alert!: </strong>File Type Must Be Png ,Jpg And jpeg.</div>');
				}
			}
			$data['data'] = $this->Event_Model->fetch_record();
			$this->session->set_flashdata('msg', '<div class="alert alert-success  fade show" role="alert">
			<strong>Successfully!</strong> Data is  inserted.
			<button type="button" class="close" data-dismiss="alert">
			  <span aria-hidden="true">&times;</span>
			</button>
			</div>');
			redirect("Add_product");
		} else {
			$this->session->set_flashdata('msg', '<div class="alert alert-danger  fade show" role="alert">
			  <strong>Successfully!</strong> Data is Not inserted.
			  <button type="button" class="close" data-dismiss="alert">
				<span aria-hidden="true">&times;</span>
			  </button>
			  </div>');
			redirect("Add_product");
		}
	}
}
