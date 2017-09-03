package sesoc.global.c4d;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import sesoc.global.c4d.dao.CvDAO;
import sesoc.global.c4d.vo.Career;
import sesoc.global.c4d.vo.Edu;
import sesoc.global.c4d.vo.Licc;
import sesoc.global.c4d.vo.User;

@Controller
public class CvController {

	@Autowired
	SqlSession ss;
	
	@RequestMapping(value = "cv", method = RequestMethod.GET)
	public String cv(String id, Model model) {
		System.out.println("☆Jenna alert: cv도착성공!");
		CvDAO dao = ss.getMapper(CvDAO.class);
		
		User user = dao.findOne(id);
		System.out.println("☆Jenna alert:"+user.toString());
		model.addAttribute("user", user);
		return "cv";
	}
	
	@RequestMapping(value = "cv_download", method = RequestMethod.GET)
	public String cvdownload(String id, Model model) {
		System.out.println("☆Jenna alert: cv_download도착성공!");
		CvDAO dao = ss.getMapper(CvDAO.class);
		User user = dao.findOne(id);
		System.out.println("☆user확인"+user.toString());
		model.addAttribute("user", user);
		return "cv_download";
	}
	
	@RequestMapping(value = "cv_save", method = RequestMethod.POST)
	public String cv_save(
			String id, 
			@RequestParam("List<Edu>") List<Edu> elist, 
			@RequestParam("List<Career>") List<Career> clist, 
			@RequestParam("List<Licc>") List<Licc> llist, 
			Model model){
		
		System.out.println("☆id: "+id+" ["+elist+"] ["+clist+"] ["+llist+"] ");
		
/*		CvDAO dao = ss.getMapper(CvDAO.class);
		dao.cv_save(id, elist, clist, llist)*/;
		
		return "redirect: cv_download";
	}
	
}
