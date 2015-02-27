<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class slidertwo_model extends CI_Model
{
    public function create($name,$order,$image)
    {
        $data=array(
            "name" => $name,
            "order" => $order,
            "image" => $image
        );
        $query=$this->db->insert( "slidertwo", $data );
        $id=$this->db->insert_id();
        if(!$query)
            return  0;
        else
            return  $id;
    }
    public function beforeedit($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("slidertwo")->row();
        return $query;
    }
    function getsingleslidertwo($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("slidertwo")->row();
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
        $query=$this->db->update( "slidertwo", $data );
        return 1;
    }
    public function delete($id)
    {
        $query=$this->db->query("DELETE FROM `slidertwo` WHERE `id`='$id'");
        return $query;
    }
    public function getslidertwodropdown()
	{
		$query=$this->db->query("SELECT * FROM `slidertwo`  ORDER BY `id` ASC")->result();
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
        $query=$this->db->query("SELECT * FROM `slidertwo` ORDER BY `id`")->result();
        return $query;
    }
    public function getslidertwoimagebyid($id)
	{
		$query=$this->db->query("SELECT `image` FROM `slidertwo` WHERE `id`='$id'")->row();
		return $query;
	}
    
    public function getslidertwodetails($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("slidertwo")->row();
        return $query;
    }
    
    public function getalbumimages($id)
    {
        $query=$this->db->query("SELECT `id`, `name`, `image`, `type`, `order`, `json`, `slidertwoalbum` 
FROM `albumimage`
WHERE `slidertwoalbum` IN (SELECT `id` FROM `slidertwoalbum` WHERE `slidertwo`='$id')")->result();
        return $query;
    }
    public function getslidertwobycat($id)
    {
        $query=$this->db->query("SELECT * FROM `slidertwo` WHERE `category`='$id'")->result();
        return $query;
    }
    
    public function viewslidertwo()
	{
		$query=$this->db->query("SELECT * FROM `slidertwo` ORDER BY `order` ASC")->result();
		return $query;
	}
    
    public function saveslidertwoorder($id,$order)
    {
//        $data=array("order" => $order);
//        $this->db->where( "id", $id );
//        $query=$this->db->update( "slidertwo", $data );
        $this->db->query("UPDATE `slidertwo` SET `order`='$order' WHERE `id`='$id'");
        return 1;
    }
    
}
?>
