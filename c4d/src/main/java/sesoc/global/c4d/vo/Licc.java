package sesoc.global.c4d.vo;

public class Licc {
	private int licc_num;
	private String licc_userid;
	private String licc_title;
	private String licc_org;
	private String licc_ref;
	private String licc_date;
	
	public Licc() {
		// TODO Auto-generated constructor stub
	}

	public Licc(int licc_num, String licc_userid, String licc_title, String licc_org, String licc_ref,
			String licc_date) {
		super();
		this.licc_num = licc_num;
		this.licc_userid = licc_userid;
		this.licc_title = licc_title;
		this.licc_org = licc_org;
		this.licc_ref = licc_ref;
		this.licc_date = licc_date;
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
		return "Licc [licc_num=" + licc_num + ", licc_userid=" + licc_userid + ", licc_title=" + licc_title
				+ ", licc_org=" + licc_org + ", licc_ref=" + licc_ref + ", licc_date=" + licc_date + "]";
	}
	
}
