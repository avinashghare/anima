 <div id="footer">
                    <hr class="footer_top" />
                    <div class="footer_menu">
                <ol>
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
    </div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script src="<?php echo base_url('frontassets/js/jquery.dlmenu.js'); ?>"></script>
<!--		<script src="js/jquery.dlmenu.js"></script>-->
		<script>
			$(function() {
				$( '#dl-menu' ).dlmenu();
			});
		</script>

	<!--/#scripts--> 
    <!--<script type="text/javascript" src="js/jquery.js"></script>-->
    
    <script type="text/javascript" src="<?php echo base_url('frontassets/js/custom.js'); ?>"></script>
    <script type="text/javascript" src="<?php echo base_url('frontassets/js/jquery.instastream.js'); ?>"></script>
<!--    <script type="text/javascript" src="js/custom.js"></script>-->
<!--    <script type="text/javascript" src="js/jquery.instastream.js"></script>-->
    <!--<script type="text/javascript" src="js/jquery.instastream.js"></script>-->
    <script type="text/javascript">
        

        $(window).scroll(function () {
            $('.load2').each(function (i) {
                var bottom_of_object = $(this).position().top + $(this).outerHeight();
                var bottom_of_window = $(window).scrollTop() + $(window).height();
                var bottom_of_object = bottom_of_object - 450;
                if (bottom_of_window > bottom_of_object) {
                    $('.load3').delay(4000).fadeOut(1000);
                    $('.load4').delay(5000).fadeIn(1000);
                }
            });
        });
        

    </script>
    
    
</body>

</html>