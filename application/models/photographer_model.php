<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class photographer_model extends CI_Model
{
    public function create($name,$city,$order,$content)
    {
        $data=array("name" => $name,"city" => $city,"order" => $order,"content" => $content);
        $query=$this->db->insert( "anima_photographer", $data );
        $id=$this->db->insert_id();
        if(!$query)
            return  0;
        else
            return  $id;
    }
    public function beforeedit($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("anima_photographer")->row();
        return $query;
    }
    function getsinglephotographer($id)
    {
        $this->db->where("id",$id);
        $query=$this->db->get("anima_photographer")->row();
        return $query;
    }
    public function edit($id,$name,$city,$order,$content)
    {
        $data=array("name" => $name,"city" => $city,"order" => $order,"content" => $content);
        $this->db->where( "id", $id );
        $query=$this->db->update( "anima_photographer", $data );
        return 1;
    }
    public function delete($id)
    {
        $query=$this->db->query("DELETE FROM `anima_photographer` WHERE `id`='$id'");
        return $query;
    }
    public function getphotographerdropdown()
	{
		$query=$this->db->query("SELECT * FROM `anima_photographer`  ORDER BY `id` ASC")->result();
		$return=array(
		"" => ""
		);
		foreach($query as $row)
		{
			$return[$row->id]=$row->name;
		}
		
		return $return;
	}
}
?>
