<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class modelimage_model extends CI_Model
{
    public function create($name,$image,$type,$order,$json,$modelid)
    {
        $data=array("name" => $name,"image" => $image,"type" => $type,"order" => $order,"json" => $json,"model" => $modelid);
        $query=$this->db->insert( "anima_modelimage", $data );
        $id=$this->db->insert_id();
        if(!$query)
            return  0;
        else
            return  $id;
    }
    public function beforeedit($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("anima_modelimage")->row();
        return $query;
    }
    function getsinglemodelimage($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("anima_modelimage")->row();
        return $query;
    }
    public function edit($id,$name,$image,$type,$order,$json)
    {
        $data=array("name" => $name,"image" => $image,"type" => $type,"order" => $order,"json" => $json);
        $this->db->where( "id", $id );
        $query=$this->db->update( "anima_modelimage", $data );
        return 1;
    }
    public function delete($id)
    {
        $query=$this->db->query("DELETE FROM `anima_modelimage` WHERE `id`='$id'");
        return $query;
    }
    
    public function getmodelimageimagebyid($id)
	{
		$query=$this->db->query("SELECT `image` FROM `anima_modelimage` WHERE `id`='$id'")->row();
		return $query;
	}
}
?>
