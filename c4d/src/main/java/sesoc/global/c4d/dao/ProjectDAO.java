package sesoc.global.c4d.dao;

import java.util.List;
import java.util.Map;

import sesoc.global.c4d.vo.Career;
import sesoc.global.c4d.vo.Career_simple;
import sesoc.global.c4d.vo.Project;

public interface ProjectDAO {

	public List<Career_simple> getUserPJ(String id);
	public void insertPJ(Project pj);
	public int getCurrentPjNum();
}
