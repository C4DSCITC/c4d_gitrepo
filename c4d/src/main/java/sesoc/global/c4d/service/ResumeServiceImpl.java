package sesoc.global.c4d.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sesoc.global.c4d.dao.ResumeRepository;
import sesoc.global.c4d.vo.Resume;

@Service
public class ResumeServiceImpl implements ResumeService{

	@Autowired
	ResumeRepository repo;
	
	@Override
	public int insert(Resume resume) {
	
		String content = resume.getRes_ans_content().replace("\r\n", "<br>");

		resume.setRes_ans_content(content);
		
		int result = repo.insert(resume);
		
		return result;
	}

	@Override
	public Resume selectOne(Resume resume) {
	
		Resume result = repo.selectOne(resume);
		
		System.out.println("selectOne : "+ result);
		
		String content = result.getRes_ans_content().replace("<br>", "\r\n");
		
		result.setRes_ans_content2(content);
		
		return result;
	}

	@Override
	public List<Resume> select(Resume resume) {
		
		List<Resume> result = repo.select(resume);
		
		
		for(int i = 0; i < result.size(); i++) {
		
			String content = result.get(i).getRes_ans_content();

			if(content.length()<=40) {
				
				result.get(i).setRes_ans_content2(content+"...");
			}
			
			else {
				
				String content2 = content.substring(0, 40);
				
				result.get(i).setRes_ans_content2(content2+"...");
			}
		}
		
		return result;

	}

	@Override
	public int update(Resume resume) {

		String content = resume.getRes_ans_content().replace("\r\n", "<br>");
		
		resume.setRes_ans_content(content);
		
		int result = repo.update(resume);
		
		return result;
	}


}
