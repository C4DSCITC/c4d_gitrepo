package sesoc.global.c4d.vo;

import java.util.List;

public class EduList {
	private List<Edu> elist;
	
	public EduList() {
		// TODO Auto-generated constructor stub
	}

	public EduList(List<Edu> elist) {
		super();
		this.elist = elist;
	}

	public List<Edu> getElist() {
		return elist;
	}

	public void setElist(List<Edu> elist) {
		this.elist = elist;
	}

	@Override
	public String toString() {
		return "EduList [elist=" + elist + "]";
	}
	
}
