package ssp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ssp.MyDatabase;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Login() {
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
		String user = request.getParameter("Uname");
		String pass = request.getParameter("Upass");
		boolean result;
		PrintWriter output = response.getWriter();
		MyDatabase mdb = new MyDatabase();
		String b[]=mdb.getUserDetails(user,pass);
		String c=mdb.getBookingDetails(b[0]);
		result = mdb.auth(user, pass);
			//Check if result is true.
			if(result){
				HttpSession session = request.getSession();
				session.setAttribute("logdtl",b);
				session.setAttribute("bookdtl",c);
				output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
				output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
				output.println("<script>");
				output.println("$(function(){");
				output.println("swal('Login Succesfully', 'Welcome "+user+"','success');");
				output.println("});");
				output.println("</script>");
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
				}else{
					output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
					output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
					output.println("<script>");
					output.println("$(function(){");
					output.println("swal('Login Fail', 'Please Enter Username and Password carefully!','warning');");
					output.println("});");
					output.println("</script>");
					RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					rd.include(request, response);
				}
	}
}
