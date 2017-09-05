package sesoc.global.c4d;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import sesoc.global.c4d.service.CareerService;
import sesoc.global.c4d.service.ProjectService;
import sesoc.global.c4d.service.StatsService;
import sesoc.global.c4d.vo.Career_simple;
@Controller
public class StatsController {
	@Autowired
	StatsService ss;
	@Autowired
	CareerService cs;
	@Autowired
	ProjectService ps;
	@RequestMapping(value = "stats", method = RequestMethod.GET)
	public String stats(HttpSession session,Model model) {
		session.setAttribute("id", "id1");//
		String loginedID=(String)session.getAttribute("id");
		float avgWorkYears=ss.getAvgWorkYears(loginedID);
		model.addAttribute("avgworkyears",avgWorkYears);
		return "stats/stats";
	}
	
	@RequestMapping(value = "getExperiences", method = RequestMethod.POST)
	public @ResponseBody List<Map<String,Object>> getExperiences(HttpSession session,Model model) {
		String loginedID=(String)session.getAttribute("id");
		List<Map<String,Object>> list2=new ArrayList<Map<String,Object>>();
		Map<String,Object> map1=new HashMap<>();
		Map<String,Object> map2=new HashMap<>();
		//get avg work years
		float avgWorkYears=ss.getAvgWorkYears(loginedID);
		float avgWorkYearsAll=ss.getAvgWorkYears("");
		map1.put("", "근속년수");
		map1.put("whole avg", avgWorkYearsAll);
		map1.put("my avg", avgWorkYears);
		list2.add(map1);
		
		float sumWorkYears=ss.getSumWorkYears(loginedID);
		float sumWorkYearsAll=ss.getSumWorkYears("");
		 map2.put("", "경력");
		 map2.put("whole avg", sumWorkYearsAll);
		 map2.put("my avg", sumWorkYears);
		 list2.add(map2);
		
		 return list2;
	}
	@RequestMapping(value = "getVisitCnt", method = RequestMethod.POST)
	public @ResponseBody List<Map<String,Object>> getVisitCnt(HttpSession session,Model model) {
		String loginedID=(String)session.getAttribute("id");
		List<Map<String,Object>> list2=ss.getVisitCnt(loginedID);
		
		 return list2;
	}
	@RequestMapping(value = "fieldratios", method = RequestMethod.POST)
	public @ResponseBody List<Map<String,Object>> fieldratios(Model model) {
		List<Map<String,Object>> list=ss.getPercentage("field");
		model.addAttribute("fieldratios",list);
		return list;
	}
	
	@RequestMapping(value = "langratios", method = RequestMethod.POST)
	public @ResponseBody List<Map<String,Object>> langratios(Model model) {
		List<Map<String,Object>> list=ss.getPercentage("language"); 
		model.addAttribute("langratios",list);
		return list;
	}
	
	////
	@RequestMapping(value = "getUserCareer", method = RequestMethod.POST)
	public @ResponseBody List<Career_simple> getUserCareer(Model model) {
		List<Career_simple> list=cs.getUserCareer("id1");
		System.out.println(list);
		return list;
	}
	@RequestMapping(value = "getUserPJ", method = RequestMethod.POST)
	public @ResponseBody List<Career_simple> getUserPJ(Model model) {
		List<Career_simple> list=ps.getUserPJ("id1");
		return list;
	}
 
}
