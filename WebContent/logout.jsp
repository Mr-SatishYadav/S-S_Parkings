<body background="images/bg.jpg">
</body>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="vendors/jquery/dist/jquery.min.js"></script>
<script>
$(document).ready(function(){
	swal({
		  title: "Are you sure?",
		  text: "You want to logout from this website!!",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) =>{
		  if (willDelete) {
			  //swal("Poof! Your imaginary file has been deleted!", {
			      //icon: "success",
		    //});
			  location="logout2.jsp";
		  } else {
		    //swal("'Explore More','Have a Nice day!!!','success'");
		    location="index.jsp";
		  }
		});
});
</script>

