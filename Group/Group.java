package Group;

public class Group {

	private int group_id;
	private String academic_year_semester;
	private String student_id;
	private String programme;
	private String group_number;
	private String sub_group_number;
	private String class_group_id;
	private String sub_group_id;
	
	
	
	public Group(int group_id, String academic_year_semester, String student_id, String programme, String group_number,
			String sub_group_number, String class_group_id, String sub_group_id) {
		 
		this.group_id = group_id;
		this.academic_year_semester = academic_year_semester;
		this.student_id = student_id;
		this.programme = programme;
		this.group_number = group_number;
		this.sub_group_number = sub_group_number;
		this.class_group_id = class_group_id;
		this.sub_group_id = sub_group_id;
	}



	public int getGroup_id() {
		return group_id;
	}



 


	public String getAcademic_year_semester() {
		return academic_year_semester;
	}


 

	public String getStudent_id() {
		return student_id;
	}



 


	public String getProgramme() {
		return programme;
	}



 

	public String getGroup_number() {
		return group_number;
	}



 


	public String getSub_group_number() {
		return sub_group_number;
	}



	 

	public String getClass_group_id() {
		return class_group_id;
	}


 


	public String getSub_group_id() {
		return sub_group_id;
	}



 
	
	
	
	
	
	
	
}
