package sesoc.global.c4d;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sesoc.global.c4d.dao.CvDAO;
import sesoc.global.c4d.dao.CvService;
import sesoc.global.c4d.vo.Career;
import sesoc.global.c4d.vo.Cv;
import sesoc.global.c4d.vo.Edu;
import sesoc.global.c4d.vo.Licc;
import sesoc.global.c4d.vo.Project;
import sesoc.global.c4d.vo.User;

@Controller
public class CvController {

	@Autowired
	SqlSession ss;
	
	@RequestMapping(value = "cv", method = RequestMethod.GET)
	public String cv(HttpSession session) {
		String id = (String) session.getAttribute("id");
		System.out.println("☆Jenna alert: cv도착성공!");
		CvDAO dao = ss.getMapper(CvDAO.class);
		//저장된 cv가 있는지 조회
		Cv cv = dao.findCV(id);
		System.out.println("CV보유여부확인: "+cv);
		if(cv == null){
			return "start_page";
			//☆저장된 cv 띄우는 경로로 수정예정
		}else
			cv.getCv_savedpath();
			return "";
		
	}
	
	//출력용 CV (유저, 학력, 경력, 자격, 프로젝트 정보를 불러온다)
	@RequestMapping(value = "cv_download", method = RequestMethod.GET)
	public String cvdownload(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		System.out.println("☆Jenna alert: cv_download도착성공!");
		CvDAO dao = ss.getMapper(CvDAO.class);
		User user = dao.findOne(id);
		List<Edu>elist = dao.elist(id);
		List<Career>clist = dao.clist(id);
		List<Licc>llist = dao.llist(id);
		List<Project>plist = dao.plist(id);
		
		model.addAttribute("user", user);
		model.addAttribute("elist", elist);
		model.addAttribute("clist", clist);
		model.addAttribute("llist", llist);
		model.addAttribute("plist", plist);
		
		System.out.println("☆user확인"+user.toString());
		System.out.println("☆elist확인"+elist.toString());
		System.out.println("☆clist확인"+clist.toString());
		System.out.println("☆llist확인"+llist.toString());
		System.out.println("☆plist확인"+plist.toString());
		
		return "cv_download";
	}
	
	
	//학력정보를 저장
	@RequestMapping(value = "cv_edusave", method = RequestMethod.POST)
	public String cv_edusave(HttpSession session, @RequestBody List<Edu> elist, Edu edu){
		String id = (String) session.getAttribute("id");
		CvDAO dao = ss.getMapper(CvDAO.class);
		for (int i = 0; i < elist.size(); i++) {
			edu.setEdu_userid(id);
			edu.setEdu_school(elist.get(i).getEdu_school());
			edu.setEdu_major(elist.get(i).getEdu_major());
			edu.setEdu_degree(elist.get(i).getEdu_degree());
			edu.setEdu_gpa(elist.get(i).getEdu_gpa());
			edu.setEdu_startdate(elist.get(i).getEdu_startdate());
			edu.setEdu_enddate(elist.get(i).getEdu_enddate());
			int result= dao.saveEdu(edu);
			System.out.println("☆학력저장결과: "+result);
		}
		return "redirect:cv_download";
	}
	
	//경력정보를 저장
	@RequestMapping(value = "cv_careersave", method = RequestMethod.POST)
	public String cv_careersave(HttpSession session, @RequestBody List<Career> clist, Career career){
		String id = (String) session.getAttribute("id");
		CvDAO dao = ss.getMapper(CvDAO.class);
		for (int i = 0; i < clist.size(); i++) {
			career.setCareer_userid(id);
			career.setCareer_title(clist.get(i).getCareer_title());
			career.setCareer_org(clist.get(i).getCareer_org());
			career.setCareer_dept(clist.get(i).getCareer_dept());
			career.setCareer_startdate(clist.get(i).getCareer_startdate());
			career.setCareer_enddate(clist.get(i).getCareer_enddate());
			int result = dao.saveCareer(career);
			System.out.println("☆경력저장결과: "+result);
		}
		return "redirect:cv_download";
	}
	
	//자격정보를 저장
	@RequestMapping(value = "cv_liccsave", method = RequestMethod.POST)
	public String cv_liccsave(HttpSession session, @RequestBody List<Licc> llist, Licc licc){
		String id = (String) session.getAttribute("id");
		
		CvDAO dao = ss.getMapper(CvDAO.class);
		for (int i = 0; i < llist.size(); i++) {
			licc.setLicc_userid(id);
			licc.setLicc_title(llist.get(i).getLicc_title());
			licc.setLicc_org(llist.get(i).getLicc_org());
			licc.setLicc_ref(llist.get(i).getLicc_ref());
			licc.setLicc_date(llist.get(i).getLicc_date());
			int result = dao.saveLicc(licc);
			System.out.println("☆자격저장결과: "+result);
			
		}
		return "redirect:cv_download";
	}
	
	//프로젝트정보를 저장
		@RequestMapping(value = "cv_prjsave", method = RequestMethod.POST)
		public String cv_prjsave(HttpSession session, @RequestBody List<Project> plist, Project project){
			String id = (String) session.getAttribute("id");
			CvDAO dao = ss.getMapper(CvDAO.class);
			
			for (int i = 0; i < plist.size(); i++) {
				project.setProject_userid(id);
				project.setProject_title(plist.get(i).getProject_title());
				project.setProject_org(plist.get(i).getProject_org());
				project.setProject_startdate(plist.get(i).getProject_startdate());
				project.setProject_enddate(plist.get(i).getProject_enddate());
				int result= dao.savePrj(project);
				System.out.println("☆프로젝트저장결과: "+result);
			}
			return "redirect:cv_download";
		}
		
	//템플릿을 불러옴
		@RequestMapping(value = "cv_edit1", method = RequestMethod.GET)
		public String cv_edit(HttpSession session, Model model){
			System.out.println("☆Jenna alert: cv_edit도착성공!");
			
			
			String id = (String) session.getAttribute("id");
			CvDAO dao = ss.getMapper(CvDAO.class);
			
			User user = dao.findOne(id);
			List<Edu>elist = dao.elist(id);
			List<Career>clist = dao.clist(id);
			System.out.println("☆Jenna alert:"+user.toString());
			model.addAttribute("user", user);
			model.addAttribute("elist", elist);
			model.addAttribute("clist", clist);
			return "cv1_edit";
		}
		
/*		//pdf요청 처리
		@RequestMapping(value="pdf", method=RequestMethod.GET)
		public String pdf(Model model){
			
			return "pdf";
		}*/
		//서비스 주입
/*		@Autowired
		private CvService cvservice;
		
		//수정된 템플릿의 html을 txt파일로 저장
		
		
		@RequestMapping(value="save_html", method = RequestMethod.POST)
		public String save_htmlcheck(String content){
			String msg ="실패";
			if (content != null) {
				msg = "성공";
			}
			return msg;
		}*/
		
		/*public ModelAndView save_html(MultipartHttpServletRequest mhsr, String content, HttpSession session){
			ModelAndView mav = new ModelAndView();
			
			if (cvservice.fileUpload(mhsr)) {
				mav.addObject("result", "Saved successfully");
			}else {
				mav.addObject("result", "Save failed. Pleasse try again");
			}
			mav.setViewName("JSON");
			return mav;
		}*/
}
