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
 * Servlet implementation class SearchBar
 */
@WebServlet("/SearchBar")
public class SearchBar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchBar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String loc=request.getParameter("search");
		String rslt="";
		if(loc!=""){
			PrintWriter output = response.getWriter();
			MyDatabase mdb=new MyDatabase();
			rslt=mdb.search(loc);
			HttpSession session = request.getSession();
	        if(rslt!=""&&rslt!=null){
					session.setAttribute("rslt",rslt);
					output.println("<script type=\"text/javascript\">");
					output.println("location='NewFile.jsp';");
					output.println("</script>");
				}else{
					output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
					output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
					output.println("<script>");
					output.println("$(function(){");
					output.println("swal('No Parking Available', 'Their is no Parking lot available at "+loc+"','info');");
					output.println("});");
					output.println("</script>");
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.include(request, response);
				}
		}
	 }
}
