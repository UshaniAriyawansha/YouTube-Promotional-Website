<?php
require_once("php/func/key.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>TraffForYou | Foget</title>
    <meta content="" name="keywords">
    <meta content="" name="author">
    <meta content="" name="description">
    <?php require_once("include/head.php"); ?>
    <style>
        #true,#false{
            display:none;
        }
    </style>
</head>

<body>
    <div id="wrapper">
        <?php require_once("include/header.php"); ?>

    <!-- for banner ads
<div >
    <br><br>
    <img src="images/logo-1.png">
</div>

for banner ads -->  
            <section data-bgimage="url(images/background/5.png) bottom" >
                
                <br>    
                <div id="get"></div>
			</section>
			
			<section class="pt60 pb60 bg-color-2 text-light">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-md-8 mb-sm-30 text-lg-left text-sm-center">
							<h3 class="no-bottom">Awesomeness begin here. Are you ready?</h3>
						</div>
						
						<div class="col-md-4 text-lg-right text-sm-center">
							<a href="#" class="btn-custom capsule med">Let's do it!</a>
						</div>
					</div>
				</div>
			</section>

        </div>
        <!-- content close -->

        <!-- footer begin -->
            <footer class="footer-light">
                <div class="container">
                    <div class="row">
						<div class="col-lg-4">
                            <div class="widget">
                                <a href="index.html"><img alt="" class="logo" src="images/logo-1.png"></a>
                                <div class="spacer-20"></div>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem.</p>
                            </div>
                        </div>
						
                        <div class="col-lg-2">
                                    <div class="widget">
                                        <h5>Demo</h5>
                                        <ul>
											<li><a href="index.html">Saas</a></li>
                                            <li><a href="index-startup.html">Startup</a></li>
                                            <li><a href="index-coworking.html">Co-working</a></li>
                                            <li><a href="index-agency.html">Agency</a></li>
                                            <li><a href="index-apps.html">Apps</a></li>
											<li><a href="service-single.html">Email Marketing</a></li>
											<li><a href="pricing-plans.html">Pricing Plan</a></li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="col-lg-2">
                                    <div class="widget">
                                        <h5>Pages</h5>
                                        <ul>
                                            <li><a href="about-us.html">About Us</a></li>
                                            <li><a href="our-team.html">Our Team</a></li>
                                            <li><a href="our-history.html">Our History</a></li>
                                            <li><a href="faq.html">FAQs</a></li>
                                            <li><a href="news.html">News</a></li>
                                            <li><a href="gallery.html">Gallery</a></li>
                                            <li><a href="login-2.html">Login</a></li>
                                        </ul>
                                    </div>
                                </div>


                        <div class="col-lg-4">
                            <div class="widget">
                                <h5>Newsletter</h5>

                                <p>Signup for our newsletter to get the latest news, updates and special offers in your inbox.</p>
                                <form action="blank.php" class="row" id="form_subscribe" method="post" name="form_subscribe">
                                    <div class="col text-center">
                                        <input class="form-control" id="name_1" name="name_1" placeholder="enter your email" type="text" /> <a href="#" id="btn-submit"><i class="arrow_right"></i></a>
                                        <div class="clearfix"></div>
                                    </div>
                                </form>
                                <div class="spacer-10"></div>
                                <small>Your email is safe with us. We don't spam.</small>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 sm-text-center mb-sm-30">
                            <div class="mt10">&copy; Copyright 2020 - Bluetec by Designesia</div>
                        </div>

                        <div class="col-md-6 text-md-right text-sm-left">
                            <div class="social-icons">
                                <a href="#"><i class="fa fa-facebook fa-lg"></i></a>
                                <a href="#"><i class="fa fa-twitter fa-lg"></i></a>
                                <a href="#"><i class="fa fa-linkedin fa-lg"></i></a>
                                <a href="#"><i class="fa fa-google-plus fa-lg"></i></a>
                                <a href="#"><i class="fa fa-rss fa-lg"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- footer close -->
		
        
        
		<div id="preloader">
                <div class="spinner">
                    <div class="bounce1"></div>
                    <div class="bounce2"></div>
                    <div class="bounce3"></div>
                </div>
            </div>
        </div>		
		
<script>

function get(){
    $.ajax({
        url: "php/get_videos.php",
        method: "POST",
        data: {type:3},
        datatype: "text",
        success: function (html) {
            alert(html);/*
            const data = JSON.parse(html);
            for(var i=0;i<data.length;i++){
                document.getElementById("get").innerHTML += "                <div class='container'>                    <div class='row'>                        <div class='col-lg-4 col-md-12 mb-4'>                            <a>                                <img class='img-fluid z-depth-1' src='https://img.youtube.com/vi/"+data[i].link+"/maxresdefault.jpg' alt='video' data-toggle='modal' data-target='#modal1'>                            </a>                        </div>                    </div>                </div>";*/
            }
        },
    });
}
get();
</script>

        <!-- Javascript Files
    ================================================== -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/easing.js"></script>
        <script src="js/owl.carousel.js"></script>
        <script src="js/validation.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/enquire.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.plugin.js"></script>
        <script src="js/typed.js"></script>
		<script src="js/jquery.countTo.js"></script>
        <script src="js/jquery.countdown.js"></script>
        <script src="js/designesia.js"></script>


</body>

</html>