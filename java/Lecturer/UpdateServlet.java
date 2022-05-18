package Lecturer;

import java.io.IOException;
//import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer. parseInt(request. getParameter("id"));
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		int noOf_WorkingDays = Integer. parseInt(request. getParameter("noOf_WorkingDays"));
		String weekDays=request.getParameter("weekDays");
		String weekEnd=request.getParameter("weekEnd");
		int hours=Integer. parseInt(request. getParameter("hours"));
		int min=Integer. parseInt(request. getParameter("min"));
		
		boolean isTrue;
		
		isTrue= LecturerDBUtil.updatelecturer(id, username, password, noOf_WorkingDays, weekDays, weekEnd, hours, min);
		
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