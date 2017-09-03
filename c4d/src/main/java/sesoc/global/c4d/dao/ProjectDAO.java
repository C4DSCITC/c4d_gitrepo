package sesoc.global.c4d.dao;

import java.util.List;
import java.util.Map;

import sesoc.global.c4d.vo.Career;
import sesoc.global.c4d.vo.Career_simple;

public interface ProjectDAO {

	public List<Career_simple> getUserPJ(String id);

}
