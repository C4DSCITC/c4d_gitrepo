package sesoc.global.c4d.vo;

public class PfImg {
	private int pfimg_num;
	private int pf_num;
	private String path;
	
	public PfImg(){}

	public int getPfimg_num() {
		return pfimg_num;
	}

	public void setPfimg_num(int pfimg_num) {
		this.pfimg_num = pfimg_num;
	}

	public int getPf_num() {
		return pf_num;
	}

	public void setPf_num(int pf_num) {
		this.pf_num = pf_num;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	@Override
	public String toString() {
		return "PfImg [pfimg_num=" + pfimg_num + ", pf_num=" + pf_num + ", path=" + path + "]";
	}

	public PfImg(int pfimg_num, int pf_num, String path) {
		super();
		this.pfimg_num = pfimg_num;
		this.pf_num = pf_num;
		this.path = path;
	};
	
	
}
