package Group;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
 
public class Group_DB_utill {
	 
public static List<Group>validate(String proID){
	
		
		ArrayList<Group> group = new ArrayList<>();
		
		String url="jdbc:mysql://localhost:3306/salro_university";
    	String user="root";
    	String pass="bovini@#";														
																				
																				

		try {
																				
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			String sql ="SELECT * FROM salro_university.group WHERE Group_id ='"+proID+"' ";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			
			if (rs.next()){
			
			 
				
				
				int group_id=rs.getInt(1);
				String Academic_year_Semester = rs.getString(2);
				String Student_ID = rs.getString(3);
				String Programme = rs.getString(4); 
				String Group_Number= rs.getString(5);
				String Sub_Group_Number = rs.getString(6);
				String class_Group_id = rs.getString(7);
				String Sub_Group_ID = rs.getString(8);
				 
			
				Group p = new Group(group_id,Academic_year_Semester,Student_ID,Programme,Group_Number,Sub_Group_Number,class_Group_id,Sub_Group_ID);
				group.add(p);
			}
			else {
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return group;
		
	}
	
	
    public static boolean add_group(String Semester,String Student, String pro, String g_n, String s_g_n, String g_i_d, String s_g_i ) {
		
    	boolean isSuccess = false;
    	
    	
    	String url="jdbc:mysql://localhost:3306/salro_university";
    	String user="root";
    	String pass="bovini@#";
    	
    	
try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			String sql ="INSERT INTO salro_university.group values(0,'"+Semester+"','"+Student+"','"+pro+"','"+g_n+"','"+s_g_n+"','"+g_i_d+"','"+s_g_i+"' )";
			int rs = stmt.executeUpdate(sql);
			
			
			if (rs>0) {
				
			isSuccess= true;	
				
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
    	
    	
    	
    	
    	
    	return isSuccess;
    	
    }
    
    
    
    
  public static boolean Update_group(String id,String name,String price, String type, String NUMBER_OF_PRODUCT, String location, String supplier, String discription ) {
		
    	boolean isSuccess = false;
    	
    	
        String url="jdbc:mysql://localhost:3306/salro_university";
     	String user="root";
     	String pass="bovini@#";
    	
try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			String sql ="update salro_university.group set Academic_year_Semester ='"+name+"' ,Student_ID ='"+price +"' ,Programme ='"+type +"' , Group_Number='"+NUMBER_OF_PRODUCT+"' , Sub_Group_Number='"+location+"' , class_Group_id='"+supplier+"' , Sub_Group_ID='"+discription+"' where  Group_id ='"+id +"'  ";
			int rs = stmt.executeUpdate(sql);
		 
			
			
			
			if (rs>0) {
				
			isSuccess= true;	
				
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
    	
    	
    	
    	
    	
    	return isSuccess;
    	
    }
    
    
  

	public static boolean deletegroup(String ID) {
		
		int id = Integer.parseInt(ID);
		
		
     boolean isSuccess = false;
		
		

		
     String url="jdbc:mysql://localhost:3306/salro_university";
 	String user="root";
 	String pass="bovini@#";
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			String sql ="DELETE FROM salro_university.group where Group_id ='"+id +"' ";	
			int rs = stmt.executeUpdate(sql);
			
			if (rs>0) {
				        
			isSuccess= true;	
				
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
		
	}
	
	
	
	
    
  
  
  
    
}
