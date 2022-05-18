package Lecturer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateSession")
public class UpdateSession extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer. parseInt(request. getParameter("id"));
		String lecturer=request.getParameter("lecturer");
		int time=Integer. parseInt(request. getParameter("time"));
		String group=request.getParameter("group");
		String subGroup = request.getParameter("subGroup");
		String sessionID=request.getParameter("essionID");
		
		
		boolean isTrue;
		
		isTrue= SessionDBUtil.updateSession(id,lecturer, time, group,subGroup, sessionID);
		
		if(isTrue==true){
			//List<Staff> StaffDetails = LecturerDBUtil .validate();
			//request.setAttribute("staffDetails",StaffDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
