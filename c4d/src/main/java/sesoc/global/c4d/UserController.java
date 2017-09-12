package sesoc.global.c4d;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import sesoc.global.c4d.service.UserServiceImpl;
import sesoc.global.c4d.util.FileService;
import sesoc.global.c4d.util.FileService2;
import sesoc.global.c4d.vo.User;


@Controller
public class UserController {
	
	@Autowired
	UserServiceImpl service;
	
	final String uploadPath = "/user";
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
	
		return "index";
	}
	
	@RequestMapping("/login")
	public String login(User user, HttpSession session, Model model) {
		
		User result = service.selectOne(user);
		
		if(result != null) {
			
			session.setAttribute("loginId", result.getId());
			
			model.addAttribute("user",result);
			return "index";
		}
		
		return "index";
	}
	
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String join(User user, Model model) {
	
		System.out.println(user);
		
		int result = service.join(user);
		
		return "index";
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "index";
	}
	
	@RequestMapping("/update")
	public String update(HttpSession session, Model model) {
		
		User user = new User();
		
		String loginId = (String)session.getAttribute("loginId");
		
		user.setId(loginId);
		
		user = service.selectOne(user);
		
		model.addAttribute("user", user);
		
		return "update";
	}
	
	@RequestMapping(value="/update", method= RequestMethod.POST)
	public String update(User user, HttpSession session, MultipartFile upload, Model model) {
		
		String id = (String)session.getAttribute("loginId");
		
		user.setId(id);

		if(!upload.isEmpty()) {
			
			User user2 = service.selectOne(user);
			
			String fullPath = uploadPath + "/" + user2.getImage();
			
			FileService2.deleteFile(fullPath);
			
			String savedFilename = FileService2.saveFile(upload, uploadPath);
			
			user.setImage(savedFilename);
		}
		
		System.out.println("업데이트 유저 : "+user);
		
		service.update(user);
		
		User result= service.selectOne(user);
		
		System.out.println("업데이트 된 유저 : "+result);
		
		model.addAttribute("user", result);
		
		return "update";
	}
	@ResponseBody
	@RequestMapping(value="/userCheck", method= RequestMethod.POST)
	public String userCheck(User user) {
		
		User result = service.selectOne(user);
		
		if(result == null) {
			return "failure";
		}
		
		return "success";
	}
	
	@RequestMapping("/download2")
	public String download(HttpSession session, User user, HttpServletResponse response){
		
		String id = (String)session.getAttribute("loginId");
		
		user.setId(id);
		
		user = service.selectOne(user); 
		
		String savedFile = user.getImage();
		
		try{
			//
			response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode((savedFile), "UTF-8"));
		
			
		} catch (UnsupportedEncodingException e){
			e.printStackTrace();
		}
		
		String fullPath = uploadPath + "/" + savedFile;
		
		FileInputStream fileIn = null;
		ServletOutputStream servletOut = null;
		
		try {
			fileIn = new FileInputStream(fullPath);
			
			servletOut = response.getOutputStream();

			FileCopyUtils.copy(fileIn, servletOut);
			
			fileIn.close();
			
			servletOut.close();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
}
