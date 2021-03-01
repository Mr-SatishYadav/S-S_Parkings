package ssp;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Driver;
import com.mysql.jdbc.Statement;

public class MyDatabase {
	// Database constants
				String dbname = "jdbc:mysql://localhost/ssp";
				String dbuser = "root";
				String dbpass = "";

	public String[] getUserDetails(String user, String pass) {
		// TODO Auto-generated method stub
		String a[] = new String[11];
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname, dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			String sql = "SELECT * from users where "
					+ "uname='" + user + "' and "
					+ "upass='" + pass + "'";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				a[0]=rs.getString("sno");
				a[1]=rs.getString("uname");
				a[2]=rs.getString("upass");
				a[3]=rs.getString("uphno");
				a[4]=rs.getString("umail");
				a[5]=rs.getString("uimg");
				a[6]=rs.getString("address");
				a[7]=rs.getString("country");
				a[8]=rs.getString("state");
				a[9]=rs.getString("city");
				a[10]=rs.getString("zip");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return a;
	}

	public boolean auth(String user, String pass) {
		// TODO Auto-generated method stub
		boolean result = false;
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname, dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			String sql = "SELECT uname from users where "
					+ "uname='" + user + "' and "
					+ "upass='" + pass + "'";
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				result = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	public boolean register(String user, String pass, String mail, String phno, String img) {
		// TODO Auto-generated method stub
		boolean result = false;
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname, dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			if(img==null){
				img="default.png";
			}
			if(user!=""&&pass!=""&&mail!=""&&phno!=""){
				String sql = "INSERT into users(uname,umail,uphno,upass,uimg) VALUES('"+user+"','"+mail+"','"+phno+"','"+pass+"','"+img+"')";
				int rcount = st.executeUpdate(sql);
				if(rcount > 0){
				result = true;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public boolean feedback(String uid, String mseg) {
		// TODO Auto-generated method stub
		boolean r = false;
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname, dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			if(uid!=""&&mseg!=""){
			String sql = "INSERT into queries("
					+ "uid, message) VALUES('" +uid  
					+ "','" + mseg +"')";
			int rcount = st.executeUpdate(sql);
			if(rcount > 0){
				r = true;
			}}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r;
	}

	public String search(String loc) {
		// TODO Auto-generated method stub
		String a[] = new String[8];
		String result="";
		ResultSet rs = null;
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							"jdbc:mysql://localhost/ssp", "root",dbpass);
			Statement st = (Statement) con.createStatement();
			String sql = "SELECT * from plots where area='" + loc + "'";
			rs = st.executeQuery(sql);
			while(rs.next()){
				a[0]=rs.getString("area");
				a[1]=rs.getString("pname");
		        a[2]=rs.getString("address");
		        a[3]=rs.getString("image");
		        a[4]=rs.getString("ratings");
		        a[5]=rs.getString("phone");
		        a[6]=rs.getString("services");
		        a[7]=rs.getString("pid");
		        
		        result+="<form action='ParkingLots' method='Post'>"
		        		+ "<div class='col-md-4 col-sm-4 col-xs-12 profile_details'>"
		        		+ "<div class='well profile_view'>"
		        		+ "<div class='col-sm-12' style='height:169px;'>"
		        		+ "<h4 class='brief'><i>"+a[0]+"</i></h4>"
		        		+ "<div class='left col-xs-7'>"
		        		+ "<h2>"+a[1]+"</h2>"
		        		+ "<p><strong>Services: </strong>"+a[6]+"</p>"
		        		+ "<ul class='list-unstyled'>"
		        		+ "<li><i class='fa fa-phone'></i> Phone: "+a[5]+" </li>"
		        		+ "<li><i class='fa fa-building'></i> Address: "+a[2]+" </li>"
		        		+ "</ul>"
		        		+ "</div>"
		        		+ "<div class='right col-xs-5 text-center'>"
		        		+ "<img src='images/img1.jpg' alt='' class='img-circle img-responsive'>"
		        		+ "</div>"
		        		+ "</div>"
		        		+ "<div class='col-xs-12 bottom text-center'>"
		        		+ "<div class='col-xs-12 col-sm-6 emphasis'>"
		        		+ "<p class='ratings'>"
		        		+ "<a>"+a[4]+"</a>"
		        		+ "<a href='#'><span class='fa fa-star'></span></a>"
		        		+ "<a href='#'><span class='fa fa-star'></span></a>"
		        		+ "<a href='#'><span class='fa fa-star'></span></a>"
		        		+ "<a href='#'><span class='fa fa-star'></span></a>"
		        		+ "<a href='#'><span class='fa fa-star-o'></span></a>"
		        		+ "</p>"
		        		+ "</div>"
		        		+ "<input type='hidden' name='lotid' value='"+a[7]+"'/>"
		        		+ "<div class='col-xs-12 col-sm-6 emphasis'>"
		        		+ "<button type='button' class='btn btn-success btn-xs'> <i class='fa fa-user'>"
		        		+ "</i> <i class='fa fa-comments-o'></i> </button>"
		        		+ "<button type='submit' class='btn btn-primary btn-xs'>"
		        		+ "<i class='fa fa-user'> </i> Book Parking"
		        		+ "</button>"
		        		+ "</div>"
		        		+ "</div>"
		        		+ "</div>"
		        		+ "</div>"
		        		+ "</from>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	public boolean updatedtls(String uid, String address, String country, String state, String city, String zip) {
		// TODO Auto-generated method stub
		boolean result = false;
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname, dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			String sql = "UPDATE users "
					+ "SET address='"+address+"', country='"+country+"', state='"+state+"', city='"+city+"', zip='"+zip+"'"
					+ "WHERE sno='"+uid+"'";
			int rcount = st.executeUpdate(sql);
			if(rcount > 0){
				result = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public String getSpaceDetails(String p) {
		// TODO Auto-generated method stub
		String a[] = new String[5];
		String result="";
		ResultSet ex = null;
		//ResultSet ps = null;
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname,dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			String sql = "SELECT * from extra where eid='"+p+"'";
			//String sql2 = "SELECT * from pspace where pid='"+p+"'";
			ex = st.executeQuery(sql);
			//ps = st.executeQuery(sql2);
			while(ex.next()){
				a[0]=ex.getString("sno");
				a[1]=ex.getString("eid");
				a[2]=ex.getString("ename");
		        a[3]=ex.getString("desc");
		        a[4]=ex.getString("eprice");
		        String n1=a[2].replaceAll(" ", "&nbsp;");
		       // String n2=a[3].replaceAll(" ", "&nbsp;");
		        
		        result+="<div class='col-md-3 col-sm-6 col-xs-12'>"
		        		+ "<div class='pricing ui-ribbon-container'>"
		        		+ "<div class='ui-ribbon-wrapper'>"
		        		+ "<div class='ui-ribbon'>"
		        		+ "30% Off"
		        		+ "</div>"
		        		+ "</div>"
		        		+ "<div class='title'>"
		        		+ "<h2>"+a[2]+"</h2>"
		        		+ "<h1>"+a[4]+"</h1>"
		        		+ "<span>Per Day</span>"
		        		+ "</div>"
		        		+ "<div class='x_content' style='display: block;'>"
		        		+ "<div class=''>"
		        		+ "<div class='pricing_features' style='min-height:351px'>"
		        		+ "<ul class='list-unstyled text-left'>"
		        		+ ""+a[3]+""
						+ "</ul>"
						+ "</div>"
						+ "</div>"
						+ "<div class='pricing_footer'>"
						+ "<a onclick=upd('"+n1+"','"+a[4]+"'); class='btn btn-primary btn-block'>ADD <span> now!</span></a>"
						+ "</div>"
						+ "</div>"
						+ "</div>"
						+ "</div>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	public String[] passrecovery(String email) {
		// TODO Auto-generated method stub
		String a[] = new String[2];
		ResultSet rs = null;
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname,dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			String sql = "SELECT * from users where umail='"+email+"'";
			rs = st.executeQuery(sql);
			while(rs.next()){
				a[0]=rs.getString("uname");
				a[1]=rs.getString("upass");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}

	public boolean updatepass(String id, String oldpass, String newpass) {
		// TODO Auto-generated method stub
		boolean result = false;
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname, dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			String sql = "UPDATE users "
					+ "SET upass='"+newpass+"'"
					+ "WHERE upass='"+oldpass+"' and sno='"+id+"'";
			int rcount = st.executeUpdate(sql);
			if(rcount > 0){
				result = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public String getPacksDetails(String p) {
		// TODO Auto-generated method stub
		String a[] = new String[7];
		String result="";
		ResultSet ps = null;
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname,dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			String sql = "SELECT * from pspace where sid='"+p+"'";
			ps = st.executeQuery(sql);
			while(ps.next()){
				a[0]=ps.getString("sno");
				a[1]=ps.getString("sid");
				a[2]=ps.getString("packs");
		        a[3]=ps.getString("desc");
				a[4]=ps.getString("spaces");
		        a[5]=ps.getString("status");
		        a[6]=ps.getString("price");
		        String n1=a[2].replaceAll(" ", "&nbsp;");
		        String n2=a[3].replaceAll(" ", "&nbsp;");
		        result+="<div class='bs-calltoaction bs-calltoaction-default'>"
		        		+ "<div class='row'>"
		        		+ "<div class='col-md-9 cta-contents'>"
                         + "<h1 class='cta-title'>"+a[2]+"</h1>"
                            + "<div class='cta-desc'>"
                               + " <p>"+a[3]+"</p>"
                           + "</div>"
                        + "</div>"
                        + "<div class='col-md-3 cta-button'>"
                           + "<a onclick=up('"+n1+"','"+n2+"','"+a[6]+"'); class='btn btn-lg btn-block btn-default'>Go for It! For <span class='fa fa-inr'></span> "+a[6]+"</a>"
                        + "</div>"
                     + "</div>"
                + "</div>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public String getreciptNo() {
		// TODO Auto-generated method stub
		String a="";
		ResultSet rs = null;
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname,dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			String sql = "SELECT * from reciptgenerator";
			rs = st.executeQuery(sql);
			while(rs.next()){
				a=rs.getString("recipt_no");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}

	public boolean donebooking(String[] a, String uid, String id, String rcpt1) {
		// TODO Auto-generated method stub
		boolean result = false;
		String status="";
		if(a[4].matches("cash")){
			status="due";
		}else{
			status="payed";
		}
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname, dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			String sql = "INSERT into booking(date_to,date_from,car_reg,car_model,car_make,payment_mod,extra_service,packname,pkprice,esprice,gstax,total_amt,nodays,promocode,uid,pid,rcpt,status) VALUES('"+a[0]+"','"+a[1]+"','"+a[2]+"','"+a[3]+"','"+a[5]+"','"+a[4]+"','"+a[6]+"','"+a[12]+"','"+a[7]+"','"+a[8]+"','"+a[9]+"','"+a[10]+"','"+a[11]+"','"+a[13]+"','"+uid+"','"+id+"','"+rcpt1+"','"+status+"')";
			int rcount = st.executeUpdate(sql);
			if(rcount > 0){
				result = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public boolean updatercpt(int rcpt2) {
		// TODO Auto-generated method stub
		boolean result = false;
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname, dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			String sql = "UPDATE reciptgenerator SET recipt_no='"+rcpt2+"' WHERE sno=1";
			int rcount = st.executeUpdate(sql);
			if(rcount > 0){
				result = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public String getBookingDetails(String string) {
		// TODO Auto-generated method stub
		String a[] = new String[19];
		String rslt="";
		ResultSet rs = null;
		try {
			DriverManager.registerDriver(new Driver());
			Connection con = 
					(Connection) 
					DriverManager.getConnection(
							dbname,dbuser,dbpass);
			Statement st = (Statement) con.createStatement();
			String sql = "SELECT * from Booking where uid='"+string+"'";
			rs = st.executeQuery(sql);
			while(rs.next()){
				a[0]=rs.getString("sno");
				a[1]=rs.getString("rcpt");
				a[2]=rs.getString("date_to");
				a[3]=rs.getString("date_from");
				a[4]=rs.getString("car_reg");
				a[5]=rs.getString("car_model");
				a[6]=rs.getString("car_make");
				a[7]=rs.getString("payment_mod");
				a[8]=rs.getString("extra_service");
				a[9]=rs.getString("packname");
				a[10]=rs.getString("pkprice");
				a[11]=rs.getString("esprice");
				a[12]=rs.getString("gstax");
				a[13]=rs.getString("total_amt");
				a[14]=rs.getString("nodays");
				a[15]=rs.getString("promocode");
				a[16]=rs.getString("status");
				a[17]=rs.getString("uid");
				a[18]=rs.getString("pid");
				
				
				rslt+="<li>"
						+ "<img src='images/p.png' class='avatar' alt='parking'>"
						+ "<div class='message_date'>"
						+ "<p class='date'><strong>From: </strong>"+a[2]+"</p>"
						+ "<p class='date'><strong>To: </strong>"+a[3]+"</p>"
						+ "</div>"
						+ "<div class='message_wrapper'>"
						+ "<h4 class='heading'>"+a[9]+"</h4>"
						+ "<blockquote class='message'><b>Car No: "+a[4]+"</b> | <b>Model: "+a[5]+"</b> | <b>Make: "+a[6]+"</b> | <b>Payment Mode: "+a[7]+"</b> | <b>PayStatus: "+a[16]+"</b> | <b>Extra Service: "+a[8]+"</b> </blockquote>"
						+ "<br />"
						+ "<p class='url'>"
						+ "<span class='fs1 text-info' aria-hidden='true' data-icon=''></span>"
						+ "<a href='#'><i class='fa fa-file-text'></i><strong>Recipt No:</strong> "+a[1]+"</a>"
						+ "</p>"
						+ "</div>"
						+ "</li>";
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rslt;
	}

}
