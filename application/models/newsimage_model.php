<?php
if ( !defined( 'BASEPATH' ) )
	exit( 'No direct script access allowed' );
class newsimage_model extends CI_Model
{
	//topic
	public function create($news,$image,$title,$order)
	{
		$data  = array(
			'news' => $news,
			'name' => $title,
			'order' => $order,
			'image' => $image
		);
		$query=$this->db->insert( 'newsimage', $data );
		
		return  1;
	}
	function viewnewsimagebynews($id)
	{
		$query="SELECT `newsimage`.`id`,`newsimage`.`news`,`newsimage`.`name`, `newsimage`.`image`,`newsimage`.`order`, `anima_news`.`title` AS `newsname`
        FROM `newsimage` LEFT OUTER JOIN `anima_news` ON `anima_news`.`id`=`newsimage`.`news` WHERE `newsimage`.`news`='$id' ORDER BY `newsimage`.`order`";
        $result=$this->db->query($query)->result();
        
        return $result;
        
//		return $query;
	}
	public function beforeedit( $id )
	{
		$this->db->where( 'id', $id );
		$query=$this->db->get( 'newsimage' )->row();
		return $query;
	}
    
	public function getnewsimagebyid($id)
	{
		$query=$this->db->query("SELECT `image` FROM `newsimage` WHERE `id`='$id'")->row();
		return $query;
	}
	
	public function edit( $id,$news,$image,$title,$order)
	{
		$data = array(
			'news' => $news,
			'name' => $title,
			'order' => $order,
			'image' => $image
		);
		$this->db->where( 'id', $id );
		$query=$this->db->update( 'newsimage', $data );
		
		return 1;
	}
	function deletenewsimage($id)
	{
		$query=$this->db->query("DELETE FROM `newsimage` WHERE `id`='$id'");
		
	}
    
     public function getnewsdropdown()
	{
		$query=$this->db->query("SELECT * FROM `news`  ORDER BY `id` ASC")->result();
		$return=array();
		foreach($query as $row)
		{
			$return[$row->id]=$row->name;
		}
		
		return $return;
	}
    
    public function savenewsimageorder($id,$order)
    {
//        $data=array("order" => $order);
//        $this->db->where( "id", $id );
//        $query=$this->db->update( "newsimage", $data );
        $this->db->query("UPDATE `newsimage` SET `order`='$order' WHERE `id`='$id'");
        return 1;
    }
}
?>