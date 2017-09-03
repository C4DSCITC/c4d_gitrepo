package sesoc.global.c4d.vo;

public class Career {
	private int career_num;
	private String career_userid;
	private String career_title;
	private String career_org;
	private String career_dept;
	private String career_startdate;
	private String career_enddate;
	private String career_period;
	
	public Career() {
		// TODO Auto-generated constructor stub
	}

	public Career(int career_num, String career_userid, String career_title, String career_org, String career_dept,
			String career_startdate, String career_enddate, String career_period) {
		super();
		this.career_num = career_num;
		this.career_userid = career_userid;
		this.career_title = career_title;
		this.career_org = career_org;
		this.career_dept = career_dept;
		this.career_startdate = career_startdate;
		this.career_enddate = career_enddate;
		this.career_period = career_period;
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

	@Override
	public String toString() {
		return "Career [career_num=" + career_num + ", career_userid=" + career_userid + ", career_title="
				+ career_title + ", career_org=" + career_org + ", career_dept=" + career_dept + ", career_startdate="
				+ career_startdate + ", career_enddate=" + career_enddate + ", career_period=" + career_period + "]";
	}
	
}
