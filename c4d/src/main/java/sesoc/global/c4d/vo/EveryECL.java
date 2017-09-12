package sesoc.global.c4d.vo;

import java.util.List;

public class EveryECL {
	private List<Career> carr;
	private List<Edu> edu;
	private List<Licc> licc;
	public EveryECL() {
		// TODO Auto-generated constructor stub
	}
	public EveryECL(List<Career> carr, List<Edu> edu, List<Licc> licc) {
		super();
		this.carr = carr;
		this.edu = edu;
		this.licc = licc;
	}
	public List<Career> getCarr() {
		return carr;
	}
	public void setCarr(List<Career> carr) {
		this.carr = carr;
	}
	public List<Edu> getEdu() {
		return edu;
	}
	public void setEdu(List<Edu> edu) {
		this.edu = edu;
	}
	public List<Licc> getLicc() {
		return licc;
	}
	public void setLicc(List<Licc> licc) {
		this.licc = licc;
	}
	@Override
	public String toString() {
		return "EveryECL [carr=" + carr + ", edu=" + edu + ", licc=" + licc + "]";
	}
	
}
