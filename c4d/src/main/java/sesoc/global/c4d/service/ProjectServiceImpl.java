package sesoc.global.c4d.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sesoc.global.c4d.dao.CareerDAO;
import sesoc.global.c4d.dao.ProjectDAO;
import sesoc.global.c4d.vo.Career;
import sesoc.global.c4d.vo.Career_simple;
@Service
public class ProjectServiceImpl implements ProjectService {
	@Autowired
	ProjectDAO pdao;

	@Override
	public List<Career_simple>getUserPJ(String id) {
		List<Career_simple> list=pdao.getUserPJ(id);
		return list;
	}

	
}
