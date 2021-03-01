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
      <link rel="shortcut icon" href="images/a1.png" />
      <!-- Bootstrap -->
      <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
      <!-- Font Awesome -->
      <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
      <!-- iCheck -->
      <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
      <!-- Switchery -->
      <link href="vendors/switchery/dist/switchery.min.css" rel="stylesheet">
      <!-- Parkingpacks -->
      <link href="css/parkingpack.css" rel="stylesheet">
      <!-- NProgress -->
      <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
      <!-- bootstrap-daterangepicker -->
      <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
      <!-- bootstrap-datetimepicker -->
      <link href="vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
      <!-- Custom Theme Style -->
      <link href="build/css/custom.min.css" rel="stylesheet">
      <!-- Formwizard -->
      <link href="css/formwiz.css" rel="stylesheet">
   </head>
   <body class="nav-md" onload="udate()">
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
                           <li>
                              <a><i class="fa fa-life-ring"></i> Support <span class="fa fa-chevron-down"></span></a>
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
                              <li><a href="javascript:;"> Profile</a></li>
                              <li>
                                 <a href="javascript:;">
                                 <span class="badge bg-red pull-right">50%</span>
                                 <span>Settings</span>
                                 </a>
                              </li>
                              <li><a href="javascript:;">Help</a></li>
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
                              <h2>Parking Reservation <small>For Smart People</small></h2>
                              <div class="clearfix"></div>
                           </div>
                           <div class="x_content">
                              <!-- Smart Wizard -->
                              <p>Secure your car from unwanted damage and theft, by putting your car into parking.</p>
                              <!-- Start form wizard -->
                              <div class="container">
                                 <div class="stepwizard">
                                    <div class="stepwizard-row setup-panel">
                                       <div class="stepwizard-step">
                                          <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                                          <p>Step 1<br/>
                                             <small>Select Date & time</small>
                                          </p>
                                       </div>
                                       <div class="stepwizard-step">
                                          <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                                          <p>Step 2<br/>
                                             <small>Choose Parking Packs</small>
                                          </p>
                                       </div>
                                       <div class="stepwizard-step">
                                          <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                                          <p>Step 3<br/>
                                             <small>Get Extra Services</small>
                                          </p>
                                       </div>
                                       <div class="stepwizard-step">
                                          <a href="#step-4" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
                                          <p>Step 4<br/>
                                             <small>Car Info & Payment</small>
                                          </p>
                                       </div>
                                       <div class="stepwizard-step">
                                          <a href="#step-5" type="button" class="btn btn-default btn-circle" disabled="disabled">5</a>
                                          <p>Step 5<br/>
                                             <small>Review and Pay</small>
                                          </p>
                                       </div>
                                    </div>
                                 </div>
                                 <form action="PayProcess" method="Post">
                                    <div class="row setup-content" id="step-1">
                                       <div class="col-xs-12">
                                          <div class="col-md-12">
                                             <h3>Select Date & Time of Parking</h3>
                                             <div class="form-group">
                                                <label class="control-label">From</label>
                                                <input id="datetimepicker4" name="datefrom" type="text" required="required" class="form-control" placeholder="Select Date & Time"  />
                                             </div>
                                             <div class="form-group">
                                                <label class="control-label">To</label>
                                                <input id="datetimepicker5" name="dateto" type="text" required="required" class="form-control" placeholder="Select Date & Time" />
                                             </div>
                                             <button class="btn btn-primary nextBtn btn-lg pull-right" onclick="update1()" type="button" >Next</button>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="row setup-content" id="step-2">
                                       <div class="col-xs-12">
                                          <div class="col-md-12">
                                             <h3>Select Package of your Parking</h3>
                                             ${park2}
                                             <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="row setup-content" id="step-3">
                                       <div class="col-xs-12">
                                          <div class="col-md-12">
                                             <h3>Make Over your car using Extra services</h3>
                                             <div class="col-md-12">
                                                <!-- price element -->
                                                ${park1}
                                                <!-- price element -->
                                             </div>
                                             <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="row setup-content" id="step-4">
                                       <div class="col-xs-12">
                                          <div class="col-md-12">
                                             <h3>Fill Details of car & Payments</h3>
                                             <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                                <input type="text" class="form-control has-feedback-left" name="regno" placeholder="Registration Number" required>
                                                <span class="fa fa-credit-card form-control-feedback left" aria-hidden="true"></span>
                                             </div>
                                             <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                                <input type="text" class="form-control" name="model" required placeholder="Model" required>
                                                <span class="fa fa-info form-control-feedback right" aria-hidden="true"></span>
                                             </div>
                                             <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                                <select name="paymod" class="form-control" required>
                                                   <option value="">Payment Mode</option>
                                                   <option value="cash">Cash</option>
                                                   <option value="PayPal">PayPal</option>
                                                   <option value="Credit">Credit Card</option>
                                                   <option value="Bank">Bank account</option>
                                                </select>
                                             </div>
                                             <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                                <input type="text" class="form-control has-feedback-right" name="make"  placeholder="Make" required>
                                                <span class="fa fa-support form-control-feedback right" aria-hidden="true"></span>
                                             </div>
                                             <div class="col-md-6 col-sm-6 col-xs-12 input-group" style="padding-right:10px;padding-left:10px;">
                                                <input type="text" class="form-control" name="promocode" placeholder="Promo-code">
                                                <span class="input-group-btn" aria-hidden="true"><button style="margin:0px" type="button" class="btn btn-primary">Apply Code</button></span>
                                             </div>
                                             <button onclick="update4()" class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="row setup-content" id="step-5">
                                       <div class="col-xs-12">
                                          <div class="col-md-12">
                                             <h3>Review & Pay</h3>
                                             <!-- Invoice -->
                                             <section class="content invoice">
                                                <!-- title row -->
                                                <div class="row">
                                                   <div class="col-xs-12 invoice-header">
                                                      <h1>
                                                         <i class="fa fa-globe"></i> Invoice.
                                                         <small class="pull-right" id="idate"></small>
                                                      </h1>
                                                   </div>
                                                   <!-- /.col -->
                                                </div>
                                                <!-- info row -->
                                                <div class="row invoice-info">
                                                   <div class="col-sm-4 invoice-col">
                                                      From
                                                      <address>
                                                         <strong>S&S Parkings</strong>
                                                         <br>Janakpuri Block-DA
                                                         <br>New Delhi-110065
                                                         <br>Phone: +91(98)7177-8947
                                                         <br>Email: www.ssparkings.com
                                                      </address>
                                                   </div>
                                                   <!-- /.col -->
                                                   <div class="col-sm-4 invoice-col">
                                                      To
                                                      <address>
                                                         <strong>${logdtl[1]}</strong>
                                                         <br>${logdtl[6]}
                                                         <br>${logdtl[9]}, ${logdtl[8]}, ${logdtl[7]}, ${logdtl[10]}.
                                                         <br>Phone: ${logdtl[3]}
                                                         <br>Email: ${logdtl[4]}
                                                      </address>
                                                   </div>
                                                   <!-- /.col -->
                                                   <div class="col-sm-4 invoice-col">
                                                      <b>Invoice: ${rcpt}</b>
                                                      <br>
                                                      <b id="nod"></b>
                                                   </div>
                                                   <!-- /.col -->
                                                </div>
                                                <!-- /.row -->
                                                <!-- Table row -->
                                                <div class="row">
                                                   <div class="col-xs-12 table">
                                                      <table class="table table-striped">
                                                         <thead>
                                                            <tr>
                                                               <th>Sno</th>
                                                               <th>Service</th>
                                                               <th>Price/Day</th>
                                                               <th style="width: 59%">Description</th>
                                                               <th>Subtotal</th>
                                                            </tr>
                                                         </thead>
                                                         <tbody>
                                                            <tr>
                                                               <td>1</td>
                                                               <td id="pname"></td>
                                                               <td id="pprice"></td>
                                                               <td id="pdesc"></td>
                                                               <td id="ptrice"></td>
                                                            </tr>
                                                            <tr>
                                                               <td>2</td>
                                                               <td id="sname"></td>
                                                               <td id="sprice"></td>
                                                               <td id="edesc"></td>
                                                               <td id="stprice"></td>
                                                            </tr>
                                                         </tbody>
                                                      </table>
                                                   </div>
                                                   <!-- /.col -->
                                                </div>
                                                <!-- /.row -->
                                                <div class="row">
                                                   <!-- accepted payments column -->
                                                   <div class="col-xs-6">
                                                      <p class="lead">Payment Methods:</p>
                                                      <img src="images/visa.png" alt="Visa">
                                                      <img src="images/mastercard.png" alt="Mastercard">
                                                      <img src="images/american-express.png" alt="American Express">
                                                      <img src="images/paypal.png" alt="Paypal">
                                                      <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
                                                         We can accept payment By Paypal, Credit Card, Bank Transfer , or Chinavasion Credit balance. Payment by PayPal. If PayPal is available in your country, you can use PayPal. You need to create Paypal account that will be connected to your bank account via your debit card or credit card.
                                                      </p>
                                                   </div>
                                                   <!-- /.col -->
                                                   <div class="col-xs-6">
                                                      <p class="lead">Payment Description</p>
                                                      <div class="table-responsive">
                                                         <table class="table">
                                                            <tbody>
                                                               <tr>
                                                                  <th style="width:50%">Subtotal:</th>
                                                                  <td id="st"></td>
                                                               </tr>
                                                               <tr>
                                                                  <th>SGST (9%):</th>
                                                                  <td id="sgst"></td>
                                                               </tr>
                                                               <tr>
                                                                  <th>CGST (9%):</th>
                                                                  <td id="cgst"></td>
                                                               </tr>
                                                               <tr>
                                                                  <th>Total:</th>
                                                                  <td id="total"></td>
                                                               </tr>
                                                            </tbody>
                                                         </table>
                                                      </div>
                                                   </div>
                                                   <!-- /.col -->
                                                </div>
                                                <input type="hidden" id="hprc" name="pkprice">
               									<input type="hidden" id="tprc" name="esprice">
               									<input type="hidden" id="stax" name="gstax">
            								    <input type="hidden" id="ttl" name="totalamt">
         									    <input type="hidden" id="nod2" name="nodays">
      									        <input type="hidden" id="pname1" name="pname1">
    							                <input type="hidden" id="extra" name="extra">
    							                <input type="hidden" value="${rcpt}" name="rcpt">
    							                <input type="hidden" value="${lid}" name="pid1">
    							                <input type="hidden" value="${logdtl[0]}" name="userid">
                                                <!-- /.row -->
                                                <!-- this row will not appear when printing -->
                                                <div class="row no-print">
                                                   <div class="col-xs-12">
                                                      <button type="submit" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Submit Payment</button>
                                                   </div>
                                                </div>
                                             </section>
                                             <!-- Large modal -->
                                             <div class="col-md-9 col-sm-9 col-xs-12">
                                                <div class="checkbox">
                                                   <label>
                                                   <input type="checkbox" required class="flat"> <a class="" data-toggle="modal" data-target=".bs-example-modal-lg">I agree with Terms and conditions</a>
                                                   </label>
                                                </div>
                                             </div>
                                             <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                                                <div class="modal-dialog modal-lg">
                                                   <div class="modal-content">
                                                      <div class="modal-header">
                                                         <h4 class="modal-title" id="myModalLabel">Terms and Conditions</h4>
                                                      </div>
                                                      <div class="modal-body">
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
                                                      <div class="modal-footer">
                                                         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </form>
                              </div>
                              <!-- End SmartWizard Content -->
                              <!-- End SmartWizard Content -->
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
      <link rel="shortcut icon" href="images/a1.png"/>
      <!-- Bootstrap -->
      <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
      <!-- FastClick -->
      <script src="vendors/fastclick/lib/fastclick.js"></script>
      <!-- bootstrap-daterangepicker -->
      <script src="vendors/moment/min/moment.min.js"></script>
      <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
      <!-- bootstrap-datetimepicker -->    
      <script src="vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
      <!-- NProgress -->
      <script src="vendors/nprogress/nprogress.js"></script>
      <!-- jQuery Smart Wizard -->
      <script src="vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
      <!-- iCheck -->
      <script src="vendors/iCheck/icheck.min.js"></script>
      <!-- Switchery -->
      <script src="vendors/switchery/dist/switchery.min.js"></script>
      <!-- Custom Theme Scripts -->
      <script src="build/js/custom.min.js"></script>
      <!-- formwiz Scripts -->
      <script src="js/formwiz.js"></script>
   </body>
   <script>
      function update1() {
       var a = new Date(document.getElementById('datetimepicker4').value);
          var b = new Date(document.getElementById('datetimepicker5').value);
          var c = parseInt((b - a) / (24 * 3600 * 1000));
          document.getElementById('nod').innerHTML ="Number of Days: "+c;
          document.getElementById('nod2').value=c;
      }
      function update4() {
       var a = parseInt(document.getElementById('hprc').value);
       var b = parseInt(document.getElementById('tprc').value);
       var c=a+b;
       var tax=(9/100)*c;
       var t=c+tax+tax;
       document.getElementById('st').innerHTML = "&#x20B9;"+c;
       document.getElementById('cgst').innerHTML = "&#x20B9;"+tax;
       document.getElementById('sgst').innerHTML = "&#x20B9;"+tax;
       document.getElementById('total').innerHTML = "&#x20B9;"+t;
       document.getElementById('hprc').innerHTML = a;
       document.getElementById('tprc').innerHTML = b;
       document.getElementById('stax').value = tax;
       document.getElementById('ttl').value = t;
       
      }
      function up(a, b, c) {
       	b=b.replace(/\s/g,' ');
       	var prc=parseInt(c);
       	var nod=parseInt(document.getElementById('nod2').value);
       	prc=prc*nod;
       	 document.getElementById('pname1').value = a;
         document.getElementById('pname').innerHTML = a;
         document.getElementById('pprice').innerHTML = "&#x20B9;"+c;
         document.getElementById('pdesc').innerHTML = b;
         document.getElementById('ptrice').innerHTML = "&#x20B9;"+prc;
         document.getElementById('hprc').value = prc;
      }
      function upd(a,c) {
       	//b=b.replace(/\s/g,' ');
       	 document.getElementById('extra').value = a;
         document.getElementById('sname').innerHTML = a;
         document.getElementById('sprice').innerHTML = "&#x20B9;"+c;
         document.getElementById('stprice').innerHTML = "&#x20B9;"+c;
         document.getElementById('tprc').value = c;
         //document.getElementById('sdesc').innerHTML = b;
      }
      function udate(){
       n =  new Date();
       y = n.getFullYear();
       m = n.getMonth() + 1;
       d = n.getDate();
       document.getElementById('idate').innerHTML = "Date: "+ d + "/" + m + "/" + y;
      }
   </script>
   <script type="text/javascript">
      $(function () {
          $('#datetimepicker4').datetimepicker();
          $('#datetimepicker5').datetimepicker();
      });
   </script>
</html>