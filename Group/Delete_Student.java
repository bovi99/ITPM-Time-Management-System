package Group;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
 
@WebServlet("/Delete_Student")
public class Delete_Student extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		
		
		String ID=    request.getParameter("aes");
		boolean  isTrue;
	  
		isTrue=Group_DB_utill.deletegroup(ID);
			 
	
	 if(isTrue==true) {
	 
	 RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
	 dis.forward(request, response);
	 }
	 
	 else {
		 
		 RequestDispatcher dis = request.getRequestDispatcher("#");
		 dis.forward(request, response);
		 
		 
	 }
		
		
	}

}
