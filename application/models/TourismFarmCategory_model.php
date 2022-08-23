<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class TourismFarmCategory_model extends CI_Model {

	public function index()
	{
		
	}

	public function getCategory(){
		$qry = "SELECT * FROM tbl_est_category";
		return $this->db->query($qry)->result();
	}

	public function getEstType($cid) {
		$qry = "SELECT * FROM tbl_establishment_type WHERE category_id = '$cid'";
		return $this->db->query($qry)->result();

	}

	public function addNewCategory($newcat){
		$qry = "INSERT INTO tbl_est_category (category_name,status) VALUES ('$newcat',1)";
		return $this->db->query($qry);

	}
}