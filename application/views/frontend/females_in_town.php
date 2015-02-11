<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demo.themeregion.com/doors -fade-slider/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 03 Nov 2014 12:18:21 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<!--title-->
    <title>Anima Creative Management</title>
	
	<!--CSS-->
<!--
	<link href="css/style.css" rel="stylesheet">	
	<link href="css/dl-menu.css" rel="stylesheet">	
	<link href="css/insta.css" rel="stylesheet">	
    <script src="js/modernizr.custom.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/jquery.dlmenu.js"></script>
-->
    
    <link href="<?php echo base_url('frontassets/css/style.css'); ?>" rel="stylesheet">
    <link href="<?php echo base_url('frontassets/css/insta.css'); ?>" rel="stylesheet">
    <link href="<?php echo base_url('frontassets/css/dl-menu.css'); ?>" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="<?php echo base_url('frontassets/js/modernizr.custom.js'); ?>"></script>
    <script src="<?php echo base_url('frontassets/js/jquery.dlmenu.js'); ?>"></script>
    
		<script>
			$(function() {
				$( '#dl-menu' ).dlmenu();
			});
		</script>
	<script type="text/javascript">

     $(document).ready(function () {
         $('.model_single img, .model_name').delay(1000).fadeIn('slow');

     });
    </script>

    <style>
        .model_single img, .model_name{display: none;}
</style>
</head><!--/head-->
<body>
	<!-- Page Loader -->
	<!--<div class="preloader">
        <div id="loaderImage"></div>
    </div>-->
    <div class="wrapper">
   <!-- <center><a href="index.php"><img class="logo" src="images/logo.png" alt="logo"></a></center>-->

  <?php
$this->load->view("frontend/header"); 
?>

  
     
        <div class="container">
            <div class="models">
               
                <?php
                foreach($model as $row)
                {
                ?>

                <div class="col-5 model_single"><a href="<?php echo site_url('website/gallery?id=').$row->id;?>"><img src="<?php echo base_url('uploads')."/".$row->image; ?>" class="displayed" alt="<?php echo $row->name;?>"><span class="model_name"><?php echo $row->name;?></span></a></div>
                <?php
                }
                ?>
            </div>
        </div>
       <div id="footer">
                <hr class="footer_top" />
                <div class="footer_menu">
                <ol class="pxmenu">
                    <li>Contact Us</li>
                    <li>Terms & Conditions</li>
                    <li>Privacy Policy</li>
                    <li>Careers</li>
                    <li>FAQs</li>
                </ol>
                </div>
                <div class="copyright">© Copyright ANIMA CREATIVES 2014</div>
                <div class="hepta">MADE WITH LOVE BY HEPTA</div>
            </div>
    </div>
	
	

	<!--/#scripts--> 
    
    <!--<script type="text/javascript" src="js/jquery.js"></script>-->
<!--    <script type="text/javascript" src="js/custom.js"></script>-->
    <script type="text/javascript" src="<?php echo base_url('frontassets/js/custom.js'); ?>"></script>
    <script type="text/javascript" src="<?php echo base_url('frontassets/js/jquery.instastream.js'); ?>"></script>
<!--    <script type="text/javascript" src="js/jquery.instastream.js"></script>-->
    
</body>

</html>