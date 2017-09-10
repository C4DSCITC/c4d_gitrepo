package sesoc.global.c4d.vo;

import java.util.List;

public class LiccList {
	private List<Licc> llist;
	
	public LiccList() {
		// TODO Auto-generated constructor stub
	}

	public LiccList(List<Licc> llist) {
		super();
		this.llist = llist;
	}

	public List<Licc> getLlist() {
		return llist;
	}

	public void setLlist(List<Licc> llist) {
		this.llist = llist;
	}

	@Override
	public String toString() {
		return "LiccList [llist=" + llist + "]";
	}
	
	
}
