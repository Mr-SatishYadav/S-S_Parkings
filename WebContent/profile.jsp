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
    <!-- bootstrap-daterangepicker -->
    <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- PNotify -->
    <link href="vendors/pnotify/dist/pnotify.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.jsp" class="site_title"><img height="42" width="42" src="images/a11.png"> <span>S&amp;S Parkings</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/userimg/${logdtl[5]}" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>${logdtl[1]}</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a href="index.jsp"><i class="fa fa-home"></i> Home </a></li>
				  <li><a href="aboutus.jsp"><i class="fa fa-user"></i> About us </a></li>
				  <li><a href="team.jsp"><i class="fa fa-users"></i> Our Team </a></li>
				  <li><a><i class="fa fa-life-ring"></i> Support <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
						<li><a href="contactus.jsp"><i class="fa fa-envelope"></i> Contact us </a></li>
						<li><a href="T&C.jsp"><i class="fa fa-list"></i> Terms & Conditions </a></li>
						<li><a href="version.jsp"><i class="fa fa-info-circle"></i> Version </a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="logout.jsp">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/userimg/${logdtl[5]}" alt="">${logdtl[1]}
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="profile.jsp"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="contactus.jsp">Help</a></li>
                    <li><a href="logout.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="images/userimg/${logdtl[5]}" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/userimg/${logdtl[5]}" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/userimg/${logdtl[5]}" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/userimg/${logdtl[5]}" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>User Profile <small>Details</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="col-md-3 col-sm-3 col-xs-12 profile_left">
                      <div class="profile_img">
                        <div id="crop-avatar">
                          <!-- Current avatar -->
                          <img class="img-responsive avatar-view" src="images/userimg/${logdtl[5]}" alt="Avatar" title="Change the avatar">
                        </div>
                      </div>
                      <h3>${logdtl[1]}</h3>

                      <ul class="list-unstyled user_data">
                        <li>
                          <i class="fa fa-phone user-profile-icon"></i> ${logdtl[3]}
                        </li>
                        <li>
                        	<i class="fa fa-map-marker user-profile-icon"></i> ${logdtl[9]}, ${logdtl[8]}, ${logdtl[7]}.
                        </li>
                        <li class="m-top-xs">
                          <i class="fa fa-envelope user-profile-icon"></i> ${logdtl[4]}
                        </li>
                      </ul>
					  <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg"><i class="fa fa-edit m-right-xs"></i>Edit Details</button>
					  <button type="button" class="btn btn-danger" data-toggle="modal" data-target=".bs-example-modal-sm">Change Password</button>
                      <br />
                      
						<!-- Model form -->
						
						<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">

                        <div class="modal-header">
                          <h4 class="modal-title" id="myModalLabel"><h2>Profile Details <small>Edit details which is Editable</small></h2></h4>
                        </div>
                         <form class="form-horizontal form-label-left input_mask" action="UpdateDtls" method="Post">
                        <div class="modal-body">
                        <input type="hidden" name="uid" value="${logdtl[0]}">
                      <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                        <input type="text" readonly="readonly" class="form-control has-feedback-left" id="inputSuccess2" placeholder="${logdtl[1]}">
                        <span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
                      </div>

                      <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                        <input type="text" readonly="readonly" class="form-control" id="inputSuccess5" placeholder="${logdtl[3]}">
                        <span class="fa fa-phone form-control-feedback right" aria-hidden="true"></span>
                      </div>
                      
                      <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                        <input type="text" readonly="readonly" class="form-control has-feedback-left" id="inputSuccess4" placeholder="${logdtl[4]}">
                        <span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
                      </div>

                      <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                        <input type="text" class="form-control" id="country" name="country" required="">
                        <span class="fa fa-globe form-control-feedback right" aria-hidden="true"></span>
                      </div>

                      <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                        <input type="text" class="form-control has-feedback-left" id="address" name="address" placeholder="Address" required="">
                        <span class="fa fa-home form-control-feedback left" aria-hidden="true"></span>
                      </div>

                      <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                        <input type="text" class="form-control" id="city" name="city" placeholder="City" required="">
                        <span class="fa fa-crosshairs form-control-feedback right" aria-hidden="true"></span>
                      </div>
                      
                      <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                        <input type="text" class="form-control has-feedback-left" id="state" name="state" placeholder="State" required="">
                        <span class="fa fa-location-arrow form-control-feedback left" aria-hidden="true"></span>
                      </div>
                      
                      <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                        <input type="number" class="form-control" id="zip" name="zip" placeholder="ZIP Code" maxlength="4" required="">
                        <span class="fa fa-file-zip-o form-control-feedback right" aria-hidden="true"></span>
                      </div>

                        </div>
                         <div class="clearfix"></div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                          <button class="btn btn-primary" type="reset">Reset</button>
                          <button type="submit" class="btn btn-success">Save changes</button>
                        </div>
						 </form>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Password Model -->
                  <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">

                        <div class="modal-header">
                          <h4 class="modal-title" id="myModalLabel2">Change Password</h4>
                        </div>
                        <form class="form-horizontal" action="ChangePassword" method="Post" novalidate>
                        <div class="modal-body">
                      	<input type="hidden" name="cuid" value="${logdtl[0]}"/>
                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                          <input type="text" name="opass" id="Oldpass" required="" placeholder="Old Password" class="form-control">
                        </div>
                      
                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                          <input type="password" name="npass" id="npass" data-validate-linked="npass" required="" placeholder="New Password" class="form-control">
                        </div>
                    
                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                          <input type="password" name="cpass" id="cpass" required="" placeholder="Confirm Password" class="form-control">
                        <span id="icn" class="form-control-feedback right glyphicon glyphicon-ok"></span>
                      </div>
                        
                        </div>
                         <div class="clearfix"></div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                          <button id="cpbtn" type="submit" class="btn btn-primary">Save changes</button>
                        </div>
						</form>
                      </div>
                    </div>
                  </div>
                   <!-- Model Form end -->
                   </div>
                    <div class="col-md-9 col-sm-9 col-xs-12">
					 <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Booking</a>
                          </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                          <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                            <!-- start recent activity -->
                            <ul class="messages">
                              ${bookdtl}
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <link rel="shortcut icon" href="images/a1.png" /> <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
    <!-- morris.js -->
    <script src="vendors/raphael/raphael.min.js"></script>
    <script src="vendors/morris.js/morris.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="vendors/moment/min/moment.min.js"></script>
    <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
    <!-- SweetAlert -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  </body>
  <script>
  $(document).ready(function(){
	  if("${logdtl[6]}"!=""){
		  $("#country").attr("value","${logdtl[7]}");
		  $("#address").attr("value","${logdtl[6]}");
		  $("#city").attr("value","${logdtl[9]}");
		  $("#state").attr("value","${logdtl[8]}");
		  $("#zip").attr("value","${logdtl[10]}");
		  $("#icn").css("display","none");
	  }
});
 </script>
 
 <script>
 $("input[type=password]").keyup(function(){
     if($("#npass").val() != $("#cpass").val()){
     	$("#icn").css("display","none");
     	$("#npass").css("color", "red");
     	$("#npass").css("border-color", "red");
     	$("#cpass").css("color", "red");
     	$("#cpass").css("border-color", "red");
     	$("#cpbtn").prop('disabled', true);
     }else{
   	  $("#icn").css({'color':'green','display':'block'});
	  $("#cpass").css("border-color", "green");
	  $("#cpass").css("color", "green");
	  $("#npass").css("border-color", "green");
	  $("#npass").css("color", "green");
	  $("#cpbtn").prop('disabled', false);
     }
 });
 </script>
</html>