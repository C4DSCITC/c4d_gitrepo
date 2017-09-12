package sesoc.global.c4d.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.c4d.vo.Career;
import sesoc.global.c4d.vo.Career_simple;
//created by seongmin woo
//0829
@Repository
public class CareerDAOImpl implements CareerDAO {
	@Autowired
	SqlSession sqlsession;

	@Override
	public List<Career_simple> getUserCareer(String id) {
		CareerDAO cdao=sqlsession.getMapper(CareerDAO.class);
		List<Career_simple> list =cdao.getUserCareer(id);
		System.out.println("dao"+list);
		return list;
	}

	 
	 

}
