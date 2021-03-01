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
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
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
		String id = request.getParameter("cuid");
		String oldpass = request.getParameter("opass");
		String newpass = request.getParameter("npass");
		PrintWriter output = response.getWriter();
		MyDatabase mdb = new MyDatabase();
		boolean result=mdb.updatepass(id,oldpass,newpass);
			//Check if result is true.
			if(result){
				output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
				output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
				output.println("<script>");
				output.println("$(function(){");
				output.println("swal('Password Updated', 'Succesfully password changed','success');");
				output.println("});");
				output.println("</script>");
				request.getRequestDispatcher("profile.jsp").include(request, response);
				}else{
					output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
					output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
					output.println("<script>");
					output.println("$(function(){");
					output.println("swal('Password Not Updated', 'There is some problem in updating. please enter old password carefully!!','warning');");
					output.println("});");
					output.println("</script>");
					RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
					rd.include(request, response);
				}
	}

}
