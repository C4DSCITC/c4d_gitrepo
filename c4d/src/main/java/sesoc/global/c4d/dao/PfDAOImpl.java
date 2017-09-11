package sesoc.global.c4d.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.c4d.vo.PfImg;
import sesoc.global.c4d.vo.PfItem;
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
	public void insertPFImage(PfImg img) {
		 PfDAO dao=session.getMapper(PfDAO.class);
		 dao.insertPFImage(img);
	}

	@Override
	public List<PfItem> getPfItems(String userid) {
		 PfDAO dao=session.getMapper(PfDAO.class);
		return dao.getPfItems(userid);
	}

	@Override
	public Portfolio getPf(int pf_num) {
		 PfDAO dao=session.getMapper(PfDAO.class);
		return dao.getPf(pf_num);
	}

	@Override
	public void resetImgPfNum() {
		PfDAO dao=session.getMapper(PfDAO.class);
		  dao.resetImgPfNum();
		
	}

	 
}
