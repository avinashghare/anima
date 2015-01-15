<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Site extends CI_Controller 
{
	public function __construct( )
	{
		parent::__construct();
		
		$this->is_logged_in();
	}
	function is_logged_in( )
	{
		$is_logged_in = $this->session->userdata( 'logged_in' );
		if ( $is_logged_in !== 'true' || !isset( $is_logged_in ) ) {
			redirect( base_url() . 'index.php/login', 'refresh' );
		} //$is_logged_in !== 'true' || !isset( $is_logged_in )
	}
	function checkaccess($access)
	{
		$accesslevel=$this->session->userdata('accesslevel');
		if(!in_array($accesslevel,$access))
			redirect( base_url() . 'index.php/site?alerterror=You do not have access to this page. ', 'refresh' );
	}
	public function index()
	{
		$access = array("1","2");
		$this->checkaccess($access);
		$data[ 'page' ] = 'dashboard';
		$data[ 'title' ] = 'Welcome';
		$this->load->view( 'template', $data );	
	}
	public function createuser()
	{
		$access = array("1");
		$this->checkaccess($access);
		$data['accesslevel']=$this->user_model->getaccesslevels();
		$data[ 'status' ] =$this->user_model->getstatusdropdown();
		$data[ 'logintype' ] =$this->user_model->getlogintypedropdown();
//        $data['category']=$this->category_model->getcategorydropdown();
		$data[ 'page' ] = 'createuser';
		$data[ 'title' ] = 'Create User';
		$this->load->view( 'template', $data );	
	}
	function createusersubmit()
	{
		$access = array("1");
		$this->checkaccess($access);
		$this->form_validation->set_rules('name','Name','trim|required|max_length[30]');
		$this->form_validation->set_rules('email','Email','trim|required|valid_email|is_unique[user.email]');
		$this->form_validation->set_rules('password','Password','trim|required|min_length[6]|max_length[30]');
		$this->form_validation->set_rules('confirmpassword','Confirm Password','trim|required|matches[password]');
		$this->form_validation->set_rules('accessslevel','Accessslevel','trim');
		$this->form_validation->set_rules('status','status','trim|');
		$this->form_validation->set_rules('socialid','Socialid','trim');
		$this->form_validation->set_rules('logintype','logintype','trim');
		$this->form_validation->set_rules('json','json','trim');
		if($this->form_validation->run() == FALSE)	
		{
			$data['alerterror'] = validation_errors();
			$data['accesslevel']=$this->user_model->getaccesslevels();
            $data[ 'status' ] =$this->user_model->getstatusdropdown();
            $data[ 'logintype' ] =$this->user_model->getlogintypedropdown();
            $data['category']=$this->category_model->getcategorydropdown();
            $data[ 'page' ] = 'createuser';
            $data[ 'title' ] = 'Create User';
            $this->load->view( 'template', $data );	
		}
		else
		{
            $name=$this->input->post('name');
            $email=$this->input->post('email');
            $password=$this->input->post('password');
            $accesslevel=$this->input->post('accesslevel');
            $status=$this->input->post('status');
            $socialid=$this->input->post('socialid');
            $logintype=$this->input->post('logintype');
            $json=$this->input->post('json');
//            $category=$this->input->post('category');
            
            $config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$this->load->library('upload', $config);
			$filename="image";
			$image="";
			if (  $this->upload->do_upload($filename))
			{
				$uploaddata = $this->upload->data();
				$image=$uploaddata['file_name'];
                
                $config_r['source_image']   = './uploads/' . $uploaddata['file_name'];
                $config_r['maintain_ratio'] = TRUE;
                $config_t['create_thumb'] = FALSE;///add this
                $config_r['width']   = 800;
                $config_r['height'] = 800;
                $config_r['quality']    = 100;
                //end of configs

                $this->load->library('image_lib', $config_r); 
                $this->image_lib->initialize($config_r);
                if(!$this->image_lib->resize())
                {
                    echo "Failed." . $this->image_lib->display_errors();
                    //return false;
                }  
                else
                {
                    //print_r($this->image_lib->dest_image);
                    //dest_image
                    $image=$this->image_lib->dest_image;
                    //return false;
                }
                
			}
            
			if($this->user_model->create($name,$email,$password,$accesslevel,$status,$socialid,$logintype,$image,$json)==0)
			$data['alerterror']="New user could not be created.";
			else
			$data['alertsuccess']="User created Successfully.";
			$data['redirect']="site/viewusers";
			$this->load->view("redirect",$data);
		}
	}
    function viewusers()
	{
		$access = array("1");
		$this->checkaccess($access);
		$data['page']='viewusers';
        $data['base_url'] = site_url("site/viewusersjson");
        
		$data['title']='View Users';
		$this->load->view('template',$data);
	} 
    function viewusersjson()
	{
		$access = array("1");
		$this->checkaccess($access);
        
        
        $elements=array();
        $elements[0]=new stdClass();
        $elements[0]->field="`user`.`id`";
        $elements[0]->sort="1";
        $elements[0]->header="ID";
        $elements[0]->alias="id";
        
        
        $elements[1]=new stdClass();
        $elements[1]->field="`user`.`name`";
        $elements[1]->sort="1";
        $elements[1]->header="Name";
        $elements[1]->alias="name";
        
        $elements[2]=new stdClass();
        $elements[2]->field="`user`.`email`";
        $elements[2]->sort="1";
        $elements[2]->header="Email";
        $elements[2]->alias="email";
        
        $elements[3]=new stdClass();
        $elements[3]->field="`user`.`socialid`";
        $elements[3]->sort="1";
        $elements[3]->header="SocialId";
        $elements[3]->alias="socialid";
        
        $elements[4]=new stdClass();
        $elements[4]->field="`logintype`.`name`";
        $elements[4]->sort="1";
        $elements[4]->header="Logintype";
        $elements[4]->alias="logintype";
        
        $elements[5]=new stdClass();
        $elements[5]->field="`user`.`json`";
        $elements[5]->sort="1";
        $elements[5]->header="Json";
        $elements[5]->alias="json";
       
        $elements[6]=new stdClass();
        $elements[6]->field="`accesslevel`.`name`";
        $elements[6]->sort="1";
        $elements[6]->header="Accesslevel";
        $elements[6]->alias="accesslevelname";
       
        $elements[7]=new stdClass();
        $elements[7]->field="`statuses`.`name`";
        $elements[7]->sort="1";
        $elements[7]->header="Status";
        $elements[7]->alias="status";
       
        
        $search=$this->input->get_post("search");
        $pageno=$this->input->get_post("pageno");
        $orderby=$this->input->get_post("orderby");
        $orderorder=$this->input->get_post("orderorder");
        $maxrow=$this->input->get_post("maxrow");
        if($maxrow=="")
        {
            $maxrow=20;
        }
        
        if($orderby=="")
        {
            $orderby="id";
            $orderorder="ASC";
        }
       
        $data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `user` LEFT OUTER JOIN `logintype` ON `logintype`.`id`=`user`.`logintype` LEFT OUTER JOIN `accesslevel` ON `accesslevel`.`id`=`user`.`accesslevel` LEFT OUTER JOIN `statuses` ON `statuses`.`id`=`user`.`status`");
        
		$this->load->view("json",$data);
	} 
    
    
	function edituser()
	{
		$access = array("1");
		$this->checkaccess($access);
		$data[ 'status' ] =$this->user_model->getstatusdropdown();
		$data['accesslevel']=$this->user_model->getaccesslevels();
		$data[ 'logintype' ] =$this->user_model->getlogintypedropdown();
		$data['before']=$this->user_model->beforeedit($this->input->get('id'));
		$data['page']='edituser';
		$data['page2']='block/userblock';
		$data['title']='Edit User';
		$this->load->view('template',$data);
	}
	function editusersubmit()
	{
		$access = array("1");
		$this->checkaccess($access);
		
		$this->form_validation->set_rules('name','Name','trim|required|max_length[30]');
		$this->form_validation->set_rules('email','Email','trim|required|valid_email');
		$this->form_validation->set_rules('password','Password','trim|min_length[6]|max_length[30]');
		$this->form_validation->set_rules('confirmpassword','Confirm Password','trim|matches[password]');
		$this->form_validation->set_rules('accessslevel','Accessslevel','trim');
		$this->form_validation->set_rules('status','status','trim|');
		$this->form_validation->set_rules('socialid','Socialid','trim');
		$this->form_validation->set_rules('logintype','logintype','trim');
		$this->form_validation->set_rules('json','json','trim');
		if($this->form_validation->run() == FALSE)	
		{
			$data['alerterror'] = validation_errors();
			$data[ 'status' ] =$this->user_model->getstatusdropdown();
			$data['accesslevel']=$this->user_model->getaccesslevels();
            $data[ 'logintype' ] =$this->user_model->getlogintypedropdown();
			$data['before']=$this->user_model->beforeedit($this->input->post('id'));
			$data['page']='edituser';
//			$data['page2']='block/userblock';
			$data['title']='Edit User';
			$this->load->view('template',$data);
		}
		else
		{
            
            $id=$this->input->get_post('id');
            $name=$this->input->get_post('name');
            $email=$this->input->get_post('email');
            $password=$this->input->get_post('password');
            $accesslevel=$this->input->get_post('accesslevel');
            $status=$this->input->get_post('status');
            $socialid=$this->input->get_post('socialid');
            $logintype=$this->input->get_post('logintype');
            $json=$this->input->get_post('json');
//            $category=$this->input->get_post('category');
            
            $config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$this->load->library('upload', $config);
			$filename="image";
			$image="";
			if (  $this->upload->do_upload($filename))
			{
				$uploaddata = $this->upload->data();
				$image=$uploaddata['file_name'];
                
                $config_r['source_image']   = './uploads/' . $uploaddata['file_name'];
                $config_r['maintain_ratio'] = TRUE;
                $config_t['create_thumb'] = FALSE;///add this
                $config_r['width']   = 800;
                $config_r['height'] = 800;
                $config_r['quality']    = 100;
                //end of configs

                $this->load->library('image_lib', $config_r); 
                $this->image_lib->initialize($config_r);
                if(!$this->image_lib->resize())
                {
                    echo "Failed." . $this->image_lib->display_errors();
                    //return false;
                }  
                else
                {
                    //print_r($this->image_lib->dest_image);
                    //dest_image
                    $image=$this->image_lib->dest_image;
                    //return false;
                }
                
			}
            
            if($image=="")
            {
            $image=$this->user_model->getuserimagebyid($id);
               // print_r($image);
                $image=$image->image;
            }
            
			if($this->user_model->edit($id,$name,$email,$password,$accesslevel,$status,$socialid,$logintype,$image,$json)==0)
			$data['alerterror']="User Editing was unsuccesful";
			else
			$data['alertsuccess']="User edited Successfully.";
			
			$data['redirect']="site/viewusers";
			//$data['other']="template=$template";
			$this->load->view("redirect",$data);
			
		}
	}
	
	function deleteuser()
	{
		$access = array("1");
		$this->checkaccess($access);
		$this->user_model->deleteuser($this->input->get('id'));
//		$data['table']=$this->user_model->viewusers();
		$data['alertsuccess']="User Deleted Successfully";
		$data['redirect']="site/viewusers";
			//$data['other']="template=$template";
		$this->load->view("redirect",$data);
	}
	function changeuserstatus()
	{
		$access = array("1");
		$this->checkaccess($access);
		$this->user_model->changestatus($this->input->get('id'));
		$data['table']=$this->user_model->viewusers();
		$data['alertsuccess']="Status Changed Successfully";
		$data['redirect']="site/viewusers";
        $data['other']="template=$template";
        $this->load->view("redirect",$data);
	}
    
    
    
    public function viewinstagram()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="viewinstagram";
        $data["base_url"]=site_url("site/viewinstagramjson");
        $data["title"]="View instagram";
        $this->load->view("template",$data);
    }
    function viewinstagramjson()
    {
        $elements=array();
        
        $elements[0]=new stdClass();
        $elements[0]->field="`anima_instagram`.`id`";
        $elements[0]->sort="1";
        $elements[0]->header="ID";
        $elements[0]->alias="id";
        
        $elements[1]=new stdClass();
        $elements[1]->field="`anima_instagram`.`image`";
        $elements[1]->sort="1";
        $elements[1]->header="Image";
        $elements[1]->alias="image";
        
        $elements[2]=new stdClass();
        $elements[2]->field="`anima_instagram`.`url`";
        $elements[2]->sort="1";
        $elements[2]->header="URL";
        $elements[2]->alias="url";
        
        $elements[3]=new stdClass();
        $elements[3]->field="`anima_instagram`.`status`";
        $elements[3]->sort="1";
        $elements[3]->header="Status";
        $elements[3]->alias="status";
        
        $elements[4]=new stdClass();
        $elements[4]->field="`anima_instagram`.`user`";
        $elements[4]->sort="1";
        $elements[4]->header="User";
        $elements[4]->alias="user";
        
        $elements[5]=new stdClass();
        $elements[5]->field="`anima_instagram`.`likes`";
        $elements[5]->sort="1";
        $elements[5]->header="Likes";
        $elements[5]->alias="likes";
        
        $search=$this->input->get_post("search");
        $pageno=$this->input->get_post("pageno");
        $orderby=$this->input->get_post("orderby");
        $orderorder=$this->input->get_post("orderorder");
        $maxrow=$this->input->get_post("maxrow");
        
        if($maxrow=="")
        {
            $maxrow=20;
        }
        if($orderby=="")
        {
            $orderby="id";
            $orderorder="ASC";
        }
        $data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `anima_instagram`");
        $this->load->view("json",$data);
    }

    public function createinstagram()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="createinstagram";
        $data["title"]="Create instagram";
        $data['status']=$this->category_model->getstatusdropdown();
        $this->load->view("template",$data);
    }
    public function createinstagramsubmit() 
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("url","URL","trim");
        $this->form_validation->set_rules("status","Status","trim");
        $this->form_validation->set_rules("user","User","trim");
        $this->form_validation->set_rules("likes","Likes","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="createinstagram";
            $data["title"]="Create instagram";
            $data['status']=$this->category_model->getstatusdropdown();
            $this->load->view("template",$data);
        }
        else
        {
            $url=$this->input->get_post("url");
            $status=$this->input->get_post("status");
            $user=$this->input->get_post("user");
            $likes=$this->input->get_post("likes");
            
            $config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$this->load->library('upload', $config);
			$filename="image";
			$image="";
			if (  $this->upload->do_upload($filename))
			{
				$uploaddata = $this->upload->data();
				$image=$uploaddata['file_name'];
                
                $config_r['source_image']   = './uploads/' . $uploaddata['file_name'];
                $config_r['maintain_ratio'] = TRUE;
                $config_t['create_thumb'] = FALSE;///add this
                $config_r['width']   = 800;
                $config_r['height'] = 800;
                $config_r['quality']    = 100;
                //end of configs

                $this->load->library('image_lib', $config_r); 
                $this->image_lib->initialize($config_r);
                if(!$this->image_lib->resize())
                {
                    echo "Failed." . $this->image_lib->display_errors();
                }  
                else
                {
                    $image=$this->image_lib->dest_image;
                }
                
			}
            
            if($this->instagram_model->create($image,$url,$status,$user,$likes)==0)
                $data["alerterror"]="New instagram could not be created.";
            else
                $data["alertsuccess"]="instagram created Successfully.";
            $data["redirect"]="site/viewinstagram";
            $this->load->view("redirect",$data);
        }
    }
    public function editinstagram()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="editinstagram";
        $data["title"]="Edit instagram";
        $data['status']=$this->category_model->getstatusdropdown();
        $data["before"]=$this->instagram_model->beforeedit($this->input->get("id"));
        $this->load->view("template",$data);
    }
    public function editinstagramsubmit()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("id","ID","trim");
        $this->form_validation->set_rules("url","URL","trim");
        $this->form_validation->set_rules("status","Status","trim");
        $this->form_validation->set_rules("user","User","trim");
        $this->form_validation->set_rules("likes","Likes","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="editinstagram";
            $data["title"]="Edit instagram";
            $data['status']=$this->category_model->getstatusdropdown();
            $data["before"]=$this->instagram_model->beforeedit($this->input->get("id"));
            $this->load->view("template",$data);
        }
        else
        {
            $id=$this->input->get_post("id");
            $url=$this->input->get_post("url");
            $status=$this->input->get_post("status");
            $user=$this->input->get_post("user");
            $likes=$this->input->get_post("likes");
            
            $config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$this->load->library('upload', $config);
			$filename="image";
			$image="";
			if (  $this->upload->do_upload($filename))
			{
				$uploaddata = $this->upload->data();
				$image=$uploaddata['file_name'];
                
                $config_r['source_image']   = './uploads/' . $uploaddata['file_name'];
                $config_r['maintain_ratio'] = TRUE;
                $config_t['create_thumb'] = FALSE;///add this
                $config_r['width']   = 800;
                $config_r['height'] = 800;
                $config_r['quality']    = 100;
                //end of configs

                $this->load->library('image_lib', $config_r); 
                $this->image_lib->initialize($config_r);
                if(!$this->image_lib->resize())
                {
                    echo "Failed." . $this->image_lib->display_errors();
                    //return false;
                }  
                else
                {
                    //print_r($this->image_lib->dest_image);
                    //dest_image
                    $image=$this->image_lib->dest_image;
                    //return false;
                }
                
			}
            
            if($image=="")
            {
            $image=$this->instagram_model->getinstagramimagebyid($id);
               // print_r($image);
                $image=$image->image;
            }
            
            if($this->instagram_model->edit($id,$image,$url,$status,$user,$likes)==0)
                $data["alerterror"]="New instagram could not be Updated.";
            else
                $data["alertsuccess"]="instagram Updated Successfully.";
            $data["redirect"]="site/viewinstagram";
            $this->load->view("redirect",$data);
        }
    }
    public function deleteinstagram()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->instagram_model->delete($this->input->get("id"));
        $data["redirect"]="site/viewinstagram";
        $this->load->view("redirect",$data);
    }
    public function viewnews()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="viewnews";
        $data["base_url"]=site_url("site/viewnewsjson");
        $data["title"]="View news";
        $this->load->view("template",$data);
    }
    function viewnewsjson()
    {
        $elements=array();
        
        $elements[0]=new stdClass();
        $elements[0]->field="`anima_news`.`id`";
        $elements[0]->sort="1";
        $elements[0]->header="ID";
        $elements[0]->alias="id";
        
        $elements[1]=new stdClass();
        $elements[1]->field="`anima_news`.`title`";
        $elements[1]->sort="1";
        $elements[1]->header="Title";
        $elements[1]->alias="title";
        
        $elements[2]=new stdClass();
        $elements[2]->field="`anima_news`.`json`";
        $elements[2]->sort="1";
        $elements[2]->header="Json";
        $elements[2]->alias="json";
        
        $elements[3]=new stdClass();
        $elements[3]->field="`anima_news`.`image`";
        $elements[3]->sort="1";
        $elements[3]->header="Image";
        $elements[3]->alias="image";
        
        $elements[4]=new stdClass();
        $elements[4]->field="`anima_news`.`content`";
        $elements[4]->sort="1";
        $elements[4]->header="Content";
        $elements[4]->alias="content";
        
        $search=$this->input->get_post("search");
        $pageno=$this->input->get_post("pageno");
        $orderby=$this->input->get_post("orderby");
        $orderorder=$this->input->get_post("orderorder");
        $maxrow=$this->input->get_post("maxrow");
        
        if($maxrow=="")
        {
            $maxrow=20;
        }
        if($orderby=="")
        {
            $orderby="id";
            $orderorder="ASC";
        }
        $data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `anima_news`");
        $this->load->view("json",$data);
    }

    public function createnews()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="createnews";
        $data["title"]="Create news";
        $this->load->view("template",$data);
    }
    public function createnewssubmit() 
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("title","Title","trim");
        $this->form_validation->set_rules("json","Json","trim");
        $this->form_validation->set_rules("content","Content","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="createnews";
            $data["title"]="Create news";
            $this->load->view("template",$data);
        }
        else
        {
            $title=$this->input->get_post("title");
            $json=$this->input->get_post("json");
            $content=$this->input->get_post("content");
            
            $config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$this->load->library('upload', $config);
			$filename="image";
			$image="";
			if (  $this->upload->do_upload($filename))
			{
				$uploaddata = $this->upload->data();
				$image=$uploaddata['file_name'];
                
                $config_r['source_image']   = './uploads/' . $uploaddata['file_name'];
                $config_r['maintain_ratio'] = TRUE;
                $config_t['create_thumb'] = FALSE;///add this
                $config_r['width']   = 800;
                $config_r['height'] = 800;
                $config_r['quality']    = 100;
                //end of configs

                $this->load->library('image_lib', $config_r); 
                $this->image_lib->initialize($config_r);
                if(!$this->image_lib->resize())
                {
                    echo "Failed." . $this->image_lib->display_errors();
                }  
                else
                {
                    $image=$this->image_lib->dest_image;
                }
                
			}
            
            if($this->news_model->create($title,$json,$image,$content)==0)
                $data["alerterror"]="New news could not be created.";
            else
                $data["alertsuccess"]="news created Successfully.";
            $data["redirect"]="site/viewnews";
            $this->load->view("redirect",$data);
        }
    }
    public function editnews()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="editnews";
        $data["title"]="Edit news";
        $data["before"]=$this->news_model->beforeedit($this->input->get("id"));
        $this->load->view("template",$data);
    }
    public function editnewssubmit()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("id","ID","trim");
        $this->form_validation->set_rules("title","Title","trim");
        $this->form_validation->set_rules("json","Json","trim");
        $this->form_validation->set_rules("content","Content","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="editnews";
            $data["title"]="Edit news";
            $data["before"]=$this->news_model->beforeedit($this->input->get("id"));
            $this->load->view("template",$data);
        }
        else
        {
            $id=$this->input->get_post("id");
            $title=$this->input->get_post("title");
            $json=$this->input->get_post("json");
            $content=$this->input->get_post("content");
            
            $config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$this->load->library('upload', $config);
			$filename="image";
			$image="";
			if (  $this->upload->do_upload($filename))
			{
				$uploaddata = $this->upload->data();
				$image=$uploaddata['file_name'];
                
                $config_r['source_image']   = './uploads/' . $uploaddata['file_name'];
                $config_r['maintain_ratio'] = TRUE;
                $config_t['create_thumb'] = FALSE;///add this
                $config_r['width']   = 800;
                $config_r['height'] = 800;
                $config_r['quality']    = 100;
                //end of configs

                $this->load->library('image_lib', $config_r); 
                $this->image_lib->initialize($config_r);
                if(!$this->image_lib->resize())
                {
                    echo "Failed." . $this->image_lib->display_errors();
                    //return false;
                }  
                else
                {
                    //print_r($this->image_lib->dest_image);
                    //dest_image
                    $image=$this->image_lib->dest_image;
                    //return false;
                }
                
			}
            
            if($image=="")
            {
            $image=$this->news_model->getnewsimagebyid($id);
               // print_r($image);
                $image=$image->image;
            }
            
            if($this->news_model->edit($id,$title,$json,$image,$content)==0)
                $data["alerterror"]="New news could not be Updated.";
            else
                $data["alertsuccess"]="news Updated Successfully.";
            $data["redirect"]="site/viewnews";
            $this->load->view("redirect",$data);
        }
    }
    public function deletenews()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->news_model->delete($this->input->get("id"));
        $data["redirect"]="site/viewnews";
        $this->load->view("redirect",$data);
    }
    public function viewcategory()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="viewcategory";
        $data["base_url"]=site_url("site/viewcategoryjson");
        $data["title"]="View category";
        $this->load->view("template",$data);
    }
    function viewcategoryjson()
    {
        $elements=array();
        
        $elements[0]=new stdClass();
        $elements[0]->field="`anima_category`.`id`";
        $elements[0]->sort="1";
        $elements[0]->header="ID";
        $elements[0]->alias="id";
        
        $elements[1]=new stdClass();
        $elements[1]->field="`anima_category`.`name`";
        $elements[1]->sort="1";
        $elements[1]->header="Name";
        $elements[1]->alias="name";
        
        $elements[2]=new stdClass();
        $elements[2]->field="`anima_category`.`status`";
        $elements[2]->sort="1";
        $elements[2]->header="Status";
        $elements[2]->alias="status";
        
        $elements[3]=new stdClass();
        $elements[3]->field="`anima_category`.`order`";
        $elements[3]->sort="1";
        $elements[3]->header="Order";
        $elements[3]->alias="order";
        
        $search=$this->input->get_post("search");
        $pageno=$this->input->get_post("pageno");
        $orderby=$this->input->get_post("orderby");
        $orderorder=$this->input->get_post("orderorder");
        $maxrow=$this->input->get_post("maxrow");
        
        if($maxrow=="")
        {
            $maxrow=20;
        }
        if($orderby=="")
        {
            $orderby="id";
            $orderorder="ASC";
        }
        $data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `anima_category`");
        $this->load->view("json",$data);
    }

    public function createcategory()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="createcategory";
        $data["title"]="Create category";
        $data['status']=$this->category_model->getstatusdropdown();
        $this->load->view("template",$data);
    }
    public function createcategorysubmit() 
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("name","Name","trim");
        $this->form_validation->set_rules("status","Status","trim");
        $this->form_validation->set_rules("order","Order","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="createcategory";
            $data["title"]="Create category";
            $data['status']=$this->category_model->getstatusdropdown();
            $this->load->view("template",$data);
        }
        else
        {
            $name=$this->input->get_post("name");
            $status=$this->input->get_post("status");
            $order=$this->input->get_post("order");
            if($this->category_model->create($name,$status,$order)==0)
                $data["alerterror"]="New category could not be created.";
            else
                $data["alertsuccess"]="category created Successfully.";
            $data["redirect"]="site/viewcategory";
            $this->load->view("redirect",$data);
        }
    }
    public function editcategory()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="editcategory";
        $data["title"]="Edit category";
        $data['status']=$this->category_model->getstatusdropdown();
        $data["before"]=$this->category_model->beforeedit($this->input->get("id"));
        $this->load->view("template",$data);
    }
    public function editcategorysubmit()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("id","ID","trim");
        $this->form_validation->set_rules("name","Name","trim");
        $this->form_validation->set_rules("status","Status","trim");
        $this->form_validation->set_rules("order","Order","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="editcategory";
            $data["title"]="Edit category";
            $data["before"]=$this->category_model->beforeedit($this->input->get("id"));
            $this->load->view("template",$data);
        }
        else
        {
            $id=$this->input->get_post("id");
            $name=$this->input->get_post("name");
            $status=$this->input->get_post("status");
            $order=$this->input->get_post("order");
            if($this->category_model->edit($id,$name,$status,$order)==0)
                $data["alerterror"]="New category could not be Updated.";
            else
                $data["alertsuccess"]="category Updated Successfully.";
            $data["redirect"]="site/viewcategory";
            $this->load->view("redirect",$data);
        }
    }
    public function deletecategory()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->category_model->delete($this->input->get("id"));
        $data["redirect"]="site/viewcategory";
        $this->load->view("redirect",$data);
    }
    public function viewmodel()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="viewmodel";
        $data["base_url"]=site_url("site/viewmodeljson");
        $data["title"]="View model";
        $this->load->view("template",$data);
    }
    function viewmodeljson()
    {
        $elements=array();
        
        $elements[0]=new stdClass();
        $elements[0]->field="`anima_model`.`id`";
        $elements[0]->sort="1";
        $elements[0]->header="ID";
        $elements[0]->alias="id";
        
        $elements[1]=new stdClass();
        $elements[1]->field="`anima_model`.`name`";
        $elements[1]->sort="1";
        $elements[1]->header="Name";
        $elements[1]->alias="name";
        
        $elements[2]=new stdClass();
        $elements[2]->field="`anima_model`.`json`";
        $elements[2]->sort="1";
        $elements[2]->header="Json";
        $elements[2]->alias="json";
        
        $elements[3]=new stdClass();
        $elements[3]->field="`anima_model`.`image`";
        $elements[3]->sort="1";
        $elements[3]->header="Image";
        $elements[3]->alias="image";
        
        $search=$this->input->get_post("search");
        $pageno=$this->input->get_post("pageno");
        $orderby=$this->input->get_post("orderby");
        $orderorder=$this->input->get_post("orderorder");
        $maxrow=$this->input->get_post("maxrow");
        
        if($maxrow=="")
        {
            $maxrow=20;
        }
        if($orderby=="")
        {
            $orderby="id";
            $orderorder="ASC";
        }
        $data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `anima_model`");
        $this->load->view("json",$data);
    }

    public function createmodel()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="createmodel";
        $data["title"]="Create model";
        $this->load->view("template",$data);
    }
    public function createmodelsubmit() 
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("name","Name","trim");
        $this->form_validation->set_rules("json","Json","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="createmodel";
            $data["title"]="Create model";
            $this->load->view("template",$data);
        }
        else
        {
            $name=$this->input->get_post("name");
            $json=$this->input->get_post("json");
            
            $config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$this->load->library('upload', $config);
			$filename="image";
			$image="";
			if (  $this->upload->do_upload($filename))
			{
				$uploaddata = $this->upload->data();
				$image=$uploaddata['file_name'];
                
                $config_r['source_image']   = './uploads/' . $uploaddata['file_name'];
                $config_r['maintain_ratio'] = TRUE;
                $config_t['create_thumb'] = FALSE;///add this
                $config_r['width']   = 800;
                $config_r['height'] = 800;
                $config_r['quality']    = 100;
                //end of configs

                $this->load->library('image_lib', $config_r); 
                $this->image_lib->initialize($config_r);
                if(!$this->image_lib->resize())
                {
                    echo "Failed." . $this->image_lib->display_errors();
                }  
                else
                {
                    $image=$this->image_lib->dest_image;
                }
                
			}
            
            if($this->model_model->create($name,$json,$image)==0)
                $data["alerterror"]="New model could not be created.";
            else
                $data["alertsuccess"]="model created Successfully.";
            $data["redirect"]="site/viewmodel";
            $this->load->view("redirect",$data);
        }
    }
    public function editmodel()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="editmodel";
        $data["page2"]="block/modelblock";
        $data["title"]="Edit model";
        $data["before"]=$this->model_model->beforeedit($this->input->get("id"));
        $this->load->view("templatewith2",$data);
    }
    public function editmodelsubmit()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("id","ID","trim");
        $this->form_validation->set_rules("name","Name","trim");
        $this->form_validation->set_rules("json","Json","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="editmodel";
            $data["title"]="Edit model";
            $data["before"]=$this->model_model->beforeedit($this->input->get("id"));
            $this->load->view("template",$data);
        }
        else
        {
            $id=$this->input->get_post("id");
            $name=$this->input->get_post("name");
            $json=$this->input->get_post("json");
            
            $config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$this->load->library('upload', $config);
			$filename="image";
			$image="";
			if (  $this->upload->do_upload($filename))
			{
				$uploaddata = $this->upload->data();
				$image=$uploaddata['file_name'];
                
                $config_r['source_image']   = './uploads/' . $uploaddata['file_name'];
                $config_r['maintain_ratio'] = TRUE;
                $config_t['create_thumb'] = FALSE;///add this
                $config_r['width']   = 800;
                $config_r['height'] = 800;
                $config_r['quality']    = 100;
                //end of configs

                $this->load->library('image_lib', $config_r); 
                $this->image_lib->initialize($config_r);
                if(!$this->image_lib->resize())
                {
                    echo "Failed." . $this->image_lib->display_errors();
                    //return false;
                }  
                else
                {
                    //print_r($this->image_lib->dest_image);
                    //dest_image
                    $image=$this->image_lib->dest_image;
                    //return false;
                }
                
			}
            
            if($image=="")
            {
            $image=$this->model_model->getmodelimagebyid($id);
               // print_r($image);
                $image=$image->image;
            }
            
            if($this->model_model->edit($id,$name,$json,$image)==0)
                $data["alerterror"]="New model could not be Updated.";
            else
                $data["alertsuccess"]="model Updated Successfully.";
            $data["redirect"]="site/viewmodel";
            $this->load->view("redirect",$data);
        }
    }
    public function deletemodel()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->model_model->delete($this->input->get("id"));
        $data["redirect"]="site/viewmodel";
        $this->load->view("redirect",$data);
    }
    public function viewmodelimage()
    {
        $access=array("1");
        $this->checkaccess($access);
        $modelid=$this->input->get('id');
        $data["page"]="viewmodelimage";
        $data["page2"]="block/modelblock";
        $data["before"]=$this->model_model->beforeedit($this->input->get("id"));
        $data["base_url"]=site_url("site/viewmodelimagejson?id=$modelid");
        $data["title"]="View modelimage";
        $this->load->view("templatewith2",$data);
    }
    function viewmodelimagejson()
    {
        $id=$this->input->get('id');
        $elements=array();
        
        $elements[0]=new stdClass();
        $elements[0]->field="`anima_modelimage`.`id`";
        $elements[0]->sort="1";
        $elements[0]->header="ID";
        $elements[0]->alias="id";
        
        $elements[1]=new stdClass();
        $elements[1]->field="`anima_modelimage`.`name`";
        $elements[1]->sort="1";
        $elements[1]->header="Name";
        $elements[1]->alias="name";
        
        $elements[2]=new stdClass();
        $elements[2]->field="`anima_modelimage`.`image`";
        $elements[2]->sort="1";
        $elements[2]->header="Image";
        $elements[2]->alias="image";
        
        $elements[3]=new stdClass();
        $elements[3]->field="`anima_modelimage`.`type`";
        $elements[3]->sort="1";
        $elements[3]->header="Type";
        $elements[3]->alias="type";
        
        $elements[4]=new stdClass();
        $elements[4]->field="`anima_modelimage`.`order`";
        $elements[4]->sort="1";
        $elements[4]->header="Order";
        $elements[4]->alias="order";
        
        $elements[5]=new stdClass();
        $elements[5]->field="`anima_modelimage`.`json`";
        $elements[5]->sort="1";
        $elements[5]->header="Json";
        $elements[5]->alias="json";
        
        $elements[6]=new stdClass();
        $elements[6]->field="`anima_modelimage`.`model`";
        $elements[6]->sort="1";
        $elements[6]->header="Model";
        $elements[6]->alias="model";
        
        $search=$this->input->get_post("search");
        $pageno=$this->input->get_post("pageno");
        $orderby=$this->input->get_post("orderby");
        $orderorder=$this->input->get_post("orderorder");
        $maxrow=$this->input->get_post("maxrow");
        
        if($maxrow=="")
        {
            $maxrow=20;
        }
        if($orderby=="")
        {
            $orderby="id";
            $orderorder="ASC";
        }
        $data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `anima_modelimage`","WHERE `anima_modelimage`.`model`='$id'");
        $this->load->view("json",$data);
    }

    public function createmodelimage()
    {
        $access=array("1");
        $this->checkaccess($access);
        $modelid=$this->input->get('id');
        $data['modelid']=$modelid;
        $data["page"]="createmodelimage";
        $data["title"]="Create modelimage";
        $this->load->view("template",$data);
    }
    public function createmodelimagesubmit() 
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("name","Name","trim");
        $this->form_validation->set_rules("type","Type","trim");
        $this->form_validation->set_rules("order","Order","trim");
        $this->form_validation->set_rules("json","Json","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $modelid=$this->input->get_post('id');
            $data['modelid']=$modelid;
            $data["page"]="createmodelimage";
            $data["title"]="Create modelimage";
            $this->load->view("template",$data);
        }
        else
        {
            $name=$this->input->get_post("name");
            $type=$this->input->get_post("type");
            $order=$this->input->get_post("order");
            $json=$this->input->get_post("json");
            $modelid=$this->input->get_post("modelid");
            
            $config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$this->load->library('upload', $config);
			$filename="image";
			$image="";
			if (  $this->upload->do_upload($filename))
			{
				$uploaddata = $this->upload->data();
				$image=$uploaddata['file_name'];
                
                $config_r['source_image']   = './uploads/' . $uploaddata['file_name'];
                $config_r['maintain_ratio'] = TRUE;
                $config_t['create_thumb'] = FALSE;///add this
                $config_r['width']   = 800;
                $config_r['height'] = 800;
                $config_r['quality']    = 100;
                //end of configs

                $this->load->library('image_lib', $config_r); 
                $this->image_lib->initialize($config_r);
                if(!$this->image_lib->resize())
                {
                    echo "Failed." . $this->image_lib->display_errors();
                }  
                else
                {
                    $image=$this->image_lib->dest_image;
                }
                
			}
            
            if($this->modelimage_model->create($name,$image,$type,$order,$json,$modelid)==0)
                $data["alerterror"]="New modelimage could not be created.";
            else
                $data["alertsuccess"]="modelimage created Successfully.";
            $data["redirect"]="site/viewmodelimage?id=".$modelid;
            $this->load->view("redirect",$data);
        }
    }
    public function editmodelimage()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data['modelid']=$this->input->get('id');
        $data['modelimageid']=$this->input->get('modelimageid');
        $data["page"]="editmodelimage";
        $data["title"]="Edit modelimage";
        $data["before"]=$this->modelimage_model->beforeedit($this->input->get("modelimageid"));
        $this->load->view("template",$data);
    }
    public function editmodelimagesubmit()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("id","ID","trim");
        $this->form_validation->set_rules("name","Name","trim");
        $this->form_validation->set_rules("type","Type","trim");
        $this->form_validation->set_rules("order","Order","trim");
        $this->form_validation->set_rules("json","Json","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data['modelid']=$this->input->get_post('id');
            $data['modelimageid']=$this->input->get_post('modelimageid');
            $data["page"]="editmodelimage";
            $data["title"]="Edit modelimage";
            $data["before"]=$this->modelimage_model->beforeedit($this->input->get("modelimageid"));
            $this->load->view("template",$data);
        }
        else
        {
            $id=$this->input->post("id");
            $name=$this->input->get_post("name");
            $type=$this->input->get_post("type");
            $order=$this->input->get_post("order");
            $json=$this->input->get_post("json");
            $modelid=$this->input->get_post("modelid");
            
            $config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$this->load->library('upload', $config);
			$filename="image";
			$image="";
			if (  $this->upload->do_upload($filename))
			{
				$uploaddata = $this->upload->data();
				$image=$uploaddata['file_name'];
                
                $config_r['source_image']   = './uploads/' . $uploaddata['file_name'];
                $config_r['maintain_ratio'] = TRUE;
                $config_t['create_thumb'] = FALSE;///add this
                $config_r['width']   = 800;
                $config_r['height'] = 800;
                $config_r['quality']    = 100;
                //end of configs

                $this->load->library('image_lib', $config_r); 
                $this->image_lib->initialize($config_r);
                if(!$this->image_lib->resize())
                {
                    echo "Failed." . $this->image_lib->display_errors();
                    //return false;
                }  
                else
                {
                    //print_r($this->image_lib->dest_image);
                    //dest_image
                    $image=$this->image_lib->dest_image;
                    //return false;
                }
                
			}
            
            if($image=="")
            {
            $image=$this->modelimage_model->getmodelimageimagebyid($id);
               // print_r($image);
                $image=$image->image;
            }
            
            if($this->modelimage_model->edit($id,$name,$image,$type,$order,$json)==0)
                $data["alerterror"]="New modelimage could not be Updated.";
            else
                $data["alertsuccess"]="modelimage Updated Successfully.";
            $data["redirect"]="site/viewmodelimage?id=".$modelid;
            $this->load->view("redirect",$data);
        }
    }
    public function deletemodelimage()
    {
        $access=array("1");
        $this->checkaccess($access);
        $modelid=$this->input->get('id');
        $this->modelimage_model->delete($this->input->get("modelimageid"));
        $data["redirect"]="site/viewmodelimage?id=".$modelid;
        $this->load->view("redirect",$data);
    }
    public function viewmodelvideo()
    {
        $access=array("1");
        $this->checkaccess($access);
        $modelid=$this->input->get('id');
        $data['modelid']=$modelid;
        $data["page"]="viewmodelvideo";
        $data["page2"]="block/modelblock";
        $data["before"]=$this->model_model->beforeedit($this->input->get("id"));
        $data["base_url"]=site_url("site/viewmodelvideojson?id='$modelid'");
        $data["title"]="View modelvideo";
        $this->load->view("templatewith2",$data);
    }
    function viewmodelvideojson()
    {
        $modelid=$this->input->get('id');
        $elements=array();
        
        $elements[0]=new stdClass();
        $elements[0]->field="`anima_modelvideo`.`id`";
        $elements[0]->sort="1";
        $elements[0]->header="ID";
        $elements[0]->alias="id";
        
        $elements[1]=new stdClass();
        $elements[1]->field="`anima_modelvideo`.`model`";
        $elements[1]->sort="1";
        $elements[1]->header="Model";
        $elements[1]->alias="model";
        
        $elements[2]=new stdClass();
        $elements[2]->field="`anima_modelvideo`.`video`";
        $elements[2]->sort="1";
        $elements[2]->header="Video";
        $elements[2]->alias="video";
        
        $elements[3]=new stdClass();
        $elements[3]->field="`anima_modelvideo`.`order`";
        $elements[3]->sort="1";
        $elements[3]->header="Order";
        $elements[3]->alias="order";
        
        $search=$this->input->get_post("search");
        $pageno=$this->input->get_post("pageno");
        $orderby=$this->input->get_post("orderby");
        $orderorder=$this->input->get_post("orderorder");
        $maxrow=$this->input->get_post("maxrow");
        
        if($maxrow=="")
        {
            $maxrow=20;
        }
        if($orderby=="")
        {
            $orderby="id";
            $orderorder="ASC";
        }
        $data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `anima_modelvideo`","WHERE `anima_modelvideo`.`model`=$modelid");
        $this->load->view("json",$data);
    }

    public function createmodelvideo()
    {
        $access=array("1");
        $this->checkaccess($access);
        $modelid=$this->input->get('id');
        $data['modelid']=$modelid;
        $data["page"]="createmodelvideo";
        $data["title"]="Create modelvideo";
        $this->load->view("template",$data);
    }
    public function createmodelvideosubmit() 
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("video","Video","trim");
        $this->form_validation->set_rules("order","Order","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="createmodelvideo";
            $data["title"]="Create modelvideo";
            $this->load->view("template",$data);
        }
        else
        {
            $video=$this->input->get_post("video");
            $order=$this->input->get_post("order");
            $modelid=$this->input->get_post("modelid");
            if($this->modelvideo_model->create($modelid,$video,$order)==0)
                $data["alerterror"]="New modelvideo could not be created.";
            else
                $data["alertsuccess"]="modelvideo created Successfully.";
            $data["redirect"]="site/viewmodelvideo?id=".$modelid;
            $this->load->view("redirect",$data);
        }
    }
    public function editmodelvideo()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="editmodelvideo";
        $data["title"]="Edit modelvideo";
        $data["before"]=$this->modelvideo_model->beforeedit($this->input->get("id"));
        $this->load->view("template",$data);
    }
    public function editmodelvideosubmit()
    {
    $access=array("1");
    $this->checkaccess($access);
    $this->form_validation->set_rules("id","ID","trim");
    $this->form_validation->set_rules("model","Model","trim");
    $this->form_validation->set_rules("video","Video","trim");
    $this->form_validation->set_rules("order","Order","trim");
    if($this->form_validation->run()==FALSE)
    {
    $data["alerterror"]=validation_errors();
    $data["page"]="editmodelvideo";
    $data["title"]="Edit modelvideo";
    $data["before"]=$this->modelvideo_model->beforeedit($this->input->get("id"));
    $this->load->view("template",$data);
    }
    else
    {
    $id=$this->input->get_post("id");
    $model=$this->input->get_post("model");
    $video=$this->input->get_post("video");
    $order=$this->input->get_post("order");
    if($this->modelvideo_model->edit($id,$model,$video,$order)==0)
    $data["alerterror"]="New modelvideo could not be Updated.";
    else
    $data["alertsuccess"]="modelvideo Updated Successfully.";
    $data["redirect"]="site/viewmodelvideo";
    $this->load->view("redirect",$data);
    }
    }
    public function deletemodelvideo()
    {
    $access=array("1");
    $this->checkaccess($access);
    $this->modelvideo_model->delete($this->input->get("id"));
    $data["redirect"]="site/viewmodelvideo";
    $this->load->view("redirect",$data);
    }
    public function viewphotographer()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="viewphotographer";
        $data["base_url"]=site_url("site/viewphotographerjson");
        $data["title"]="View photographer";
        $this->load->view("template",$data);
    }
    function viewphotographerjson()
    {
        $elements=array();
        
        $elements[0]=new stdClass();
        $elements[0]->field="`anima_photographer`.`id`";
        $elements[0]->sort="1";
        $elements[0]->header="ID";
        $elements[0]->alias="id";
        
        $elements[1]=new stdClass();
        $elements[1]->field="`anima_photographer`.`name`";
        $elements[1]->sort="1";
        $elements[1]->header="Name";
        $elements[1]->alias="name";
        
        $elements[2]=new stdClass();
        $elements[2]->field="`anima_photographer`.`city`";
        $elements[2]->sort="1";
        $elements[2]->header="City";
        $elements[2]->alias="city";
        
        $elements[3]=new stdClass();
        $elements[3]->field="`anima_photographer`.`order`";
        $elements[3]->sort="1";
        $elements[3]->header="Order";
        $elements[3]->alias="order";
        
        $elements[4]=new stdClass();
        $elements[4]->field="`anima_photographer`.`content`";
        $elements[4]->sort="1";
        $elements[4]->header="Content";
        $elements[4]->alias="content";
        
        $search=$this->input->get_post("search");
        $pageno=$this->input->get_post("pageno");
        $orderby=$this->input->get_post("orderby");
        $orderorder=$this->input->get_post("orderorder");
        $maxrow=$this->input->get_post("maxrow");
        
        if($maxrow=="")
        {
            $maxrow=20;
        }
        if($orderby=="")
        {
            $orderby="id";
            $orderorder="ASC";
        }
        $data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `anima_photographer`");
        $this->load->view("json",$data);
    }

    public function createphotographer()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="createphotographer";
        $data["title"]="Create photographer";
        $this->load->view("template",$data);
    }
    public function createphotographersubmit() 
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("name","Name","trim");
        $this->form_validation->set_rules("city","City","trim");
        $this->form_validation->set_rules("order","Order","trim");
        $this->form_validation->set_rules("content","Content","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="createphotographer";
            $data["title"]="Create photographer";
            $this->load->view("template",$data);
        }
        else
        {
            $name=$this->input->get_post("name");
            $city=$this->input->get_post("city");
            $order=$this->input->get_post("order");
            $content=$this->input->get_post("content");
            if($this->photographer_model->create($name,$city,$order,$content)==0)
                $data["alerterror"]="New photographer could not be created.";
            else
                $data["alertsuccess"]="photographer created Successfully.";
            $data["redirect"]="site/viewphotographer";
            $this->load->view("redirect",$data);
        }
    }
    public function editphotographer()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="editphotographer";
        $data["title"]="Edit photographer";
        $data["before"]=$this->photographer_model->beforeedit($this->input->get("id"));
        $this->load->view("template",$data);
    }
    public function editphotographersubmit()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("id","ID","trim");
        $this->form_validation->set_rules("name","Name","trim");
        $this->form_validation->set_rules("city","City","trim");
        $this->form_validation->set_rules("order","Order","trim");
        $this->form_validation->set_rules("content","Content","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="editphotographer";
            $data["title"]="Edit photographer";
            $data["before"]=$this->photographer_model->beforeedit($this->input->get("id"));
            $this->load->view("template",$data);
        }
        else
        {
            $id=$this->input->get_post("id");
            $name=$this->input->get_post("name");
            $city=$this->input->get_post("city");
            $order=$this->input->get_post("order");
            $content=$this->input->get_post("content");
            if($this->photographer_model->edit($id,$name,$city,$order,$content)==0)
                $data["alerterror"]="New photographer could not be Updated.";
            else
                $data["alertsuccess"]="photographer Updated Successfully.";
            $data["redirect"]="site/viewphotographer";
            $this->load->view("redirect",$data);
        }
    }
    public function deletephotographer()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->photographer_model->delete($this->input->get("id"));
        $data["redirect"]="site/viewphotographer";
        $this->load->view("redirect",$data);
    }
    public function viewphotographeralbum()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="viewphotographeralbum";
        $data["base_url"]=site_url("site/viewphotographeralbumjson");
        $data["title"]="View photographeralbum";
        $this->load->view("template",$data);
    }
    function viewphotographeralbumjson()
    {
        $elements=array();
        
        $elements[0]=new stdClass();
        $elements[0]->field="`anima_photographeralbum`.`id`";
        $elements[0]->sort="1";
        $elements[0]->header="ID";
        $elements[0]->alias="id";
        
        $elements[1]=new stdClass();
        $elements[1]->field="`anima_photographeralbum`.`name`";
        $elements[1]->sort="1";
        $elements[1]->header="Name";
        $elements[1]->alias="name";
        
        $elements[2]=new stdClass();
        $elements[2]->field="`anima_photographeralbum`.`order`";
        $elements[2]->sort="1";
        $elements[2]->header="Order";
        $elements[2]->alias="order";
        
        $elements[3]=new stdClass();
        $elements[3]->field="`anima_photographeralbum`.`image`";
        $elements[3]->sort="1";
        $elements[3]->header="Image";
        $elements[3]->alias="image";
        
        $elements[4]=new stdClass();
        $elements[4]->field="`anima_photographeralbum`.`tab`";
        $elements[4]->sort="1";
        $elements[4]->header="Tab";
        $elements[4]->alias="tab";
        
        $elements[5]=new stdClass();
        $elements[5]->field="`anima_photographeralbum`.`photographer`";
        $elements[5]->sort="1";
        $elements[5]->header="Photographer";
        $elements[5]->alias="photographer";
        
        $search=$this->input->get_post("search");
        $pageno=$this->input->get_post("pageno");
        $orderby=$this->input->get_post("orderby");
        $orderorder=$this->input->get_post("orderorder");
        $maxrow=$this->input->get_post("maxrow");
        
        if($maxrow=="")
        {
            $maxrow=20;
        }
        if($orderby=="")
        {
            $orderby="id";
            $orderorder="ASC";
        }
        $data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `anima_photographeralbum`");
        $this->load->view("json",$data);
    }

    public function createphotographeralbum()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="createphotographeralbum";
        $data["title"]="Create photographeralbum";
        $data['photographer']=$this->photographer_model->getphotographerdropdown();
        $this->load->view("template",$data);
    }
    public function createphotographeralbumsubmit() 
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("name","Name","trim");
        $this->form_validation->set_rules("order","Order","trim");
        $this->form_validation->set_rules("tab","Tab","trim");
        $this->form_validation->set_rules("photographer","Photographer","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="createphotographeralbum";
            $data["title"]="Create photographeralbum";
            $data['photographer']=$this->photographer_model->getphotographerdropdown();
            $this->load->view("template",$data);
        }
        else
        {
            $name=$this->input->get_post("name");
            $order=$this->input->get_post("order");
            $tab=$this->input->get_post("tab");
            $photographer=$this->input->get_post("photographer");
            
            $config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$this->load->library('upload', $config);
			$filename="image";
			$image="";
			if (  $this->upload->do_upload($filename))
			{
				$uploaddata = $this->upload->data();
				$image=$uploaddata['file_name'];
                
                $config_r['source_image']   = './uploads/' . $uploaddata['file_name'];
                $config_r['maintain_ratio'] = TRUE;
                $config_t['create_thumb'] = FALSE;///add this
                $config_r['width']   = 800;
                $config_r['height'] = 800;
                $config_r['quality']    = 100;
                //end of configs

                $this->load->library('image_lib', $config_r); 
                $this->image_lib->initialize($config_r);
                if(!$this->image_lib->resize())
                {
                    echo "Failed." . $this->image_lib->display_errors();
                }  
                else
                {
                    $image=$this->image_lib->dest_image;
                }
                
			}
            
            if($this->photographeralbum_model->create($name,$order,$image,$tab,$photographer)==0)
                $data["alerterror"]="New photographeralbum could not be created.";
            else
                $data["alertsuccess"]="photographeralbum created Successfully.";
            $data["redirect"]="site/viewphotographeralbum";
            $this->load->view("redirect",$data);
        }
    }
    public function editphotographeralbum()
    {
        $access=array("1");
        $this->checkaccess($access);
        $data["page"]="editphotographeralbum";
        $data["title"]="Edit photographeralbum";
        $data['photographer']=$this->photographer_model->getphotographerdropdown();
        $data["before"]=$this->photographeralbum_model->beforeedit($this->input->get("id"));
        $this->load->view("template",$data);
    }
    public function editphotographeralbumsubmit()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->form_validation->set_rules("id","ID","trim");
        $this->form_validation->set_rules("name","Name","trim");
        $this->form_validation->set_rules("order","Order","trim");
        $this->form_validation->set_rules("tab","Tab","trim");
        $this->form_validation->set_rules("photographer","Photographer","trim");
        if($this->form_validation->run()==FALSE)
        {
            $data["alerterror"]=validation_errors();
            $data["page"]="editphotographeralbum";
            $data["title"]="Edit photographeralbum";
            $data['photographer']=$this->photographer_model->getphotographerdropdown();
            $data["before"]=$this->photographeralbum_model->beforeedit($this->input->get("id"));
            $this->load->view("template",$data);
        }
        else
        {
            $id=$this->input->get_post("id");
            $name=$this->input->get_post("name");
            $order=$this->input->get_post("order");
            $tab=$this->input->get_post("tab");
            $photographer=$this->input->get_post("photographer");
            
            $config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$this->load->library('upload', $config);
			$filename="image";
			$image="";
			if (  $this->upload->do_upload($filename))
			{
				$uploaddata = $this->upload->data();
				$image=$uploaddata['file_name'];
                
                $config_r['source_image']   = './uploads/' . $uploaddata['file_name'];
                $config_r['maintain_ratio'] = TRUE;
                $config_t['create_thumb'] = FALSE;///add this
                $config_r['width']   = 800;
                $config_r['height'] = 800;
                $config_r['quality']    = 100;
                //end of configs

                $this->load->library('image_lib', $config_r); 
                $this->image_lib->initialize($config_r);
                if(!$this->image_lib->resize())
                {
                    echo "Failed." . $this->image_lib->display_errors();
                    //return false;
                }  
                else
                {
                    //print_r($this->image_lib->dest_image);
                    //dest_image
                    $image=$this->image_lib->dest_image;
                    //return false;
                }
                
			}
            
            if($image=="")
            {
            $image=$this->photographeralbum_model->getphotographeralbumimagebyid($id);
               // print_r($image);
                $image=$image->image;
            }
            
            if($this->photographeralbum_model->edit($id,$name,$order,$image,$tab,$photographer)==0)
                $data["alerterror"]="New photographeralbum could not be Updated.";
            else
                $data["alertsuccess"]="photographeralbum Updated Successfully.";
            $data["redirect"]="site/viewphotographeralbum";
            $this->load->view("redirect",$data);
        }
    }
        
    public function deletephotographeralbum()
    {
        $access=array("1");
        $this->checkaccess($access);
        $this->photographeralbum_model->delete($this->input->get("id"));
        $data["redirect"]="site/viewphotographeralbum";
        $this->load->view("redirect",$data);
    }
    public function viewalbumimage()
    {
    $access=array("1");
    $this->checkaccess($access);
    $data["page"]="viewalbumimage";
    $data["base_url"]=site_url("site/viewalbumimagejson");
    $data["title"]="View albumimage";
    $this->load->view("template",$data);
    }
    function viewalbumimagejson()
    {
    $elements=array();
    $elements[0]=new stdClass();
    $elements[0]->field="`anima_albumimage`.`id`";
    $elements[0]->sort="1";
    $elements[0]->header="ID";
    $elements[0]->alias="id";
    $elements[1]=new stdClass();
    $elements[1]->field="`anima_albumimage`.`name`";
    $elements[1]->sort="1";
    $elements[1]->header="Name";
    $elements[1]->alias="name";
    $elements[2]=new stdClass();
    $elements[2]->field="`anima_albumimage`.`image`";
    $elements[2]->sort="1";
    $elements[2]->header="Image";
    $elements[2]->alias="image";
    $elements[3]=new stdClass();
    $elements[3]->field="`anima_albumimage`.`type`";
    $elements[3]->sort="1";
    $elements[3]->header="Type";
    $elements[3]->alias="type";
    $elements[4]=new stdClass();
    $elements[4]->field="`anima_albumimage`.`order`";
    $elements[4]->sort="1";
    $elements[4]->header="Order";
    $elements[4]->alias="order";
    $elements[5]=new stdClass();
    $elements[5]->field="`anima_albumimage`.`json`";
    $elements[5]->sort="1";
    $elements[5]->header="Json";
    $elements[5]->alias="json";
    $elements[6]=new stdClass();
    $elements[6]->field="`anima_albumimage`.`photographeralbum`";
    $elements[6]->sort="1";
    $elements[6]->header="Photographer Album";
    $elements[6]->alias="photographeralbum";
    $search=$this->input->get_post("search");
    $pageno=$this->input->get_post("pageno");
    $orderby=$this->input->get_post("orderby");
    $orderorder=$this->input->get_post("orderorder");
    $maxrow=$this->input->get_post("maxrow");
    if($maxrow=="")
    {
    $maxrow=20;
    }
    if($orderby=="")
    {
    $orderby="id";
    $orderorder="ASC";
    }
    $data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `anima_albumimage`");
    $this->load->view("json",$data);
    }

    public function createalbumimage()
    {
    $access=array("1");
    $this->checkaccess($access);
    $data["page"]="createalbumimage";
    $data["title"]="Create albumimage";
    $this->load->view("template",$data);
    }
    public function createalbumimagesubmit() 
    {
    $access=array("1");
    $this->checkaccess($access);
    $this->form_validation->set_rules("name","Name","trim");
    $this->form_validation->set_rules("image","Image","trim");
    $this->form_validation->set_rules("type","Type","trim");
    $this->form_validation->set_rules("order","Order","trim");
    $this->form_validation->set_rules("json","Json","trim");
    $this->form_validation->set_rules("photographeralbum","Photographer Album","trim");
    if($this->form_validation->run()==FALSE)
    {
    $data["alerterror"]=validation_errors();
    $data["page"]="createalbumimage";
    $data["title"]="Create albumimage";
    $this->load->view("template",$data);
    }
    else
    {
    $name=$this->input->get_post("name");
    $image=$this->input->get_post("image");
    $type=$this->input->get_post("type");
    $order=$this->input->get_post("order");
    $json=$this->input->get_post("json");
    $photographeralbum=$this->input->get_post("photographeralbum");
    if($this->albumimage_model->create($name,$image,$type,$order,$json,$photographeralbum)==0)
    $data["alerterror"]="New albumimage could not be created.";
    else
    $data["alertsuccess"]="albumimage created Successfully.";
    $data["redirect"]="site/viewalbumimage";
    $this->load->view("redirect",$data);
    }
    }
    public function editalbumimage()
    {
    $access=array("1");
    $this->checkaccess($access);
    $data["page"]="editalbumimage";
    $data["title"]="Edit albumimage";
    $data["before"]=$this->albumimage_model->beforeedit($this->input->get("id"));
    $this->load->view("template",$data);
    }
    public function editalbumimagesubmit()
    {
    $access=array("1");
    $this->checkaccess($access);
    $this->form_validation->set_rules("id","ID","trim");
    $this->form_validation->set_rules("name","Name","trim");
    $this->form_validation->set_rules("image","Image","trim");
    $this->form_validation->set_rules("type","Type","trim");
    $this->form_validation->set_rules("order","Order","trim");
    $this->form_validation->set_rules("json","Json","trim");
    $this->form_validation->set_rules("photographeralbum","Photographer Album","trim");
    if($this->form_validation->run()==FALSE)
    {
    $data["alerterror"]=validation_errors();
    $data["page"]="editalbumimage";
    $data["title"]="Edit albumimage";
    $data["before"]=$this->albumimage_model->beforeedit($this->input->get("id"));
    $this->load->view("template",$data);
    }
    else
    {
    $id=$this->input->get_post("id");
    $name=$this->input->get_post("name");
    $image=$this->input->get_post("image");
    $type=$this->input->get_post("type");
    $order=$this->input->get_post("order");
    $json=$this->input->get_post("json");
    $photographeralbum=$this->input->get_post("photographeralbum");
    if($this->albumimage_model->edit($id,$name,$image,$type,$order,$json,$photographeralbum)==0)
    $data["alerterror"]="New albumimage could not be Updated.";
    else
    $data["alertsuccess"]="albumimage Updated Successfully.";
    $data["redirect"]="site/viewalbumimage";
    $this->load->view("redirect",$data);
    }
    }
    public function deletealbumimage()
    {
    $access=array("1");
    $this->checkaccess($access);
    $this->albumimage_model->delete($this->input->get("id"));
    $data["redirect"]="site/viewalbumimage";
    $this->load->view("redirect",$data);
    }
    public function viewphotographervideo()
    {
    $access=array("1");
    $this->checkaccess($access);
    $data["page"]="viewphotographervideo";
    $data["base_url"]=site_url("site/viewphotographervideojson");
    $data["title"]="View photographervideo";
    $this->load->view("template",$data);
    }
    function viewphotographervideojson()
    {
    $elements=array();
    $elements[0]=new stdClass();
    $elements[0]->field="`anima_photographervideo`.`id`";
    $elements[0]->sort="1";
    $elements[0]->header="ID";
    $elements[0]->alias="id";
    $elements[1]=new stdClass();
    $elements[1]->field="`anima_photographervideo`.`photographer`";
    $elements[1]->sort="1";
    $elements[1]->header="Photographer";
    $elements[1]->alias="photographer";
    $elements[2]=new stdClass();
    $elements[2]->field="`anima_photographervideo`.`video`";
    $elements[2]->sort="1";
    $elements[2]->header="Video";
    $elements[2]->alias="video";
    $elements[3]=new stdClass();
    $elements[3]->field="`anima_photographervideo`.`order`";
    $elements[3]->sort="1";
    $elements[3]->header="Order";
    $elements[3]->alias="order";
    $elements[4]=new stdClass();
    $elements[4]->field="`anima_photographervideo`.`photographeralbum`";
    $elements[4]->sort="1";
    $elements[4]->header="Photographer Album";
    $elements[4]->alias="photographeralbum";
    $search=$this->input->get_post("search");
    $pageno=$this->input->get_post("pageno");
    $orderby=$this->input->get_post("orderby");
    $orderorder=$this->input->get_post("orderorder");
    $maxrow=$this->input->get_post("maxrow");
    if($maxrow=="")
    {
    $maxrow=20;
    }
    if($orderby=="")
    {
    $orderby="id";
    $orderorder="ASC";
    }
    $data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `anima_photographervideo`");
    $this->load->view("json",$data);
    }

    public function createphotographervideo()
    {
    $access=array("1");
    $this->checkaccess($access);
    $data["page"]="createphotographervideo";
    $data["title"]="Create photographervideo";
    $this->load->view("template",$data);
    }
    public function createphotographervideosubmit() 
    {
    $access=array("1");
    $this->checkaccess($access);
    $this->form_validation->set_rules("photographer","Photographer","trim");
    $this->form_validation->set_rules("video","Video","trim");
    $this->form_validation->set_rules("order","Order","trim");
    $this->form_validation->set_rules("photographeralbum","Photographer Album","trim");
    if($this->form_validation->run()==FALSE)
    {
    $data["alerterror"]=validation_errors();
    $data["page"]="createphotographervideo";
    $data["title"]="Create photographervideo";
    $this->load->view("template",$data);
    }
    else
    {
    $photographer=$this->input->get_post("photographer");
    $video=$this->input->get_post("video");
    $order=$this->input->get_post("order");
    $photographeralbum=$this->input->get_post("photographeralbum");
    if($this->photographervideo_model->create($photographer,$video,$order,$photographeralbum)==0)
    $data["alerterror"]="New photographervideo could not be created.";
    else
    $data["alertsuccess"]="photographervideo created Successfully.";
    $data["redirect"]="site/viewphotographervideo";
    $this->load->view("redirect",$data);
    }
    }
    public function editphotographervideo()
    {
    $access=array("1");
    $this->checkaccess($access);
    $data["page"]="editphotographervideo";
    $data["title"]="Edit photographervideo";
    $data["before"]=$this->photographervideo_model->beforeedit($this->input->get("id"));
    $this->load->view("template",$data);
    }
    public function editphotographervideosubmit()
    {
    $access=array("1");
    $this->checkaccess($access);
    $this->form_validation->set_rules("id","ID","trim");
    $this->form_validation->set_rules("photographer","Photographer","trim");
    $this->form_validation->set_rules("video","Video","trim");
    $this->form_validation->set_rules("order","Order","trim");
    $this->form_validation->set_rules("photographeralbum","Photographer Album","trim");
    if($this->form_validation->run()==FALSE)
    {
    $data["alerterror"]=validation_errors();
    $data["page"]="editphotographervideo";
    $data["title"]="Edit photographervideo";
    $data["before"]=$this->photographervideo_model->beforeedit($this->input->get("id"));
    $this->load->view("template",$data);
    }
    else
    {
    $id=$this->input->get_post("id");
    $photographer=$this->input->get_post("photographer");
    $video=$this->input->get_post("video");
    $order=$this->input->get_post("order");
    $photographeralbum=$this->input->get_post("photographeralbum");
    if($this->photographervideo_model->edit($id,$photographer,$video,$order,$photographeralbum)==0)
    $data["alerterror"]="New photographervideo could not be Updated.";
    else
    $data["alertsuccess"]="photographervideo Updated Successfully.";
    $data["redirect"]="site/viewphotographervideo";
    $this->load->view("redirect",$data);
    }
    }
    public function deletephotographervideo()
    {
    $access=array("1");
    $this->checkaccess($access);
    $this->photographervideo_model->delete($this->input->get("id"));
    $data["redirect"]="site/viewphotographervideo";
    $this->load->view("redirect",$data);
    }
    public function viewarticle()
    {
    $access=array("1");
    $this->checkaccess($access);
    $data["page"]="viewarticle";
    $data["base_url"]=site_url("site/viewarticlejson");
    $data["title"]="View article";
    $this->load->view("template",$data);
    }
    function viewarticlejson()
    {
    $elements=array();
    $elements[0]=new stdClass();
    $elements[0]->field="`anima_article`.`id`";
    $elements[0]->sort="1";
    $elements[0]->header="ID";
    $elements[0]->alias="id";
    $elements[1]=new stdClass();
    $elements[1]->field="`anima_article`.`title`";
    $elements[1]->sort="1";
    $elements[1]->header="Title";
    $elements[1]->alias="title";
    $elements[2]=new stdClass();
    $elements[2]->field="`anima_article`.`json`";
    $elements[2]->sort="1";
    $elements[2]->header="Json";
    $elements[2]->alias="json";
    $elements[3]=new stdClass();
    $elements[3]->field="`anima_article`.`content`";
    $elements[3]->sort="1";
    $elements[3]->header="Content";
    $elements[3]->alias="content";
    $search=$this->input->get_post("search");
    $pageno=$this->input->get_post("pageno");
    $orderby=$this->input->get_post("orderby");
    $orderorder=$this->input->get_post("orderorder");
    $maxrow=$this->input->get_post("maxrow");
    if($maxrow=="")
    {
    $maxrow=20;
    }
    if($orderby=="")
    {
    $orderby="id";
    $orderorder="ASC";
    }
    $data["message"]=$this->chintantable->query($pageno,$maxrow,$orderby,$orderorder,$search,$elements,"FROM `anima_article`");
    $this->load->view("json",$data);
    }

    public function createarticle()
    {
    $access=array("1");
    $this->checkaccess($access);
    $data["page"]="createarticle";
    $data["title"]="Create article";
    $this->load->view("template",$data);
    }
    public function createarticlesubmit() 
    {
    $access=array("1");
    $this->checkaccess($access);
    $this->form_validation->set_rules("title","Title","trim");
    $this->form_validation->set_rules("json","Json","trim");
    $this->form_validation->set_rules("content","Content","trim");
    if($this->form_validation->run()==FALSE)
    {
    $data["alerterror"]=validation_errors();
    $data["page"]="createarticle";
    $data["title"]="Create article";
    $this->load->view("template",$data);
    }
    else
    {
    $title=$this->input->get_post("title");
    $json=$this->input->get_post("json");
    $content=$this->input->get_post("content");
    if($this->article_model->create($title,$json,$content)==0)
    $data["alerterror"]="New article could not be created.";
    else
    $data["alertsuccess"]="article created Successfully.";
    $data["redirect"]="site/viewarticle";
    $this->load->view("redirect",$data);
    }
    }
    public function editarticle()
    {
    $access=array("1");
    $this->checkaccess($access);
    $data["page"]="editarticle";
    $data["title"]="Edit article";
    $data["before"]=$this->article_model->beforeedit($this->input->get("id"));
    $this->load->view("template",$data);
    }
    public function editarticlesubmit()
    {
    $access=array("1");
    $this->checkaccess($access);
    $this->form_validation->set_rules("id","ID","trim");
    $this->form_validation->set_rules("title","Title","trim");
    $this->form_validation->set_rules("json","Json","trim");
    $this->form_validation->set_rules("content","Content","trim");
    if($this->form_validation->run()==FALSE)
    {
    $data["alerterror"]=validation_errors();
    $data["page"]="editarticle";
    $data["title"]="Edit article";
    $data["before"]=$this->article_model->beforeedit($this->input->get("id"));
    $this->load->view("template",$data);
    }
    else
    {
    $id=$this->input->get_post("id");
    $title=$this->input->get_post("title");
    $json=$this->input->get_post("json");
    $content=$this->input->get_post("content");
    if($this->article_model->edit($id,$title,$json,$content)==0)
    $data["alerterror"]="New article could not be Updated.";
    else
    $data["alertsuccess"]="article Updated Successfully.";
    $data["redirect"]="site/viewarticle";
    $this->load->view("redirect",$data);
    }
    }
    public function deletearticle()
    {
    $access=array("1");
    $this->checkaccess($access);
    $this->article_model->delete($this->input->get("id"));
    $data["redirect"]="site/viewarticle";
    $this->load->view("redirect",$data);
    }

}
?>
