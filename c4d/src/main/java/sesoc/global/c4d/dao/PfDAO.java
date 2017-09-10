package sesoc.global.c4d.dao;

import java.util.List;
import java.util.Map;

import sesoc.global.c4d.vo.Career;
import sesoc.global.c4d.vo.Career_simple;
import sesoc.global.c4d.vo.PfImage;
import sesoc.global.c4d.vo.Portfolio;
import sesoc.global.c4d.vo.Project;

public interface PfDAO {

	public void insertPF(Portfolio pf);
	public int getCurrentPfNum();
	public void insertPFImage(PfImage img);
}
