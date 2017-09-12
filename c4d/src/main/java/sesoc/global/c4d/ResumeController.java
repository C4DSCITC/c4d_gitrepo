package sesoc.global.c4d;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sesoc.global.c4d.service.ResumeServiceImpl;
import sesoc.global.c4d.vo.Resume;

@Controller
public class ResumeController {

	@Autowired
	ResumeServiceImpl service;
	
	@RequestMapping("/resume")
	public String resumeForm() {
	
		return "resume";
	}
	
	@ResponseBody
	@RequestMapping("/resumeList")
	public List<Resume> resumeList(HttpSession session, Resume resume, String sort) {
		
		String id = (String)session.getAttribute("loginId");
		
		resume.setRes_ans_sort(sort);
		
		resume.setRes_ans_id(id);
	
		List<Resume> resumeList = service.select(resume);
	
		return resumeList;
	}
	
	@RequestMapping("/resumeInsert")
	public String resumeInsert(Resume resume, HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("loginId");
		
		resume.setRes_ans_id(id);
		
		service.insert(resume);
		
		/*Resume result = service.selectOne(resume);
		
		model.addAttribute("user", result);*/
		
		return "resume";
	}
	
	@ResponseBody
	@RequestMapping("/resumeOne")
	public Resume resumeOne(HttpSession session,Model model, Resume resume) {
		
		String id = (String)session.getAttribute("loginId");
		
		resume.setRes_ans_id(id);
		
		Resume result = service.selectOne(resume);
		
		return result;
	}
	
	@RequestMapping("/resumeUpdate")
	public String resumeUpdate(Resume resume, HttpSession session) {
		
		String id = (String)session.getAttribute("loginId");
		
		resume.setRes_ans_id(id);
		
		int result = service.update(resume);
		
		return "resume";
	}
	
}
