package sesoc.global.c4d.vo;

public class ECL {
	private int edu_num;
	private String edu_userid;
	private String edu_school;
	private String edu_major;
	private String edu_degree;
	private double edu_gpa;
	private String edu_startdate;
	private String edu_enddate;
	private int career_num;
	private String career_userid;
	private String career_title;
	private String career_org;
	private String career_dept;
	private String career_startdate;
	private String career_enddate;
	private String career_period;
	private int licc_num;
	private String licc_userid;
	private String licc_title;
	private String licc_org;
	private String licc_ref;
	private String licc_date;
	
	public ECL() {
		// TODO Auto-generated constructor stub
	}

	public ECL(int edu_num, String edu_userid, String edu_school, String edu_major, String edu_degree, double edu_gpa,
			String edu_startdate, String edu_enddate, int career_num, String career_userid, String career_title,
			String career_org, String career_dept, String career_startdate, String career_enddate, String career_period,
			int licc_num, String licc_userid, String licc_title, String licc_org, String licc_ref, String licc_date) {
		super();
		this.edu_num = edu_num;
		this.edu_userid = edu_userid;
		this.edu_school = edu_school;
		this.edu_major = edu_major;
		this.edu_degree = edu_degree;
		this.edu_gpa = edu_gpa;
		this.edu_startdate = edu_startdate;
		this.edu_enddate = edu_enddate;
		this.career_num = career_num;
		this.career_userid = career_userid;
		this.career_title = career_title;
		this.career_org = career_org;
		this.career_dept = career_dept;
		this.career_startdate = career_startdate;
		this.career_enddate = career_enddate;
		this.career_period = career_period;
		this.licc_num = licc_num;
		this.licc_userid = licc_userid;
		this.licc_title = licc_title;
		this.licc_org = licc_org;
		this.licc_ref = licc_ref;
		this.licc_date = licc_date;
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

	public int getCareer_num() {
		return career_num;
	}

	public void setCareer_num(int career_num) {
		this.career_num = career_num;
	}

	public String getCareer_userid() {
		return career_userid;
	}

	public void setCareer_userid(String career_userid) {
		this.career_userid = career_userid;
	}

	public String getCareer_title() {
		return career_title;
	}

	public void setCareer_title(String career_title) {
		this.career_title = career_title;
	}

	public String getCareer_org() {
		return career_org;
	}

	public void setCareer_org(String career_org) {
		this.career_org = career_org;
	}

	public String getCareer_dept() {
		return career_dept;
	}

	public void setCareer_dept(String career_dept) {
		this.career_dept = career_dept;
	}

	public String getCareer_startdate() {
		return career_startdate;
	}

	public void setCareer_startdate(String career_startdate) {
		this.career_startdate = career_startdate;
	}

	public String getCareer_enddate() {
		return career_enddate;
	}

	public void setCareer_enddate(String career_enddate) {
		this.career_enddate = career_enddate;
	}

	public String getCareer_period() {
		return career_period;
	}

	public void setCareer_period(String career_period) {
		this.career_period = career_period;
	}

	public int getLicc_num() {
		return licc_num;
	}

	public void setLicc_num(int licc_num) {
		this.licc_num = licc_num;
	}

	public String getLicc_userid() {
		return licc_userid;
	}

	public void setLicc_userid(String licc_userid) {
		this.licc_userid = licc_userid;
	}

	public String getLicc_title() {
		return licc_title;
	}

	public void setLicc_title(String licc_title) {
		this.licc_title = licc_title;
	}

	public String getLicc_org() {
		return licc_org;
	}

	public void setLicc_org(String licc_org) {
		this.licc_org = licc_org;
	}

	public String getLicc_ref() {
		return licc_ref;
	}

	public void setLicc_ref(String licc_ref) {
		this.licc_ref = licc_ref;
	}

	public String getLicc_date() {
		return licc_date;
	}

	public void setLicc_date(String licc_date) {
		this.licc_date = licc_date;
	}

	@Override
	public String toString() {
		return "ECL [edu_num=" + edu_num + ", edu_userid=" + edu_userid + ", edu_school=" + edu_school + ", edu_major="
				+ edu_major + ", edu_degree=" + edu_degree + ", edu_gpa=" + edu_gpa + ", edu_startdate=" + edu_startdate
				+ ", edu_enddate=" + edu_enddate + ", career_num=" + career_num + ", career_userid=" + career_userid
				+ ", career_title=" + career_title + ", career_org=" + career_org + ", career_dept=" + career_dept
				+ ", career_startdate=" + career_startdate + ", career_enddate=" + career_enddate + ", career_period="
				+ career_period + ", licc_num=" + licc_num + ", licc_userid=" + licc_userid + ", licc_title="
				+ licc_title + ", licc_org=" + licc_org + ", licc_ref=" + licc_ref + ", licc_date=" + licc_date + "]";
	}
	
}
