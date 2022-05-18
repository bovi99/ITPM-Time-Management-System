package Lecturer;

public class Session {


		private int id;
		private String lecturer;
		private int time;
		private String group;
		private String subGroup;
		private String sessionID;
		
		public Session(int id, String lecturer, int time, String group, String subGroup, String sessionID) {
			this.id = id;
			this.lecturer = lecturer;
			this.time = time;
			this.group = group;
			this.subGroup = subGroup;
			this.sessionID = sessionID;
		}

		public int getId() {
			return id;
		}

		

		public String getLecturer() {
			return lecturer;
		}

		

		public int getTime() {
			return time;
		}

		

		public String getGroup() {
			return group;
		}

		

		public String getSubGroup() {
			return subGroup;
		}

		

		public String getSessionID() {
			return sessionID;
		}

		
}
