package sesoc.global.c4d.vo;

public class PfItem {
	private String pf_num;//속성으로 넣어둘 거고
	private String project_title;//화면에 띄움
	private String project_field;//화면에 띄움
	private String image_path;//화면에 띄움
	public String getPf_num() {
		return pf_num;
	}
	public void setPf_num(String pf_num) {
		this.pf_num = pf_num;
	}
	public String getProject_title() {
		return project_title;
	}
	public void setProject_title(String project_title) {
		this.project_title = project_title;
	}
	public String getProject_field() {
		return project_field;
	}
	public void setProject_field(String project_field) {
		this.project_field = project_field;
	}
	public String getImage_path() {
		return image_path;
	}
	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}
	
	
	public PfItem(){}
	@Override
	public String toString() {
		return "PfItem [pf_num=" + pf_num + ", project_title=" + project_title + ", project_filed=" + project_field
				+ ", image_path=" + image_path + "]";
	}
	public PfItem(String pf_num, String project_title, String project_filed, String image_path) {
		super();
		this.pf_num = pf_num;
		this.project_title = project_title;
		this.project_field = project_filed;
		this.image_path = image_path;
	}
	

}
