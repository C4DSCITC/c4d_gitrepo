package sesoc.global.c4d.vo;

import java.util.List;

public class PrjList {
	private List<Project> pList;
	
	public PrjList() {
		// TODO Auto-generated constructor stub
	}

	public PrjList(List<Project> pList) {
		super();
		this.pList = pList;
	}

	public List<Project> getpList() {
		return pList;
	}

	public void setpList(List<Project> pList) {
		this.pList = pList;
	}

	@Override
	public String toString() {
		return "PrjList [pList=" + pList + "]";
	}
	
}
