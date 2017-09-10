package sesoc.global.c4d.vo;

public class PfImage {
	private String pfimg_num;
	private int pf_num;
	private String path;
	
	public PfImage(){}

	public String getPfimg_num() {
		return pfimg_num;
	}

	public void setPfimg_num(String pfimg_num) {
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
		return "PfImage [pfimg_num=" + pfimg_num + ", pf_num=" + pf_num + ", path=" + path + "]";
	}

	public PfImage(String pfimg_num, int pf_num, String path) {
		super();
		this.pfimg_num = pfimg_num;
		this.pf_num = pf_num;
		this.path = path;
	};
	
	
}
