package ssp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PasswordRecovery
 */
@WebServlet("/PasswordRecovery")
public class PasswordRecovery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PasswordRecovery() {
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
		String email=request.getParameter("nmail");
		MyDatabase md=new MyDatabase();
		String a[]=md.passrecovery(email);
		PrintWriter output = response.getWriter();
		if(a[0]!=null&&a[1]!=null){
			String subject="Hi "+a[0]+", S&S Parkings Account Recovery";
			String msg="Dear "+a[0]+","
					 + "\nWelcome to S&S Parkings, the right place to Search, Find and Reserve Parking Space online."
					 + "\n---Username & Password Recovery---"
					 + "\nUsername: "+a[0]+""
					 + "\nPassword: "+a[1]+""
					 + "\n\nHave a good day!!"
					 + "\nS&S Parkings Team"
					 + "\n\nInstructions: Do not share this link and id with anyone.";
			Mailer.send(email, subject, msg);
			output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
			output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
			output.println("<script>");
			output.println("$(function(){");
			output.println("swal('Account Recovery Succesfully', 'Dear "+a[0]+" Your Username and Password sent to your email please check your mail','success');");
			output.println("});");
			output.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
			}else{
				output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
				output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
				output.println("<script>");
				output.println("$(function(){");
				output.println("swal('Password Recovery Failed', 'Your Username and Password not found on our website. Please enter valid email...','warning');");
				output.println("});");
				output.println("</script>");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
			}
	}

}
