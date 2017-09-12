package sesoc.global.c4d.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.c4d.vo.User;


@Repository
public class UserRepository implements UserDao{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public User selectOne(User user) {
		
		UserDao dao = sqlSession.getMapper(UserDao.class);
		
		User result = dao.selectOne(user);
		
		return result;
	}

	@Override
	public int insert(User user) {
		
		UserDao dao = sqlSession.getMapper(UserDao.class);
		
		int result = dao.insert(user);
	
		return result;
	}
	@Override
	public int update(User user) {
		
		UserDao dao = sqlSession.getMapper(UserDao.class);
		
		int result = dao.update(user);
		
		return result;
	}
	
}
