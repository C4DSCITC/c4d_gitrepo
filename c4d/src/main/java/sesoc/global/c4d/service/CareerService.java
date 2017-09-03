package sesoc.global.c4d.service;

import java.util.List;
import java.util.Map;

import sesoc.global.c4d.vo.Career;
import sesoc.global.c4d.vo.Career_simple;

public interface CareerService {

	public List<Career_simple> getUserCareer(String id);
}
