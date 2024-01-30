<?php
require_once("php/func/key.php");
if(isset($_SESSION['user'])){
    header("Location:account.php");
}
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
        <div class="no-bottom no-top" id="content">
            <div id="top"></div>
            
            <!-- section begin -->
            <section id="subheader" data-bgimage="url(images/background/5.png) bottom">
                    <div class="center-y relative text-center" data-scroll-speed="4">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 offset-md-2">
                                    <div class="row">
                                <div class="col-md-12 text-center">
									<h1>Forgot Password?</h1>
									
                                </div>
                                <div class="clearfix"></div>
                            </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>
            <!-- section close -->
            

            <section class="no-top" data-bgimage="url(images/background/3.png) top">
                <div class="container" id="topp">
					<div class="row">
						<div class="col-md-6 offset-md-3">
							<div class="form-border">

                            <!-- Alerts -->
                                <div class="alert alert-success" role="alert" id="true"></div>
                                <div class="alert alert-danger" role="alert" id="false"></div>
                            <!-- Alerts -->
                                    <h3>Reset your password</h3>

                                            <div class="field-set">
                                                <label>Email:</label>
                                                <input type='email' id='email' class="form-control" placeholder="">
                                            </div>

                                    <div id='submit' class="pull-left pt-2">
                                        <input type='submit' onclick="foget()" value='Reset' class="btn btn-custom color-2">
                                        <p class="pt-2">Remember your password? <a href="login.php">Login</a></p>
            
                                    </div>
									
                                </form>
						</div>
                    </div>
				</div>
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
        <?php echo file_get_contents("include/footer.php"); 
        echo "<input type='hidden' id='key' value='{$_SESSION['key']}'>";
        ?>
		<div id="preloader">
                <div class="spinner">
                    <div class="bounce1"></div>
                    <div class="bounce2"></div>
                    <div class="bounce3"></div>
                </div>
            </div>
        </div>		
		

<script>
function foget(){
    var email = document.getElementById("email").value;
    var key = document.getElementById("key").value;
    $.ajax({
        url: "php/foget.php",
        method: "POST",
        data: {email:email,key:key},
        datatype: "text",
        success: function (html) {
            const res = JSON.parse(html);
            if(res.msg==="true"){
                document.getElementById("true").style.display = "block";
                document.getElementById("false").style.display = "none";
                document.getElementById("true").innerHTML = res.val;
                document.getElementById("email").value = "";
            }else{
                document.getElementById("false").style.display = "block";
                document.getElementById("true").style.display = "none";
                document.getElementById("false").innerHTML = res.val;
                document.getElementById("topp").scrollIntoView();
            }
        },
    });
}
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