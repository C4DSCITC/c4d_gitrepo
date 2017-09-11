package sesoc.global.c4d.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.c4d.vo.Career_simple;
import sesoc.global.c4d.vo.Project;

//created by seongmin woo
//0829
@Repository
public class ProjectDAOImpl implements ProjectDAO {
	@Autowired
	SqlSession sqlsession;

	@Override
	public List<Career_simple> getUserPJ(String id) {
		ProjectDAO dao = sqlsession.getMapper(ProjectDAO.class);
		List<Career_simple> list = dao.getUserPJ(id);
		System.out.println("dao" + list);
		return list;
	}
//0909
	@Override
	public void insertPJ(Project pj) {
		// TODO Auto-generated method stub
		ProjectDAO dao = sqlsession.getMapper(ProjectDAO.class);
		dao.insertPJ(pj);
		
	}
	@Override
	public int getCurrentPjNum() {
		ProjectDAO dao = sqlsession.getMapper(ProjectDAO.class);
		return dao.getCurrentPjNum();
	}
	@Override
	public Project getPj(int project_num) {
		ProjectDAO dao = sqlsession.getMapper(ProjectDAO.class);
		return dao.getPj(project_num);
	}
	 

}
