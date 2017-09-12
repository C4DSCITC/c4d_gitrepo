package sesoc.global.c4d.vo;

import java.util.List;

public class CareerList {
	private List<Career> clist;
	
	public CareerList() {
		// TODO Auto-generated constructor stub
	}

	public CareerList(List<Career> clist) {
		super();
		this.clist = clist;
	}

	public List<Career> getClist() {
		return clist;
	}

	public void setClist(List<Career> clist) {
		this.clist = clist;
	}

	@Override
	public String toString() {
		return "CareerList [clist=" + clist + "]";
	}
	
}
