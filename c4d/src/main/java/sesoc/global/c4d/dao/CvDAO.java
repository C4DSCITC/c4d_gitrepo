package sesoc.global.c4d.dao;

import java.util.List;
import java.util.Map;

import sesoc.global.c4d.vo.Career;
import sesoc.global.c4d.vo.Cv;
import sesoc.global.c4d.vo.Edu;
import sesoc.global.c4d.vo.Licc;
import sesoc.global.c4d.vo.User;

public interface CvDAO {
	
	//로그인테스트(준환이 코드오면 지울 예정)
	public User loginOne(Map<String, String> user);

	//작성된 web Cv 조회
	public Cv findCV(String id);
	//web Cv 이름과 경로 DB저장
	public int saveWebCv(Cv webcv);
	
	//입력받은 학력정보 DB저장
	public int saveEdu(Edu edu);
	//입력받은 경력정보 DB저장
	public int saveCareer(Career career);
	//입력받은 자격정보 DB저장
	public int saveLicc(Licc licc);
	
	//이력서폼에 뿌려줄 개인 정보
	public User findOne(String id);
	//이력서폼에 뿌려줄 학력정보
	public List<Edu> elist(String id);
	//이력서폼에 뿌려줄 경력정보
	public List<Career> clist(String id);
	//이력서폼에 뿌려줄 자격정보
	public List<Licc> llist(String id);
	
	//선택한 학력정보 DB에서 삭제
	public int deleteEdu(Edu edu);
	//선택한 경력정보 DB에서 삭제
	public int deleteCareer(Career career);
	//선택한 학력정보 DB에서 삭제
	public int deleteLicc(Licc licc);
}
