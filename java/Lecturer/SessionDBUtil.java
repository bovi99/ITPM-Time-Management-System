package Lecturer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SessionDBUtil {
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	public static List<Session> validate(String username,String password){

		ArrayList<Session> ses = new ArrayList<>();
		
		//Create DB connection 
	
		//Validation
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql ="*select* from session where userName='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				int id=rs.getInt(1);
				String lecturer =rs.getString(2);
				int time =rs.getInt(3);
				String group =rs.getString(4);
				String subGroup =rs.getString(5);
				String sessionID =rs.getString(6);
				
				
				Session s=  new Session(id, lecturer,  time, group, subGroup, sessionID);
				ses.add(s);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return ses;
		
}
	//INSERT INFORMATION OF Sessions and available time for lecturers
	
	public static boolean insertSession(String lecturer, int time,String group, String subGroup,String sessionID)
	{
		boolean isSuccess =false;
		
		//Create DB connection
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "INSERT INTO lecturer.staffmember VALUES(0,'"+lecturer+"','"+time+"','"+group+"','"+subGroup+"','"+sessionID+"')";
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
	
	//UPDATE INFORMATION OF Sessions and available time for lecturers
			public static boolean updateSession(int id,String lecturer, int time,String group, String subGroup,String sessionID)
			{
				
				
				
				try {
					
					con =DBConnect.getConnection();
					stmt =con.createStatement();
					String sql = "UPDATE lecturer.staffmember SET lecturer='"+lecturer+"',time='"+time+"',group='"+group+"',"
							+ "subGroup='"+subGroup+"',"+ "WHERE id='"+id+"'";
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

