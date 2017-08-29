package sesoc.global.c4d;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sesoc.global.c4d.service.StatsService;
import sesoc.global.c4d.service.StatsServiceImpl;



@Controller
public class HomeController {
	@Autowired
	StatsService ss;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "redirect:mainpage";
	}
	
	@RequestMapping(value = "mainpage", method = RequestMethod.GET)
	public String mainpage(Model model) {
		
		model.addAttribute("fieldsratio",ss.getPercentage());
		return "index";
	}
}
