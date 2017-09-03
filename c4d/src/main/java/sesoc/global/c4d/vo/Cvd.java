package sesoc.global.c4d.vo;

import java.util.List;

public class Cvd {
	private List<Edu> elist;
	private List<Career> clist;
	private List<Licc> llist;
	
	public Cvd() {
		// TODO Auto-generated constructor stub
	}

	public Cvd(List<Edu> elist, List<Career> clist, List<Licc> llist) {
		super();
		this.elist = elist;
		this.clist = clist;
		this.llist = llist;
	}

	public List<Edu> getElist() {
		return elist;
	}

	public void setElist(List<Edu> elist) {
		this.elist = elist;
	}

	public List<Career> getClist() {
		return clist;
	}

	public void setClist(List<Career> clist) {
		this.clist = clist;
	}

	public List<Licc> getLlist() {
		return llist;
	}

	public void setLlist(List<Licc> llist) {
		this.llist = llist;
	}

	@Override
	public String toString() {
		return "Cvd [elist=" + elist + ", clist=" + clist + ", llist=" + llist + "]";
	}
	
}
