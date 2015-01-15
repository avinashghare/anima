<?php
if ( !defined( "BASEPATH" ) )
exit( "No direct script access allowed" );
class albumimage_model extends CI_Model
{
public function create($name,$image,$type,$order,$json,$photographeralbum)
{
$data=array("name" => $name,"image" => $image,"type" => $type,"order" => $order,"json" => $json,"photographeralbum" => $photographeralbum);
$query=$this->db->insert( "anima_albumimage", $data );
$id=$this->db->insert_id();
if(!$query)
return  0;
else
return  $id;
}
public function beforeedit($id)
{
$this->db->where("id",$id);
$query=$this->db->get("anima_albumimage")->row();
return $query;
}
function getsinglealbumimage($id){
$this->db->where("id",$id);
$query=$this->db->get("anima_albumimage")->row();
return $query;
}
public function edit($id,$name,$image,$type,$order,$json,$photographeralbum)
{
$data=array("name" => $name,"image" => $image,"type" => $type,"order" => $order,"json" => $json,"photographeralbum" => $photographeralbum);
$this->db->where( "id", $id );
$query=$this->db->update( "anima_albumimage", $data );
return 1;
}
public function delete($id)
{
$query=$this->db->query("DELETE FROM `anima_albumimage` WHERE `id`='$id'");
return $query;
}
}
?>
