package ssp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ssp.Mailer;
import ssp.MyDatabase;

/**
 * Servlet implementation class Contact
 */
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		final String subject="Thank you for getting in touch!";
		final String msg="We have received your message and would like to thank you for writing to us, we will reply within 24hrs."
				+ "If your inquiry is urgent, Please use the telephone number listed below to talk to one of our staff members. Otherwise, we will"
				+ " reply by email as soon as possible."
				+ "\nReply to you soon,"
				+ "\n\nS&S PARKINGS            \nPhone No:+919871778947          \nEmail ID: ssparkings@gmail.com";
		//response.setContentType("text/jsp");
		String to=request.getParameter("ml");
		String uname=request.getParameter("uname");
		String mseg=request.getParameter("message");
		String uid=request.getParameter("uid");
		PrintWriter output = response.getWriter();
		MyDatabase mdb=new MyDatabase();
		boolean result=mdb.feedback(uid , mseg);
		if(result){
				Mailer.send(to, subject, msg);
				//response.sendRedirect("contactus.jsp");
				output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
				output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
				output.println("<script>");
				output.println("$(function(){");
				output.println("swal('Query sent Successfully', 'Thankyou "+uname+" for Contact Us. Have a Nice day','success');");
				output.println("});");
				output.println("</script>");
				RequestDispatcher rd = request.getRequestDispatcher("contactus.jsp");
				rd.include(request, response);
		}else{
			output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
			output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
			output.println("<script>");
			output.println("$(function(){");
			output.println("swal('Query not sent', 'Sorry "+uname+" for inconvenience. Please try again later','error');");
			output.println("});");
			output.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher("contactus.jsp");
			rd.include(request, response);
		}
			}
}
