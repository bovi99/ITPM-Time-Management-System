package Lecturer;

import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class LecturerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	public static List<Lecturer> validate(String username,String password){

		ArrayList<Lecturer> lec = new ArrayList<>();
		
		//Create DB connection 
	
		//Validation
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql ="*select* from lecturer where userName='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				int id=rs.getInt(1);
				String username1 =rs.getString(2);
				String password1 =rs.getString(3);
				int noOf_WorkingDays =rs.getInt(4);
				String weekDays =rs.getString(5);
				String weekEnd =rs.getString(6);
				int hours =rs.getInt(7);
				int min= rs.getInt(8);
				
				Lecturer l=  new Lecturer(id, username1,  password1, noOf_WorkingDays, weekDays, weekEnd, hours,min);
				lec.add(l);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return lec;
		
}
		
		//INSERT INFORMATION OF WORKING DAYS AND HOURS
		
		public static boolean insertLecturer(String username1,String password1, int noOf_WorkingDays,String weekDays, String weekEnd, int hours,int min)
		{
			boolean isSuccess =false;
			
			//Create DB connection
			
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "INSERT INTO lecturer.staffmember VALUES(0,'"+username1+"','"+password1+"','"+noOf_WorkingDays+"','"+weekDays+"','"+weekEnd+"','"+hours+"','"+min+"')";
				int rs =stmt.executeUpdate(sql);
				
				
				if(rs>0) {
					isSuccess=true;
					
					}
				
				else 
					{
					isSuccess=false;
					}
				
				}
			
			catch (Exception e) 
				{
				e.printStackTrace();
				}
			
			return isSuccess;
		}
		//UPDATE INFORMATION OF WORKING DAYS AND HOURS
		public static boolean updatelecturer(int id,String username1,String password1, int noOf_WorkingDays,String weekDays, String weekEnd, int hours,int min)
		{
			
			
			
			try {
				
				con =DBConnect.getConnection();
				stmt =con.createStatement();
				String sql = "UPDATE lecturer.staffmember SET username='"+username1+"',password='"+password1+"',noOf_WorkingDays='"+noOf_WorkingDays+"',"
						+ "weekDays='"+weekDays+"',weekEnd='"+weekEnd+"',hours='"+hours+"',min='"+min+"',"+ "WHERE id='"+id+"'";
				int rs=stmt.executeUpdate(sql);
				
				if(rs>0)
				{
					isSuccess=true;	
				}
				else 
				{
					isSuccess=false;
				}
				
			}
			
		catch (Exception e) 
			{
				e.printStackTrace();
			}
		
		return isSuccess;
		
			
	}
}