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
 * Servlet implementation class PayProcess
 */
@WebServlet("/PayProcess")
public class PayProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayProcess() {
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
		String a[]=new String[14];
		String pa="0";
		a[0]=request.getParameter("dateto");
		a[1]=request.getParameter("datefrom");
		a[2]=request.getParameter("regno");
		a[3]=request.getParameter("model");
		a[4]=request.getParameter("paymod");
		a[5]=request.getParameter("make");
		a[6]=request.getParameter("extra");
		a[7]=request.getParameter("pkprice");
		a[8]=request.getParameter("esprice");
		a[9]=request.getParameter("gstax");
		a[10]=request.getParameter("totalamt");
		a[11]=request.getParameter("nodays");
		a[12]=request.getParameter("pname1");
		a[13]=request.getParameter("promocode");
		String uid=request.getParameter("userid");
		String pid=request.getParameter("pid1");
		String rcpt1=request.getParameter("rcpt");
		Integer rcpt2=Integer.parseInt(rcpt1);
		int frcpt=rcpt2.intValue();
		frcpt+=+1;
		PrintWriter output = response.getWriter();
		HttpSession session = request.getSession();
		MyDatabase mdb=new MyDatabase();
		boolean rslt1=mdb.updatercpt(frcpt);
		boolean rslt2=mdb.donebooking(a,uid,pid,rcpt1);
		
		for(int i=0;i<=a.length-1;i++){ //it can check that array of a is not empty
			if(a[i]==""&&a[i]==null){
				output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
				output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
				output.println("<script>");
				output.println("$(function(){");
				output.println("swal('Form Fill Error', 'Please fill the form Carefully!','error');");
				output.println("});");
				output.println("</script>");
				request.getRequestDispatcher("form_wizards.jsp").include(request, response);
			}
		}
		if(rslt1&&rslt2){
		if(a[4].matches("cash")){
			session.setAttribute("payableamt",pa);
			session.setAttribute("balancedue",a[10]);
			session.setAttribute("paydtl",a);
			output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
			output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
			output.println("<script>");
			output.println("$(function(){");
			output.println("swal('Cash Payment','Pay your pending amount on cash counter of parking lot.Thank you','info');");
			output.println("});");
			output.println("</script>");
			request.getRequestDispatcher("invoice.jsp").include(request, response);
		}else{
			session.setAttribute("payableamt",a[10]);
			session.setAttribute("balancedue",pa);
			session.setAttribute("paydtl",a);
			request.getRequestDispatcher("payment.jsp").include(request, response);
		}
		}else{
			output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
			output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
			output.println("<script>");
			output.println("$(function(){");
			output.println("swal('Fail Updation','Dhyan say code kr bhai','error');");
			output.println("});");
			output.println("</script>");
			request.getRequestDispatcher("payment.jsp").include(request, response);
		}
	}

}
