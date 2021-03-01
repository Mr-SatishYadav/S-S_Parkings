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

/**
 * Servlet implementation class UpdateDtls
 */
@WebServlet("/UpdateDtls")
public class UpdateDtls extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDtls() {
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
		String uid = request.getParameter("uid");
		String address = request.getParameter("address");
		String country = request.getParameter("country");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String zip = request.getParameter("zip");
		boolean result;
		PrintWriter output = response.getWriter();
		MyDatabase mdb = new MyDatabase();
		result=mdb.updatedtls(uid,address,country,state,city,zip);
			//Check if result is true.
			if(result){
				output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
				output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
				output.println("<script>");
				output.println("$(function(){");
				output.println("swal('Details Updated Succesfully', 'Re-login for see changes','success');");
				output.println("});");
				output.println("</script>");
				request.getRequestDispatcher("login.jsp").include(request, response); 
	            HttpSession session=request.getSession();
	            session.invalidate();
				//RequestDispatcher rd = request.getRequestDispatcher("logout2.jsp");
				//rd.include(request, response);
				}else{
					output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
					output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
					output.println("<script>");
					output.println("$(function(){");
					output.println("swal('Details Not Updated', 'There is some problem in updating. Please try again later','warning');");
					output.println("});");
					output.println("</script>");
					RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
					rd.include(request, response);
				}
	}

}
