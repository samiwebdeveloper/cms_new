<?php

class Event_Model extends CI_Model
{
    public function Insert_record($tablename, $data)
    {
        $this->db->insert($tablename, $data);
		return $this->db->insert_id();
    }
    
    public function Delete_record($tablename, $columnname, $conditionvalue)
	{
		$this->db->where($columnname, $conditionvalue);
		$this->db->delete($tablename);
	}
    public function get_event($id)
    {
        $query = $this->db->query("SELECT * FROM nqash_cms.tblevent where EventId='$id' ");
        return $query->result_array();
    }

    public function edit_event_img_record($img,$id,$text)
    {
        $query = "UPDATE nqash_cms.tbleventimage SET `Image`='$img',`Alternative`='$text' WHERE EventImageId='$id'";
        $this->db->query($query);
        
    }
    public function edit_event_record($title,$date,$detail,$id)
    {
        $query = "UPDATE nqash_cms.tblevent SET `Title`='$title',`EventDate`='$date',`Detail`='$detail' WHERE EventId='$id'";
        $this->db->query($query);
    }

    public function edit_product_record($des,$xp,$p,$catid,$status,$pro_id)
    {
        $query = "UPDATE `tblproduct` SET `CategoryId`='$catid',`Description`='$des',`XPrice`='$xp',`Price`='$p',`Status`='$status' WHERE ProductId =$pro_id";
        $this->db->query($query);
    }
    public function fetch_record_detail($id)
    {
         $query = $this->db->query("SELECT * FROM nqash_cms.tbleventimage INNER JOIN nqash_cms.tblevent on tbleventimage.EventId=tblevent.EventId where tbleventimage.EventId='$id' order by tblevent.EventId desc ");
        return $query->result_array();
    }

    public function fetch_record_detail_pro($id)
    {
         $query = $this->db->query("SELECT * FROM nqash_cms.tblproductimage INNER JOIN nqash_cms.tblproduct on tblproductimage.ProductId=tblproduct.ProductId where tblproductimage.ProductId='$id' order by tblproduct.ProductId desc ");
        return $query->result_array();
    }

    public function fetch_record_detail_product_all()
    {
         $query = $this->db->query("SELECT * FROM nqash_cms.tblproductimage INNER JOIN nqash_cms.tblproduct on tblproductimage.ProductId=tblproduct.ProductId where status=1 GROUP by tblproductimage.ProductId order by tblproduct.ProductId desc");
        return $query->result();
    }
    public function fetch_record()
    {
        $query = $this->db->query("SELECT * FROM nqash_cms.tblevent ");
        // $query = $this->db->query("SELECT * FROM nqash_cms.tbleventimage INNER JOIN nqash_cms.tblevent on tbleventimage.EventId=tblevent.EventId order by tblevent.EventId desc ");
        return $query->result_array();
    }

    public function get_event_img_data($id)
    {
        $query = $this->db->query("SELECT * FROM nqash_cms.tbleventimage where EventImageId='$id' ");
        return $query->result_array();
    }
    public function event_img_data($id)
    {
        $query = $this->db->query("SELECT * FROM nqash_cms.tbleventimage where EventId='$id' ");
        return $query->result_array();
    }

    public function get_event_data($id)
    {
        $query = $this->db->query("SELECT * FROM nqash_cms.tblevent where EventId='$id' ");
        return $query->result_array();
    }

    public function event_img($id)
    {
        $query = $this->db->query("SELECT * FROM nqash_cms.tbleventimage where EventId='$id' ");
        // $query = $this->db->query("SELECT * FROM nqash_cms.tbleventimage INNER JOIN nqash_cms.tblevent on tbleventimage.EventId=tblevent.EventId ");
        return $query->result_array();
    }
  
    public function fetch($tablename)
    {
        $query = $this->db->query("SELECT * from $tablename ");
        return $query->result();
    }

    public function fetch_contact($tablename)
    {
        $query = $this->db->query("SELECT * from $tablename  order by id desc limit 1");
        return $query->result();
    }

    public function fetch_with_condition($tablename,$where_column_name=0,$column_value)
    {
        $query = $this->db->query("SELECT * from $tablename where $where_column_name='$column_value'");
        return $query->result();
    }
    public function fetch_with_condition_arr($tablename,$where_column_name=0,$column_value)
    {
        $query = $this->db->query("SELECT * from $tablename where $where_column_name='$column_value'");
        return $query->result_array();
    }

    public function Update_record($tablename, $columnname, $conditionvalue, $data)
	{
		$this->db->where($columnname, $conditionvalue);
		$this->db->update($tablename, $data);
		return $this->db->affected_rows();
	}


    
}
