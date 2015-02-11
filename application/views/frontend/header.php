<center><a href="index.php"><img class="logo" src="<?php echo base_url('frontassets/images/logo.png'); ?>" alt="logo"></a></center>
<header class="menu">
       <?php 
//echo base_url('frontassets/images/logo.png');
    ?>
        <ul>
        <li><a href="#" id="model">Models</a>
            <ul class="drop_down">
                <li><a href="<?php echo site_url('website/females_in_town'); ?>">Female In Town</a></li>
                <li><a href="#">Female Out of Town</a></li>
                <li><a href="#">Male In Town</a></li>
                <li><a href="#">Male Out of Town</a></li>
            </ul>
        </li>
        <li><a href="#">Creative Artists</a>
            <ul class="drop_down">
                <li><a href="<?php echo site_url('website/photographers'); ?>">Photographers</a></li>
                <li><a href="<?php echo site_url('website/hair_makeup'); ?>">Hair &amp; Make-up Artists</a></li>
                <li><a href="<?php echo site_url('website/hair_stylists'); ?>">Hair Stylists</a></li>
                <li><a href="<?php echo site_url('website/stylists'); ?>">Stylists</a></li>
            </ul>
        </li>
        <li><a href="#">Agency</a>
            <ul class="drop_down about_drop">
                <li><a href="<?php echo site_url('website/about'); ?>">About Us</a></li>
                <li><a href="<?php echo site_url('website/become_model'); ?>">Become A Model</a></li>
                <li><a href="<?php echo site_url('website/contact'); ?>">Contact Us</a></li>
            </ul>
        </li>
        <li><a href="<?php echo site_url('website/news'); ?>">News</a></li>
        </ul>
    </header>


<div id="dl-menu" class="dl-menuwrapper">
		<a href="index.php"><div class="mobile_logo"></div></a>
        	<?php 
//echo site_url('site/females_in_town?id=').$row->photographeralbum.'&photographeralbumimage='.$row->id;
    ?>			
        			
       <div class="dl-trigger menu_click"></div>
						<ul class="dl-menu">
							<li>
								<a href="#">Models</a>
								<ul class="dl-submenu">
								    <li><a href="<?php echo site_url('website/females_in_town'); ?>">Female In Town</a></li>
                                    <li><a href="#">Female Out of Town</a></li>
                                    <li><a href="#">Male In Town</a></li>
                                    <li><a href="#">Male Out of Town</a></li>
                                </ul>
							</li>
                            <li><a href="#">Creative Artists</a>
                                        <ul class="dl-submenu">
                                            <li><a href="<?php echo site_url('website/photographers'); ?>">Photographers</a></li>
                                            <li><a href="<?php echo site_url('website/hair_makeup'); ?>">Hair &amp; Make-up Artists</a></li>
                                            <li><a href="<?php echo site_url('website/hair_stylists'); ?>">Hair Stylists</a></li>
                                            <li><a href="<?php echo site_url('website/stylists'); ?>">Stylists</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Agency</a>
                                        <ul class="dl-submenu">
                                            <li><a href="<?php echo site_url('website/about'); ?>">About Us</a></li>
                                            <li><a href="<?php echo site_url('website/bacome_model'); ?>">Become A Model</a></li>
                                            <li><a href="<?php echo site_url('website/contact'); ?>">Contact Us</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="<?php echo site_url('website/news'); ?>">News</a></li>
                            </ul>
					</div>

        <!--<header class="mobile_menu"> 
        <a href="index.php"><div class="mobile_logo"></div></a>
        <ul class="first_level">
        <li id="second_level"><a href="#">Models</a>
            <ul class="second_level">
                <li id="back"><a href="#">Back</a></li>
                <li><a href="females_in_town.php">Female In Town</a></li>
                <li><a href="#">Female Out of Town</a></li>
                <li><a href="#">Male In Town</a></li>
                <li><a href="#">Male Out of Town</a></li>
            </ul>    
        </li>
        <li><a href="#">Creative Artists</a>
            <ul class="second_level">
                <li id="back"><a href="#">Back</a></li>
                <li><a href="photographers.php">Photographers</a></li>
                <li><a href="hair_makeup.php">Hair &amp; Make-up Artists</a></li>
                <li><a href="hair_stylists.php">Hair Stylists</a></li>
                <li><a href="stylists.php">Stylists</a></li>
            </ul>
        </li>    
        <li><a href="#">Agency</a>
            <ul class="second_level">
                <li id="back"><a href="#">Back</a></li>
                <li><a href="about.php">About Us</a></li>
                <li><a href="become_model.php">Become A Model</a></li>
                <li><a href="contact.php">Contact Us</a></li>
            </ul>
        </li>
        <li><a href="news.php">News</a></li>  
        </ul>
        <div class="menu_click"></div>
    </header>-->   

  