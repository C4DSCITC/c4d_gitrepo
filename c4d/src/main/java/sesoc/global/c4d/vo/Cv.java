package sesoc.global.c4d.vo;

public class Cv {
	private String cv_id;
	private String cv_path;
	
	public Cv() {
		// TODO Auto-generated constructor stub
	}

	public Cv(String cv_id, String cv_path) {
		super();
		this.cv_id = cv_id;
		this.cv_path = cv_path;
	}

	public String getCv_id() {
		return cv_id;
	}

	public void setCv_id(String cv_id) {
		this.cv_id = cv_id;
	}

	public String getCv_path() {
		return cv_path;
	}

	public void setCv_path(String cv_path) {
		this.cv_path = cv_path;
	}

	@Override
	public String toString() {
		return "Cv [cv_id=" + cv_id + ", cv_path=" + cv_path + "]";
	}
	
}
