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

	public  function multiSearch(array $array, array $pairs)
    {
        $found = array();
        foreach ($array as $aKey => $aVal) {
            $coincidences = 0;
            foreach ($pairs as $pKey => $pVal) {
                if (array_key_exists($pKey, $aVal) && $aVal[$pKey] == $pVal) {
                    $coincidences++;
                }
            }
            if ($coincidences == count($pairs)) {
                $found[$aKey] = $aVal;
            }
        }

        return $found;
    }    

	public function index()
	{
		$data['fetch_product'] = $this->Event_Model->fetch_record_detail_product_all();
		$data['fetch_slider'] = $this->Slider_Model->fetch_arr('nqash_cms.tblproductimage');
		foreach ($data['fetch_product'] as $value) {
			
		$result= Website_home::multiSearch($data['fetch_slider'], array('ProductId' =>  $value->productid));
// add loop for img
		}


		$data['fetch_slider'] = $this->Slider_Model->fetch('nqash_cms.tblsliders');
		$data['fetch_data_d'] = $this->Slider_Model->fetch_with_condition('nqash_cms.tblcategory','Parentid',0);
		$data['fetch_contact'] = $this->Event_Model->fetch_contact('nqash_cms.tblcontact');
		
		$this->load->view('index',$data);
	}

	
}
