package sesoc.global.c4d.vo;

public class Cv {
	private String cv_userid;
	private String cv_savedpath;
	
	public Cv() {
		// TODO Auto-generated constructor stub
	}

	public Cv(String cv_userid, String cv_savedpath) {
		super();
		this.cv_userid = cv_userid;
		this.cv_savedpath = cv_savedpath;
	}

	public String getCv_userid() {
		return cv_userid;
	}

	public void setCv_userid(String cv_userid) {
		this.cv_userid = cv_userid;
	}

	public String getCv_savedpath() {
		return cv_savedpath;
	}

	public void setCv_savedpath(String cv_savedpath) {
		this.cv_savedpath = cv_savedpath;
	}

	@Override
	public String toString() {
		return "Cv [cv_userid=" + cv_userid + ", cv_savedpath=" + cv_savedpath + "]";
	}
	
}
