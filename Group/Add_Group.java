package Group;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 

 
@WebServlet("/Add_Group")
public class Add_Group extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
		String Semester = request.getParameter("aes");
		String Student = request.getParameter("sid");
		String pro = request.getParameter("pro");
		String g_n = request.getParameter("gnu");
		String s_g_n = request.getParameter("sgn");
		String g_i_d = request.getParameter("gid");
		String s_g_i = request.getParameter("sgi");
	
		
		boolean isstru;
		
		isstru= Group_DB_utill.add_group(Semester,Student,pro,g_n,s_g_n,g_i_d,s_g_i);
			
		if(isstru == true) {
			 
			  
			  
			 
			 RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
			 dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis1 = request.getRequestDispatcher("unsucsees.jsp");
			dis1.forward(request, response);
			
		} 
	}

}
