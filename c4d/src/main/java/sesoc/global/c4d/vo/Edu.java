package sesoc.global.c4d.vo;

public class Edu {
	private int edu_num;
	private String edu_userid;
	private String edu_school;
	private String edu_major;
	private String edu_degree;
	private double edu_gpa;
	private String edu_startdate;
	private String edu_enddate;
	
	 public Edu() {
		// TODO Auto-generated constructor stub
	}

	public Edu(int edu_num, String edu_userid, String edu_school, String edu_major, String edu_degree, double edu_gpa,
			String edu_startdate, String edu_enddate) {
		super();
		this.edu_num = edu_num;
		this.edu_userid = edu_userid;
		this.edu_school = edu_school;
		this.edu_major = edu_major;
		this.edu_degree = edu_degree;
		this.edu_gpa = edu_gpa;
		this.edu_startdate = edu_startdate;
		this.edu_enddate = edu_enddate;
	}

	public int getEdu_num() {
		return edu_num;
	}

	public void setEdu_num(int edu_num) {
		this.edu_num = edu_num;
	}

	public String getEdu_userid() {
		return edu_userid;
	}

	public void setEdu_userid(String edu_userid) {
		this.edu_userid = edu_userid;
	}

	public String getEdu_school() {
		return edu_school;
	}

	public void setEdu_school(String edu_school) {
		this.edu_school = edu_school;
	}

	public String getEdu_major() {
		return edu_major;
	}

	public void setEdu_major(String edu_major) {
		this.edu_major = edu_major;
	}

	public String getEdu_degree() {
		return edu_degree;
	}

	public void setEdu_degree(String edu_degree) {
		this.edu_degree = edu_degree;
	}

	public double getEdu_gpa() {
		return edu_gpa;
	}

	public void setEdu_gpa(double edu_gpa) {
		this.edu_gpa = edu_gpa;
	}

	public String getEdu_startdate() {
		return edu_startdate;
	}

	public void setEdu_startdate(String edu_startdate) {
		this.edu_startdate = edu_startdate;
	}

	public String getEdu_enddate() {
		return edu_enddate;
	}

	public void setEdu_enddate(String edu_enddate) {
		this.edu_enddate = edu_enddate;
	}

	@Override
	public String toString() {
		return "Edu [edu_num=" + edu_num + ", edu_userid=" + edu_userid + ", edu_school=" + edu_school + ", edu_major="
				+ edu_major + ", edu_degree=" + edu_degree + ", edu_gpa=" + edu_gpa + ", edu_startdate=" + edu_startdate
				+ ", edu_enddate=" + edu_enddate + "]";
	}
	
}
