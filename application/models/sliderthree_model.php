<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class sliderthree_model extends CI_Model
{
    public function create($name,$order,$image)
    {
        $data=array(
            "name" => $name,
            "order" => $order,
            "image" => $image
        );
        $query=$this->db->insert( "sliderthree", $data );
        $id=$this->db->insert_id();
        if(!$query)
            return  0;
        else
            return  $id;
    }
    public function beforeedit($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("sliderthree")->row();
        return $query;
    }
    function getsinglesliderthree($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("sliderthree")->row();
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
        $query=$this->db->update( "sliderthree", $data );
        return 1;
    }
    public function delete($id)
    {
        $query=$this->db->query("DELETE FROM `sliderthree` WHERE `id`='$id'");
        return $query;
    }
    public function getsliderthreedropdown()
	{
		$query=$this->db->query("SELECT * FROM `sliderthree`  ORDER BY `id` ASC")->result();
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
        $query=$this->db->query("SELECT * FROM `sliderthree` ORDER BY `id`")->result();
        return $query;
    }
    public function getsliderthreeimagebyid($id)
	{
		$query=$this->db->query("SELECT `image` FROM `sliderthree` WHERE `id`='$id'")->row();
		return $query;
	}
    
    public function getsliderthreedetails($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("sliderthree")->row();
        return $query;
    }
    
    public function getalbumimages($id)
    {
        $query=$this->db->query("SELECT `id`, `name`, `image`, `type`, `order`, `json`, `sliderthreealbum` 
FROM `albumimage`
WHERE `sliderthreealbum` IN (SELECT `id` FROM `sliderthreealbum` WHERE `sliderthree`='$id')")->result();
        return $query;
    }
    public function getsliderthreebycat($id)
    {
        $query=$this->db->query("SELECT * FROM `sliderthree` WHERE `category`='$id'")->result();
        return $query;
    }
    
    public function viewsliderthree()
	{
		$query=$this->db->query("SELECT * FROM `sliderthree` ORDER BY `order` ASC")->result();
		return $query;
	}
    
    public function viewmodel()
	{
		$query=$this->db->query("SELECT * FROM `anima_model` ORDER BY `order` ASC")->result();
		return $query;
	}
    
    function viewphotographer()
	{
		$query="SELECT `anima_photographer`.`id`, `anima_photographer`.`name`, `anima_photographer`.`city`, `anima_photographer`.`order`, `anima_photographer`.`content`, `anima_photographer`.`image`, `anima_photographer`.`category`, `anima_photographer`.`bio`
FROM `anima_photographer`
ORDER BY `anima_photographer`.`order`";
        $result=$this->db->query($query)->result();
        
        return $result;
        
//		return $query;
	}
    
    public function viewphotographeralbum()
	{
		$query=$this->db->query("SELECT * FROM `anima_model` ORDER BY `order` ASC")->result();
		return $query;
	}
    
    public function savesliderthreeorder($id,$order)
    {
//        $data=array("order" => $order);
//        $this->db->where( "id", $id );
//        $query=$this->db->update( "sliderthree", $data );
        $this->db->query("UPDATE `sliderthree` SET `order`='$order' WHERE `id`='$id'");
        return 1;
    }
    
    public function savemainmodelorder($id,$order)
    {
        $this->db->query("UPDATE `anima_model` SET `order`='$order' WHERE `id`='$id'");
        return 1;
    }
    
    public function savemainmodelgalleryorder($id,$order)
    {
        $this->db->query("UPDATE `modelgallery` SET `order`='$order' WHERE `id`='$id'");
        return 1;
    }
    public function savemainphotographerorder($id,$order)
    {
        $this->db->query("UPDATE `anima_photographer` SET `order`='$order' WHERE `id`='$id'");
        return 1;
    }
}
?>
