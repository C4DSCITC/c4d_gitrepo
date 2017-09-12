package sesoc.global.c4d.dao;

import java.util.List;
import java.util.Map;

import sesoc.global.c4d.vo.Career;
import sesoc.global.c4d.vo.Career_simple;
import sesoc.global.c4d.vo.PfImg;
import sesoc.global.c4d.vo.PfItem;
import sesoc.global.c4d.vo.Portfolio;
import sesoc.global.c4d.vo.Project;

public interface PfDAO {

	public void insertPF(Portfolio pf);
	public int getCurrentPfNum();
	public void insertPFImage(PfImg img);
	public List<PfItem> getPfItems(String userid);
	public Portfolio getPf(int pf_num);
	public void resetImgPfNum();
}
