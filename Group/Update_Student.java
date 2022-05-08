package Group;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 

 
@WebServlet("/Update_Student")
public class Update_Student extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id_g");
		String name = request.getParameter("asem");
		String price = request.getParameter("sid");
		String type = request.getParameter("pro");
		String NUMBER_OF_PRODUCT = request.getParameter("gnu");
		String location = request.getParameter("sgn");
		String supplier = request.getParameter("gid");
		String discription = request.getParameter("sgi");
	
		
		boolean isstru;
		
		isstru=Group_DB_utill.Update_group(id, name, price, type, NUMBER_OF_PRODUCT, location, supplier, discription);
			
		if(isstru == true) {
			 
			  
			  
			 
			 RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
			 dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis1 = request.getRequestDispatcher("unsucess.jsp");
			dis1.forward(request, response);
			
		}
		
		
	}

}
