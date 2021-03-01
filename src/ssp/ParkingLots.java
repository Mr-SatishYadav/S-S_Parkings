package ssp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ParkingLots
 */
@WebServlet("/ParkingLots")
public class ParkingLots extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParkingLots() {
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
		String p=request.getParameter("lotid");
		MyDatabase mdb = new MyDatabase();
		String rs1=mdb.getSpaceDetails(p);
		String rs2=mdb.getPacksDetails(p);
		String rs3=mdb.getreciptNo();
		if(rs2!="" && rs2!=null){
			HttpSession session = request.getSession();
			session.setAttribute("park1",rs1);
			session.setAttribute("park2",rs2);
			session.setAttribute("rcpt",rs3);
			session.setAttribute("lid",p);
			PrintWriter output=response.getWriter();
			output.println("<script type=\"text/javascript\">");
			output.println("location='form_wizards.jsp';");
			output.println("</script>");
		}
	}

}
