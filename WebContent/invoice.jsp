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
  	<link href="css/invoice.css" rel="stylesheet">
  </head>

  <body onload="udate()">
    <div class="container">
	<div class="row">
		
        <div class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
    			<div class="receipt-header">
					<div class="col-xs-6 col-sm-6 col-md-6">
						<div class="receipt-left">
							<img class="img-responsive" alt="${logdtl[1]}" src="images/userimg/${logdtl[5]}" style="width: 71px; border-radius: 43px;">
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 text-right">
						<div class="receipt-right">
							<h5>S&S Parkings</h5>
							<p>+91 98717-78947 <i class="fa fa-phone"></i></p>
							<p>ssparkings@gmail.com <i class="fa fa-envelope-o"></i></p>
							<p>Janakpuri, New Delhi, India <i class="fa fa-location-arrow"></i></p>
						</div>
					</div>
				</div>
            </div>
			
			<div class="row">
				<div class="receipt-header receipt-header-mid">
					<div class="col-xs-8 col-sm-8 col-md-8 text-left">
						<div class="receipt-right">
							<h5>${logdtl[1]}</h5>
							<p><b>Mobile :</b> ${logdtl[3]}</p>
							<p><b>Email :</b>${logdtl[4]} </p>
							<p><b>Address :</b>${logdtl[6]},${logdtl[9]},${logdtl[8]},${logdtl[7]},${logdtl[10]}</p>
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="receipt-left">
							<h1>Receipt</h1>
						</div>
					</div>
				</div>
            </div>
			
            <div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Description</th>
                            <th>Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-md-9">${paydtl[12]}</td>
                            <td class="col-md-3"><i class="fa fa-inr"></i> ${paydtl[7]}/-</td>
                        </tr>
                        <tr>
                            <td class="col-md-9">${paydtl[6]}</td>
                            <td class="col-md-3"><i class="fa fa-inr"></i> ${paydtl[8]}/-</td>
                        </tr>
                        <tr>
                            <td class="text-right">
                            <p>
                                <strong>CGST: </strong>
                            </p>
                            <p>
                                <strong>SGST: </strong>
                            </p>
                            <p>
                                <strong>Total Amount: </strong>
                            </p>
							<p>
                                <strong>Payable Amount: </strong>
                            </p>
							<p>
                                <strong>Balance Due: </strong>
                            </p>
							</td>
                            <td>
                            <p>
                                <strong><i class="fa fa-inr"></i>${paydtl[9]}</strong>
                            </p>
                            <p>
                                <strong><i class="fa fa-inr"></i>${paydtl[9]}/-</strong>
                            </p>
                            <p>
                                <strong><i class="fa fa-inr"></i>${paydtl[10]}/-</strong>
                            </p>
							<p>
                                <strong><i class="fa fa-inr"></i>${payableamt}/-</strong>
                            </p>
							<p>
                                <strong><i class="fa fa-inr"></i>${balancedue}/-</strong>
                            </p>
							</td>
                        </tr>
                        <tr>
                           
                            <td class="text-right"><h2><strong>Total: </strong></h2></td>
                            <td class="text-left text-danger"><h2><strong><i class="fa fa-inr"></i> ${paydtl[10]}/-</strong></h2></td>
                        </tr>
                    </tbody>
                </table>
            </div>
			
			<div class="row">
				<div class="receipt-header receipt-header-mid receipt-footer">
					<div class="col-xs-8 col-sm-8 col-md-8 text-left">
						<div class="receipt-right">
							<p id="idate"></p>
							<h5 style="color: rgb(140, 140, 140);">Thank you for your business!</h5>
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="receipt-left">
							<button class="btn btn-danger" onclick="window.print();"><i class="fa fa-print"></i> Print</button>
							<a class="btn btn-success" href="profile.jsp"><i class="fa fa-print"></i> Close</a>
						</div>
					</div>
				</div>
            </div>
			
        </div>    
	</div>
</div>
    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
    <script>
    function udate(){
       n =  new Date();
       y = n.getFullYear();
       m = n.getMonth() + 1;
       d = n.getDate();
       document.getElementById('idate').innerHTML = "<b>Date:</b> "+ d + "/" + m + "/" + y;
      }
    </script>
  </body>
</html>