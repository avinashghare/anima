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
	<link href="css/style.css" rel="stylesheet">	
	<link href="css/dl-menu.css" rel="stylesheet">	
	<link href="css/insta.css" rel="stylesheet">	
   <script src="js/modernizr.custom.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/jquery.dlmenu.js"></script>
		<script>
			$(function() {
				$( '#dl-menu' ).dlmenu();
			});
		</script>
	<script type="text/javascript">

     $(document).ready(function () {
        $('.model_single img, .photo_name').delay(1000).fadeIn('slow');

        $('#editorial_tab').addClass('tab_active');
        $('#editorial').fadeIn();

        $('#editorial_tab').click(function () {
            $('#editorial').fadeIn();
            $('#beauty').fadeOut();
            $('#advertising').fadeOut();
            $('#videos').fadeOut();
            $('#bio').fadeOut();
            $('#editorial_tab').addClass('tab_active');
            $('#beauty_tab').removeClass('tab_active');
            $('#advertising_tab').removeClass('tab_active');
            $('#videos_tab').removeClass('tab_active');
            $('#bio_tab').removeClass('tab_active');
        });

        $('#beauty_tab').click(function () {
            $('#editorial').fadeOut();
            $('#beauty').fadeIn();
            $('#advertising').fadeOut();
            $('#videos').fadeOut();
            $('#bio').fadeOut();
            $('#editorial_tab').removeClass('tab_active');
            $('#beauty_tab').addClass('tab_active');
            $('#advertising_tab').removeClass('tab_active');
            $('#videos_tab').removeClass('tab_active');
            $('#bio_tab').removeClass('tab_active');
        });

        $('#advertising_tab').click(function () {
            $('#editorial').fadeOut();
            $('#beauty').fadeOut();
            $('#advertising').fadeIn();
            $('#videos').fadeOut();
            $('#bio').fadeOut();
            $('#editorial_tab').removeClass('tab_active');
            $('#beauty_tab').removeClass('tab_active');
            $('#advertising_tab').addClass('tab_active');
            $('#videos_tab').removeClass('tab_active');
            $('#bio_tab').removeClass('tab_active');
        });

        $('#videos_tab').click(function () {
            $('#editorial').fadeOut();
            $('#beauty').fadeOut();
            $('#advertising').fadeOut();
            $('#videos').fadeIn();
            $('#bio').fadeOut();
            $('#editorial_tab').removeClass('tab_active');
            $('#beauty_tab').removeClass('tab_active');
            $('#advertising_tab').removeClass('tab_active');
            $('#videos_tab').addClass('tab_active');
            $('#bio_tab').removeClass('tab_active');
        });

        $('#bio_tab').click(function () {
            $('#editorial').fadeOut();
            $('#beauty').fadeOut();
            $('#advertising').fadeOut();
            $('#videos').fadeOut();
            $('#bio').fadeIn();
            $('#editorial_tab').removeClass('tab_active');
            $('#beauty_tab').removeClass('tab_active');
            $('#advertising_tab').removeClass('tab_active');
            $('#videos_tab').removeClass('tab_active');
            $('#bio_tab').addClass('tab_active');
        });

        

     });
    </script>

    <style>
        .model_single img, .photo_name{display: none;}
</style>
</head><!--/head-->
<body>
	<!-- Page Loader -->
	<!--<div class="preloader">
        <div id="loaderImage"></div>
    </div>-->
    <div class="wrapper">