package sesoc.global.c4d.vo;

public class Portfolio {
	 private int pf_num;
	 private int project_num ;
	  private String path;
	public int getPf_num() {
		return pf_num;
	}
	public void setPf_num(int pf_num) {
		this.pf_num = pf_num;
	}
	public int getProject_num() {
		return project_num;
	}
	public void setProject_num(int project_num) {
		this.project_num = project_num;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	@Override
	public String toString() {
		return "Portfolio [pf_num=" + pf_num + ", project_num=" + project_num + ", path=" + path + "]";
	}
	public Portfolio(int pf_num, int project_num, String path) {
		super();
		this.pf_num = pf_num;
		this.project_num = project_num;
		this.path = path;
	}
	public Portfolio() {
		// TODO Auto-generated constructor stub
	}
	  
	  
}
