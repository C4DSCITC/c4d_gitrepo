package sesoc.global.c4d.vo;

public class Career_simple {
	private String type;
	private String  org; 
	private String  startdate;
	private String  enddate;
	public Career_simple(){}
	@Override
	public String toString() {
		return "Career_simple [type=" + type + ",  org=" + org + ", startdate=" + startdate
				+ ", enddate=" + enddate + "]";
	}
	public Career_simple(String type,   String org, String startdate, String enddate) {
		super();
		this.type = type;
		this.org = org;
		this.startdate = startdate;
		this.enddate = enddate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	 
	public String getOrg() {
		return org;
	}
	public void setOrg(String org) {
		this.org = org;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	 
	 
 
	 
	
}
