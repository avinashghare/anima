<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class sliderone_model extends CI_Model
{
    public function create($name,$order,$image)
    {
        $data=array(
            "name" => $name,
            "order" => $order,
            "image" => $image
        );
        $query=$this->db->insert( "sliderone", $data );
        $id=$this->db->insert_id();
        if(!$query)
            return  0;
        else
            return  $id;
    }
    public function beforeedit($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("sliderone")->row();
        return $query;
    }
    function getsinglesliderone($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("sliderone")->row();
        return $query;
    }
    public function edit($id,$name,$order,$image)
    {
        $data=array(
            "name" => $name,
            "order" => $order,
            "image" => $image
        );
        $this->db->where( "id", $id );
        $query=$this->db->update( "sliderone", $data );
        return 1;
    }
    public function delete($id)
    {
        $query=$this->db->query("DELETE FROM `sliderone` WHERE `id`='$id'");
        return $query;
    }
    public function getslideronedropdown()
	{
		$query=$this->db->query("SELECT * FROM `sliderone`  ORDER BY `id` ASC")->result();
		$return=array(
		"" => ""
		);
		foreach($query as $row)
		{
			$return[$row->id]=$row->name;
		}
		
		return $return;
	}
    public function hair_makeup()
    {
        $query=$this->db->query("SELECT * FROM `sliderone` ORDER BY `id`")->result();
        return $query;
    }
    public function getslideroneimagebyid($id)
	{
		$query=$this->db->query("SELECT `image` FROM `sliderone` WHERE `id`='$id'")->row();
		return $query;
	}
    
    public function getslideronedetails($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("sliderone")->row();
        return $query;
    }
    
    public function getalbumimages($id)
    {
        $query=$this->db->query("SELECT `id`, `name`, `image`, `type`, `order`, `json`, `slideronealbum` 
FROM `albumimage`
WHERE `slideronealbum` IN (SELECT `id` FROM `slideronealbum` WHERE `sliderone`='$id')")->result();
        return $query;
    }
    public function getslideronebycat($id)
    {
        $query=$this->db->query("SELECT * FROM `sliderone` WHERE `category`='$id'")->result();
        return $query;
    }
    
    public function viewsliderone()
	{
		$query=$this->db->query("SELECT * FROM `sliderone` ORDER BY `order` ASC")->result();
		return $query;
	}
    
    public function saveslideroneorder($id,$order)
    {
//        $data=array("order" => $order);
//        $this->db->where( "id", $id );
//        $query=$this->db->update( "sliderone", $data );
        $this->db->query("UPDATE `sliderone` SET `order`='$order' WHERE `id`='$id'");
        return 1;
    }
    
}
?>
