<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class model_model extends CI_Model
{
    public function create($name,$json,$image)
    {
        $data=array("name" => $name,"json" => $json,"image" => $image);
        $query=$this->db->insert( "anima_model", $data );
        $id=$this->db->insert_id();
        if(!$query)
            return  0;
        else
            return  $id;
    }
    public function beforeedit($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("anima_model")->row();
        return $query;
    }
    function getsinglemodel($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("anima_model")->row();
        return $query;
    }
    public function edit($id,$name,$json,$image)
    {
        $data=array("name" => $name,"json" => $json,"image" => $image);
        $this->db->where( "id", $id );
        $query=$this->db->update( "anima_model", $data );
        return 1;
    }
    public function delete($id)
    {
        $query=$this->db->query("DELETE FROM `anima_model` WHERE `id`='$id'");
        return $query;
    }
    public function getmodelimagebyid($id)
	{
		$query=$this->db->query("SELECT `image` FROM `anima_model` WHERE `id`='$id'")->row();
		return $query;
	}
    public function getmodeldropdown()
	{
		$query=$this->db->query("SELECT * FROM `anima_model`  ORDER BY `id` ASC")->result();
		$return=array(
		"" => ""
		);
		foreach($query as $row)
		{
			$return[$row->id]=$row->name;
		}
		
		return $return;
	}
    
	public function gettypedropdown()
	{
		$status= array(
			 "1" => "Horizontal",
			 "0" => "Verticle"
			);
		return $status;
	}
    
    public function saveorder($id,$order)
    {
        $data=array("order" => $order);
        $this->db->where( "id", $id );
        $query=$this->db->update( "anima_albumimage", $data );
        return 1;
    }
    public function savemodelorder($id,$order)
    {
        $data=array("order" => $order);
        $this->db->where( "id", $id );
        $query=$this->db->update( "anima_modelimage", $data );
        return 1;
    }
    public function viewmodelimage($id)
    {
        $query=$this->db->query("SELECT * FROM `anima_modelimage` WHERE `model`='$id' ORDER BY `order`")->result();
        return $query;
    }
}
?>
