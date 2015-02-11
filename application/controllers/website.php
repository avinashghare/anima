<?php
if ( !defined( 'BASEPATH' ) )
	exit( 'No direct script access allowed' );
class Website extends CI_Controller
{
	public function index( )
	{
		$data["page"]="index";
        $data["model1"]=$this->model_model->getmodel1();
        $data["model2"]=$this->model_model->getmodel2();
        $data["model3"]=$this->model_model->getmodel3();
        $this->load->view("frontend",$data);
	}
    
	public function about( )
	{
		$data["page"]="about";
		$data["header"]="aboutheader";
        $this->load->view("frontend",$data);
	}
    
	public function become_model( )
	{
		$data["page"]="become_model";
        $this->load->view("frontend",$data);
	}
	public function females_in_town( )
	{
		$data["page"]="females_in_town";
        $data["model"]=$this->model_model->females_in_town();
//        print_r($data["category"]);
        $this->load->view("frontend",$data);
	}
    
	public function contact( )
	{
		$data["page"]="contact";
        $this->load->view("frontend",$data);
	}
    
	public function hair_makeup( )
	{
		$data["page"]="hair_makeup";
        $data["photographer"]=$this->photographer_model->hair_makeup();
        $this->load->view("frontend",$data);
	}
    
	public function hair_stylists( )
	{
		$data["page"]="hair_stylists";
        $data["photographer"]=$this->photographer_model->hair_makeup();
        $this->load->view("frontend",$data);
	}
	public function stylists( )
	{
		$data["page"]="stylists";
        $data["photographer"]=$this->photographer_model->hair_makeup();
        $this->load->view("frontend",$data);
	}
    
	public function photographers( )
	{
		$data["page"]="photographers";
        $data["photographer"]=$this->photographer_model->hair_makeup();
        $this->load->view("frontend",$data);
	}
	public function gallery( )
	{
		$data["page"]="gallery";
        $modelid=$this->input->get('id');
        $data["model"]=$this->model_model->getmodeldetails($modelid);
        $data["modelimages"]=$this->model_model->getmodelimages($modelid);
        $data["modelvideos"]=$this->model_model->getmodelvideos($modelid);
        $this->load->view("frontend",$data);
	}
    
	public function model_inner( )
	{
		$data["page"]="model_inner";
        $this->load->view("frontend",$data);
	}
	public function photographer_inner( )
	{
		$data["page"]="photographer_inner";
        $this->load->view("frontend",$data);
	}
    
    
}
?>