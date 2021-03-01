<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- payment -->
    <link href="css/payment.css" rel="stylesheet">
</head>
<body>
<form action="Invoice" method="Post">
<div class="wrapper">
	<div class="main">
	<div class="container">
	<div class="row">
	<div class="col-lg-9 col-md-8 col-sm-8 col-xs-8">
	<div class="payment-wrapper">
	<div class="payment-info">
	
	<h5><i class="fa fa-info" aria-hidden="true"></i> Payment Info (Secure SSL Encrypted Transaction)</h5>
	
	</div>
	<div class="payment-methodcard">
	<div class="row">
	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	
	<label class="payment-method">Payment Method<span class="star">*</span></label>
	
  </div>
  <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
  <div class="visa">
  <select class="form-control text-control">
  <option value="visa">visa</option>
  <option value="Mastercard">Mastercard</option>
  <option value="Discover">Discover</option>
  <option value="American Express">American Express</option>
</select>
  
  </div>
  </div>
   <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
   <div class="cards">
   <div class="card-1">
   <img src="https://cdn.shopify.com/s/files/1/0825/6023/t/9/assets/footer-paypal-2.png?9639925907821449570" alt="visa view"/>
   </div>
   <div class="card-1">
   <img src="https://www.libhumanitas.ro/skin/frontend/default/libhumanitas_new/images/maestro.png" alt="visa view"/>
   </div>
   <div class="card-1">
   <img src="https://www.carmax.com/~/media/images/carmax/com/at-a-glance/logo-nhtsa.svg?ts=20160329T193132Z" alt="visa view"/>
   </div>
   <div class="card-1">
   <img src="https://www.supporta2z.com/wp-content/uploads/sites/2/2016/09/discover.png" alt="visa view"/>
   </div>
   </div>
   
  </div>
	
	</div>
	</div>
	<div class="payment-methodcard">
	<div class="row">
	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	<div class="payment-method">
	<span>Cr. / De. Card Number<span class="star">*</span></span>
	</div>
  </div>
  <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
  <div class="visa">
  <input type="text" class="form-control text-control" placeholder="Credit/ Debit card number"/>
  </div>
  </div>
   <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
   <div class="card-number">
   
<span>(Pay with credit or debit card)</span>


   </div>
   
  </div>
	
	</div>
	</div>
	
	<div class="payment-methodcard">
	<div class="row">
	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	<div class="payment-method">
	<span>Expiration Date<span class="star">*</span></span>
	</div>
  </div>
  <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
 <div class="visa Month-cntrl">
  <select class=" form-control">
  <option value="Month">Month</option>
  <option value="January">January</option>
  <option value="February">February</option>
  <option value="March">March</option>
  <option value="April">April</option>
  <option value="May">May</option>
  <option value="June">June</option>
  <option value="July">July</option>
  <option value="August">August</option>
  <option value="Spetember">September</option>
  <option value="October">October</option>
  <option value="November">November</option>
  <option value="December">December</option>
</select>
  
  </div>
  <div class="visa Month-cntrl">
  <select class=" form-control">
  <option value="volvo">Year</option>
  <option value="2018">2018</option>
  <option value="2019">2019</option>
  <option value="2020">2020</option>
  <option value="2021">2021</option>
  <option value="2022">2022</option>
  <option value="2023">2023</option>
  <option value="2024">2024</option>
  <option value="2025">2025</option>
  <option value="2026">2026</option>
  <option value="2027">2027</option>
  <option value="2028">2028</option>
  <option value="2029">2029</option>
  <option value="2030">2030</option>
</select>
  
  </div>
  </div>
   <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
   <div class="card-number">
   
<!-- <span>(Pay with credit or debit card)</span> -->


   </div>
   
  </div>
	
	</div>
	</div>
		<div class="payment-methodcard">
	<div class="row">
	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	<div class="payment-method">
	<span>Cr. / De. Card Number<span class="star">*</span></span>
	</div>
  </div>
  <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
  <div class="visa">
  <input type="text" class="form-control text-control" placeholder="Credit/ Debit card number"/>
  </div>
  </div>
   <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
   <div class="card-number otp">
   
<span>(Pay with credit or debit card)</span>


   </div>
   
  </div>
	
	</div>
	</div>
		<div class="payment-methodcard norton-payment">
	<div class="row">
	
  	<div class="col-lg-6 col-md-3 col-sm-3 col-xs-3">
	<div class="payment-method">
	<span class="Acceptance"> <input class="btn btn-primary" type="submit"></span>
	<span class="Acceptance"> <a href="form_wizards.jsp">Cancel</a></span>
	</div>
  </div>
   <div class="col-lg-6 col-md-4 col-sm-4 col-xs-4">
   <div class="norton">
<img src="http://www.aveiro.co.pt/noticias/Terra%20Nova.png" alt="Norton view"/>

   </div>
   
  </div>
	
	</div>
	</div>
	</div>
	<div class="billig">
	<div class="row">
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
	<div class="payment-wrapper">
	<div class="payment-info">
	
	<h5><i class="fa fa-info" aria-hidden="true"></i>From Billing Information</h5>
	
	</div>
		<div class="payment-methodcard">
	<div class="row">
	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
	<label class="payment-method">Name:</label>
  </div>
  <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
  <div class="visa">
  <input type="text" class="form-control text-control" value="S&S Parkings" readonly/>
</select>
  </div>
  </div>
	</div>
	</div>
		<div class="payment-methodcard">
	<div class="row">
	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
	<div class="payment-method">
	<span>Address<span class="star">*</span></span>
	</div>
  </div>
  <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
  <div class="visa adress">
  <input type="text" value="A43 Stree-4B,Janakpuri" class="form-control text-control" readonly/>
  </div>
  <div class="visa adress">
  <input type="text" value="D-Block,Sagarpur,New Delhi" class="form-control text-control" readonly/>
  </div>
  </div>
  
	
	</div>
	</div>
	<div class="payment-methodcard">
	<div class="row">
	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
	<div class="payment-method">
	<span>State<span class="star">*</span></span>
	</div>
  </div>
  <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
  <div class="visa adress">
  <input type="text" value="Delhi" class="form-control text-control" readonly/>
  </div>
  
  </div>
  
	
	</div>
	</div>
	<div class="payment-methodcard">
	<div class="row">
	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
	<div class="payment-method">
	<span>Zip<span class="star">*</span></span>
	</div>
  </div>
  <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
  <div class="visa adress">
  <input type="text" value="110065" class="form-control text-control" readonly/>
  </div>
  
  </div>
  
	
	</div>
	</div>
	</div>
	</div>
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
	<div class="payment-wrapper">
	<div class="payment-info">
	
	<h5><i class="fa fa-info" aria-hidden="true"></i>To Billing Information</h5>
	
	</div>
		<div class="payment-methodcard">
	<div class="row">
	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
	<label class="payment-method">country<span class="star">*</span></label>
  </div>
  <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
  <div class="visa">
  <input type="text" value="${logdtl[1]}" class="form-control text-control" readonly/>
  </div>
  </div>
 
	
	</div>
	</div>
		<div class="payment-methodcard">
	<div class="row">
	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
	<div class="payment-method">
	<span>Address<span class="star">*</span></span>
	</div>
  </div>
  <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
  <div class="visa adress">
  <input type="text" value="${logdtl[8]}" class="form-control text-control" readonly/>
  </div>
  <div class="visa adress">
  <input type="text" value="${logdtl[6]}" class="form-control text-control" readonly/>
  </div>
  </div>
  
	
	</div>
	</div>
	<div class="payment-methodcard">
	<div class="row">
	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
	<div class="payment-method">
	<span>State<span class="star">*</span></span>
	</div>
  </div>
  <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
  <div class="visa adress">
  <input type="text" value="${logdtl[7]}" class="form-control text-control" readonly/>
  </div>
  
  </div>
  
	
	</div>
	</div>
	<div class="payment-methodcard">
	<div class="row">
	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
	<div class="payment-method">
	<span>Zip<span class="star">*</span></span>
	</div>
  </div>
  <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
  <div class="visa adress">
  <input type="text" value="${logdtl[10]}" class="form-control text-control" readonly/>
  </div>
  
  </div>
  
	
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	
	<div class="col-lg-3 col-md-4 col-sm-4 col-xs-4"></div>
	
	</div>
	</div>
	</div>
	
	</div>
	</div>
	</form>
<!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>