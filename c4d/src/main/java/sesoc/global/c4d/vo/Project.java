package sesoc.global.c4d.vo;

import java.util.Date;

public class Project {
	private int project_num;
	private String project_userid;
	private String project_title;
	private String project_role;
	private String project_org;
	private Date project_satartdate;
	private Date project_enddate;
	
	public Project(){}

	public int getProject_num() {
		return project_num;
	}

	public void setProject_num(int project_num) {
		this.project_num = project_num;
	}

	public String getProject_userid() {
		return project_userid;
	}

	public void setProject_userid(String project_userid) {
		this.project_userid = project_userid;
	}

	public String getProject_title() {
		return project_title;
	}

	public void setProject_title(String project_title) {
		this.project_title = project_title;
	}

	public String getProject_role() {
		return project_role;
	}

	public void setProject_role(String project_role) {
		this.project_role = project_role;
	}

	public String getProject_org() {
		return project_org;
	}

	public void setProject_org(String project_org) {
		this.project_org = project_org;
	}

	public Date getProject_satartdate() {
		return project_satartdate;
	}

	public void setProject_satartdate(Date project_satartdate) {
		this.project_satartdate = project_satartdate;
	}

	public Date getProject_enddate() {
		return project_enddate;
	}

	public void setProject_enddate(Date project_enddate) {
		this.project_enddate = project_enddate;
	}

	public Project(int project_num, String project_userid, String project_title, String project_role,
			String project_org, Date project_satartdate, Date project_enddate) {
		super();
		this.project_num = project_num;
		this.project_userid = project_userid;
		this.project_title = project_title;
		this.project_role = project_role;
		this.project_org = project_org;
		this.project_satartdate = project_satartdate;
		this.project_enddate = project_enddate;
	}

	@Override
	public String toString() {
		return "Project [project_num=" + project_num + ", project_userid=" + project_userid + ", project_title="
				+ project_title + ", project_role=" + project_role + ", project_org=" + project_org
				+ ", project_satartdate=" + project_satartdate + ", project_enddate=" + project_enddate + "]";
	}
	
	
}
