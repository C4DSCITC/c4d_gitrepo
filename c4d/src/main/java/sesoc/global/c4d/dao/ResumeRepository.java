package sesoc.global.c4d.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.c4d.vo.Resume;

@Repository
public class ResumeRepository implements ResumeDao{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insert(Resume resume) {
		
		ResumeDao dao = sqlSession.getMapper(ResumeDao.class);
		
		int result = dao.insert(resume);
		
		return result;
	}

	@Override
	public Resume selectOne(Resume resume) {
		
		ResumeDao dao = sqlSession.getMapper(ResumeDao.class);
		
		Resume result = dao.selectOne(resume);
		
		return result;
	}

	@Override
	public List<Resume> select(Resume resume) {
		
		ResumeDao dao = sqlSession.getMapper(ResumeDao.class);
		
		List<Resume> result = dao.select(resume);
		
		return result;
	}

	@Override
	public int update(Resume resume) {
		
		ResumeDao dao = sqlSession.getMapper(ResumeDao.class);
		
		int result = dao.update(resume);
		
		return result;
	}

}
