package sesoc.global.c4d.dao;

import java.util.List;
import java.util.Map;

import sesoc.global.c4d.vo.Career;
import sesoc.global.c4d.vo.Edu;
import sesoc.global.c4d.vo.Licc;
import sesoc.global.c4d.vo.User;

public interface CvDAO {
	
	//로그인테스트(준환이 코드오면 지울 예정)
	public User loginOne(Map<String, String> user);
	
	//이력서폼에 뿌려줄 개인 정보
	public User findOne(String id);
	
	//출력용 이력서에서 입력한 내용 DB에 저장
	public int cv_save(String id, List<Edu> elist, List<Career> clist, List<Licc> llist);
	
}
