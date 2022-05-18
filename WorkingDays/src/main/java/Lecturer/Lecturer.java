package Lecturer;

public class Lecturer {
	private int id;
	private String username;
	private String password;
	private int noOf_WorkingDays;
	private String weekDays;
	private String weekEnd;
	private int hours;
	private int min;
	public Lecturer(int id, String username, String password,int noOf_WorkingDays, String weekDays, String weekEnd, int hours, int min) {

		this.id = id;
		this.noOf_WorkingDays = noOf_WorkingDays;
		this.weekDays = weekDays;
		this.weekEnd = weekEnd;
		this.hours = hours;
		this.min = min;
	}
	public int getId() {
		return id;
	}
	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}

	public int getNoOf_WorkingDays() {
		return noOf_WorkingDays;
	}
	
	public String getWeekDays() {
		return weekDays;
	}
	
	public String getWeekEnd() {
		return weekEnd;
	}
	
	public int getHours() {
		return hours;
	}
	
	public int getMin() {
		return min;
	}
	
	
	



	



	

}
