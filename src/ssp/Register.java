package ssp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;

import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		MultipartRequest mr = new MultipartRequest(request, "C:\\Users\\SKYNET\\workspace\\S&S_Parkings\\WebContent\\images\\userimg",253630244);
		String user = mr.getParameter("Uname");
		String pass = mr.getParameter("Upass");
		String mail = mr.getParameter("Umail");
		String phno = mr.getParameter("Uphno");
		String img="";
		String filename="";
		Enumeration files = mr.getFileNames(); 
        while (files.hasMoreElements())
         { 
              img = (String)files.nextElement(); 
              filename = mr.getFilesystemName(img);
           }
			PrintWriter output = response.getWriter();
			MyDatabase mdb = new MyDatabase();
			boolean result = mdb.register(user, pass, mail, phno, filename);
			if(result){ 
				try {
					IWorkspaceRoot workspaceRoot = ResourcesPlugin.getWorkspace().getRoot(); 
					IProject project = workspaceRoot.getProject("S&S_Parkings");
					project.open(null);
					IFolder folder = project.getFolder("WebContent/images/userimg"); 
					folder.refreshLocal(99, null);
				} catch (CoreException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}  
				System.out.println("Successfully refreshed."); 
				String subject="Hi "+user+" Welcome to S&S Parkings: Makes Life Eassy and Eco-friendly";
				String msg="Dear "+user+","
						 + "\nWelcome to S&S Parkings, the right place to Search, Find and Reserve Parking Space online."
						 + "\nWith millions of new users and thousands of Parking Dealers looking for Bright Future with more eco-friendly system,"
						 + "\nit's quick and easy to find better with S&S Parkings."
						 + "\nBE THE PART OF ECO-FRIENDLY FUTURE, BE WITH US."
						 + "\n----------------Account Details-------------------"
						 + "\nUsername: "+user+""
						 + "\nEmail   : "+mail+""
						 + "\nPhone   : "+phno+""
						 + "\n\nHave a good day!!";
				Mailer.send(mail, subject, msg);
				output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
				output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
				output.println("<script>");
				output.println("$(function(){");
				output.println("swal('Account Created Succesfully', 'Thankyou "+user+" for Register with us. Now login to your Account! ','success');");
				output.println("});");
				output.println("</script>");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
				}else{
					output.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
					output.println("<script src='vendors/jquery/dist/jquery.min.js'></script>");
					output.println("<script>");
					output.println("$(function(){");
					output.println("swal('Registration Failed', 'Please Fill the form carefully!','error');");
					output.println("});");
					output.println("</script>");
					RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					rd.include(request, response);
				}
	}

}
