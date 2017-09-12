package sesoc.global.c4d.vo;

public class Project {
   private int project_num;
   private String project_userid;
   private String project_title="";
   private String project_role="";
   private String project_org="";
   private String project_startdate;
   private String project_enddate;
   private String language="" ;
   private String  field="";
   private String description="" ;
   private String saveCode;
   
   public Project() {
	// TODO Auto-generated constructor stub
}

public Project(int project_num, String project_userid, String project_title, String project_role, String project_org,
		String project_startdate, String project_enddate, String language, String field, String description,
		String saveCode) {
	super();
	this.project_num = project_num;
	this.project_userid = project_userid;
	this.project_title = project_title;
	this.project_role = project_role;
	this.project_org = project_org;
	this.project_startdate = project_startdate;
	this.project_enddate = project_enddate;
	this.language = language;
	this.field = field;
	this.description = description;
	this.saveCode = saveCode;
}

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

public String getProject_startdate() {
	return project_startdate;
}

public void setProject_startdate(String project_startdate) {
	this.project_startdate = project_startdate;
}

public String getProject_enddate() {
	return project_enddate;
}

public void setProject_enddate(String project_enddate) {
	this.project_enddate = project_enddate;
}

public String getLanguage() {
	return language;
}

public void setLanguage(String language) {
	this.language = language;
}

public String getField() {
	return field;
}

public void setField(String field) {
	this.field = field;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public String getSaveCode() {
	return saveCode;
}

public void setSaveCode(String saveCode) {
	this.saveCode = saveCode;
}

@Override
public String toString() {
	return "Project [project_num=" + project_num + ", project_userid=" + project_userid + ", project_title="
			+ project_title + ", project_role=" + project_role + ", project_org=" + project_org + ", project_startdate="
			+ project_startdate + ", project_enddate=" + project_enddate + ", language=" + language + ", field=" + field
			+ ", description=" + description + ", saveCode=" + saveCode + "]";
}
   
}