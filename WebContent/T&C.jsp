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
    <!-- iCheck -->
    <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
	
	<link href="css/custom.css" rel="stylesheet">
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
              <a data-toggle="tooltip" href="profile.jsp" data-placement="top" title="Settings">
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
                    <li><a href="profile.jsp">Profile</a></li>
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
            <div class="page-title">
              <div class="title_left">
                <h3>S&amp;S Parkings</h3>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h1>TERMS AND CONDITIONS</h1>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <div class="container">
						
<ol><li><h3>Introduction</h3>
<ul>
<li><p>These Website Standard Terms and Conditions (these "Terms" or these "Website Standard Terms and Conditions") contained herein on this webpage, shall govern your use of this website, including all pages within this website (collectively referred to herein below as this "Website"). These Terms apply in full force and effect to your use of this Website and by using this Website, you expressly accept all terms and conditions contained herein in full. You must not use this Website, if you have any objection to any of these Website Standard Terms and Conditions.</p>
<li><p>This Website is not for use by any minors (defined as those who are not at least 18 years of age), and you must not use this Website if you a minor.</p>
</ul>
</ul>

<li><h3>Intellectual Property Rights.</h3>
<ul>
<li><p>Other than content you own, which you may have opted to include on this Website, under these Terms, NutronSkills and/or its licensors own all rights to the intellectual property and material contained in this Website, and all such rights are reserved.</p>
<li><p>You are granted a limited license only, subject to the restrictions provided in these Terms, for purposes of viewing the material contained on this Website,</p>
<li><p>You are expressly and emphatically restricted from all of the following:</p>
<ol type="i">
<li>publishing any Website material in any media;</li>
<li>selling, sublicensing and/or otherwise commercializing any Website material;</li>
<li>publicly performing and/or showing any Website material;</li>
<li>using this Website in any way that is, or may be, damaging to this Website;</li>
<li>using this Website in any way that impacts user access to this Website;</li>
<li>using this Website contrary to applicable laws and regulations, or in a way that causes, or may cause, harm to the Website, or to any person or business entity;</li>
<li>engaging in any data mining, data harvesting, data extracting or any other similar activity in relation to this Website, or while using this Website;</li>
<li>using this Website to engage in any advertising or marketing;</li><br>
</ol>
<li><p>Certain areas of this Website are restricted from access by you and NutronSkills may further restrict access by you to any areas of this Website, at any time, in its sole and absolute discretion. Any user ID and password you may have for this Website are confidential and you must maintain confidentiality of such information.</p>
</ul>

<li><h3>Your Content.</h3>
<ul>
<li><p>In these Website Standard Terms and Conditions, "Your Content" shall mean any audio, video, text, images or other material you choose to display on this Website. With respect to Your Content, by displaying it, you grant NutronSkills a non-exclusive, worldwide, irrevocable, royalty-free, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.</p>
<li><p>Your Content must be your own and must not be infringing on any third party's rights. NutronSkills reserves the right to remove any of Your Content from this Website at any time, and for any reason, without notice.</p>
</ul>

<li><h3>No warranties.</h3>
<ul>
<li><p>This Website is provided "as is," with all faults, and NutronSkills makes no express or implied representations or warranties, of any kind related to this Website or the materials contained on this Website. Additionally, nothing contained on this Website shall be construed as providing consult or advice to you.</p>
</ul>

<li><h3>Limitation of liability.</h3>
<ul>
<li><p>In no event shall NutronSkills, nor any of its officers, directors and employees, be liable to you for anything arising out of or in any way connected with your use of this Website, whether such liability is under contract, tort or otherwise, and NutronSkills, including its officers, directors and employees shall not be liable for any indirect, consequential or special liability arising out of or in any way related to your use of this Website.</p>
<li><p>You hereby indemnify to the fullest extent NutronSkills from and against any and all liabilities, costs, demands, causes of action, damages and expenses (including reasonable attorney's fees) arising out of or in any way related to your breach of any of the provisions of these Terms.</p>
<li><p>If any provision of these Terms is found to be unenforceable or invalid under any applicable law, such unenforceability or invalidity shall not render these Terms unenforceable or invalid as a whole, and such provisions shall be deleted without affecting the remaining provisions herein.</p>
</ul>

<li><h3>Variation of Terms.</h3>
<ul>
<li><p>NutronSkills is permitted to revise these Terms at any time as it sees fit, and by using this Website you are expected to review such Terms on a regular basis to ensure you understand all terms and conditions governing use of this Website.</p>
<li><p>NutronSkills shall be permitted to assign, transfer, and subcontract its rights and/or obligations under these Terms without any notification or consent required. However, .you shall not be permitted to assign, transfer, or subcontract any of your rights and/or obligations under these Terms.</p>
</ul>

<li><h3>Entire Agreement.</h3>
<ul>
<li><p>These Terms, including any legal notices and disclaimers contained on this Website, constitute the entire agreement between NutronSkills and you in relation to your use of this Website, and supersede all prior agreements and understandings with respect to the same.</p>
</ul>

<li><h3>Governing Law &amp; Jurisdiction.</h3>
<ul>
<li><p>These Terms will be governed by and construed in accordance with the laws of the State of Delhi, and you submit to the non-exclusive jurisdiction of the state and federal courts located in Delhi for the resolution of any disputes.</p>
</ul>
</ol>
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
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
  </body>
</html>