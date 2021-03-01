<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>S&amp;S Parkings</title>

    <link rel="shortcut icon" href="images/a1.png" /> <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="vendors/animate.css/animate.min.css" rel="stylesheet">
	<!-- PNotify -->
    <link href="vendors/pnotify/dist/pnotify.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>
  <body class="login">
    <!--video autoplay muted loop id="myVideo" style="position:fixed;height:100%;width:100%">
		<source src="https://www.w3schools.com/howto/rain.mp4" type="video/mp4">
			Your browser does not support HTML5 video.
	</video-->
	<div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="recovery"></a>
	  <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
	  <!--Login Form-->
		<div class="animate form login_form">
          <section class="login_content">
            <form action="Login" method="post" autocomplete="off">
              <h1>Login Here</h1>
              <div>
                <input name="Uname" type="text" class="form-control" placeholder="Username" pattern="[A-Za-z]{1,}" required="" />
              </div>
              <div>
                <input name="Upass" type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <input type="submit" class="btn btn-default" placeholder="Login"/>
                <a class="reset_pass" href="#recovery">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><img height="42" width="42" src="images/a11.png"> S&amp;S Parkings</h1>
                  <p>©2018 All Rights Reserved by S&amp;S Parkings</p>
                </div>
              </div>
            </form>
          </section>
        </div>
		<!--Password Recovery Form-->
		<div class="animate form recovery_form">
          <section class="login_content">
            <form action="PasswordRecovery" method="post" autocomplete="off">
              <h1>Password Recovery</h1>
              <div>
                <input type="email" id="nmail" name="nmail" class="form-control" placeholder="Email" required="" />
              </div>
              <div>
                <input type="email" id="cmail" name="cmail" class="form-control" placeholder="Confirm Email" required="" />
              </div>
              <div>
                <input type="submit" id="sbtn" class="btn btn-default submit" href="index.jsp" value="Reset"/>
                <a class="reset_pass" href="#signin">Click Here to Login!</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><img height="42" width="42" src="images/a11.png"> S&amp;S Parkings</h1>
                  <p>©2018 All Rights Reserved by S&amp;S Parkings</p>
                </div>
              </div>
            </form>
          </section>
        </div>
		<!--SignUP Form-->
        <div id="register" class="animate form registration_form">
          <section class="login_content">
		  <form action="Register" method="post" enctype="multipart/form-data" autocomplete="off">
              <h1>Create Account</h1>
			  <div>
                <input name="Uname" type="text" class="form-control" pattern="[A-Za-z]{1,}" placeholder="Name" required="" />
              </div>
			  <div>
                <input name="Umail" type="email" class="form-control" placeholder="Email" required="" />
              </div>
			  <div>
				<input name="Uphno" type="text" class="form-control" maxlength="10" pattern="\d{10}" title="Enter Only Numbers (0-9)" placeholder="Phone" required="" />
              </div>
              <div>
                <input name="Upass" type="password" class="form-control" placeholder="Password" required="" title="Must contain at least 8 or more characters" />
              </div>
              <div>
              	<input name="Uimg" type="file" name="pic" placeholder="Selct Image" class="btn btn-primary" style="width:100%" accept=".jpg,.JPG,.JPEG,.jpeg,.png,.PNG|image/*">
              </div>
              <div>
                <input type="submit" class="btn btn-default" style="margin-left:0px;float:none;" placeholder="Register"/>
              </div>
				
              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><img height="42" width="42" src="images/a11.png"> S&amp;S Parkings</h1>
                  <p><span class="fa fa-copyright"></span>2018 All Rights Reserved by S&amp;S Parkings</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
    
    
    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
  </body>
   <script>
 $("input[type=email]").keyup(function(){
     if($("#nmail").val() != $("#cmail").val()){
     	$("#nmail").css("color", "red");
     	$("#nmail").css("border-color", "red");
     	$("#cmail").css("color", "red");
     	$("#cmail").css("border-color", "red");
     	$("#sbtn").prop('disabled', true);
     }else{
	  $("#cmail").css("border-color", "green");
	  $("#cmail").css("color", "green");
	  $("#nmail").css("border-color", "green");
	  $("#nmail").css("color", "green");
	  $("#sbtn").prop('disabled', false);
     }
 });
 </script>
</html>