package sesoc.global.c4d.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.c4d.vo.PfImage;
import sesoc.global.c4d.vo.Portfolio;

@Repository
public class PfDAOImpl implements PfDAO {
 
	@Autowired
	SqlSession session;
	@Override
	public void insertPF(Portfolio pf) {
		PfDAO dao=session.getMapper(PfDAO.class);
		dao.insertPF(pf);

	}

	@Override
	public int getCurrentPfNum() {
		 PfDAO dao=session.getMapper(PfDAO.class);
		return dao.getCurrentPfNum();
	}

	@Override
	public void insertPFImage(PfImage img) {
		 PfDAO dao=session.getMapper(PfDAO.class);
		 dao.insertPFImage(img);
	}

}
