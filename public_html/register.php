<?php
require_once("php/func/key.php");
if(isset($_SESSION['user'])){
    header("Location:account.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>register</title>
    <meta content="" name="keywords">
    <meta content="" name="author">
    <meta content="" name="description">
    <?php require_once("include/head.php"); ?>
    <style>
        #regtrue,#regfalse{
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
                                    <form action='blank.php' class="row" id='form_subscribe' method="post" name="myForm">
                                <div class="col-md-12 text-center">
									<h1>Welcome !</h1>
									<p>To Trafforyou.com</p>
                                </div>
                                <div class="clearfix"></div>
                            </form>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>
            <!-- section close -->
            

            <section class="no-top" data-bgimage="url(images/background/3.png) top">
                <div class="container" id="topp">
					<div class="row">
						<div class="col-md-8 offset-md-2">

							<h3>Don't have an account? Register now.</h3>
                            <p>Create your account. It's free and only take a minute</p>

							<!-- Alerts -->
                                <div class="alert alert-success" role="alert" id="regtrue">
                                </div>
                                <div class="alert alert-danger" role="alert" id="regfalse">
                                </div>
                            <!-- Alerts -->

							<div class="spacer-10"></div>
							
							<form name="contactForm" action="javascript:void(0)" id='contact_form' class="form-border">

                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label>Name : <span class="text-danger">*</span></label>
                                            <input type='text' id='name' class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label>Email Address : <span class="text-danger">*</span></label>
                                            <input type='email' id='mail' class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label>Choose a Username : <span class="text-danger">*</span></label>
                                            <input type='text' id='user' class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <div class="form-group">
                                                <label for="sel1">Gender : <span class="text-danger">*</span></label>
                                                <select class="form-control" id="gend">
                                                    <option value="selected">Select your gender</option>
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label>Password : <span class="text-danger">*</span></label>
                                            <input type='password' id='pass' class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label>Re-enter Password : <span class="text-danger">*</span></label>
                                            <input type='password' id='confpass' class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="field-set">
                                            <label>Referral Code : </label>

                                            <input type='text'  class="form-control" id="ref">
                                            <p><span class="text-danger">*</span> if you don't have a referral code leave this blank</p>
                                            
                                        </div>
                                    </div>


                                    <div class="col-md-12">

                                        <div id='submit' class="pull-left">
                                            <button class="btn btn-custom color-2" onclick="reg()">Register Now</button>
                                            <p class="pt-2">Have an account? <a href="login.php">Login</a></p>
                                        </div>
                            
                                    </div>

                                </div>
                            </form>
							
						</div>
                    </div>
				</div>
            </section>
			
			<section class="pt60 pb60 bg-color-2 text-light">
				<div class="container">
					<div class="row align-items-center">
						
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
function reg(){
    var name = document.getElementById("name").value;
    var gend = document.getElementById("gend").value;
    var mail = document.getElementById("mail").value;
    var user = document.getElementById("user").value;
    var ref  = document.getElementById("ref").value;
    var key  = document.getElementById("key").value;
    var pass = document.getElementById("pass").value;
    var confpass = document.getElementById("confpass").value;
    $.ajax({
        url: "php/register.php",
        method: "POST",
        data: {name:name,ref:ref,gend:gend,mail:mail,pass:pass,confpass:confpass,key:key,user:user},
        datatype: "text",
        success: function (html) {
            const res = JSON.parse(html);
            if(res.msg==="true"){
                document.getElementById("regtrue").style.display = "block";
                document.getElementById("regfalse").style.display = "none";
                document.getElementById("regtrue").innerHTML = res.val;
                document.getElementById("pass").value = "";
                document.getElementById("confpass").value = "";
                document.getElementById("topp").scrollIntoView();
            }else{
                document.getElementById("regfalse").style.display = "block";
                document.getElementById("regtrue").style.display = "none";
                document.getElementById("regfalse").innerHTML = res.val;
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