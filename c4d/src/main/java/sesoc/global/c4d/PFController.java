package sesoc.global.c4d;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import sesoc.global.c4d.service.PfService;
import sesoc.global.c4d.service.ProjectService;
import sesoc.global.c4d.util.FileService;
import sesoc.global.c4d.util.HandlerFile;
import sesoc.global.c4d.vo.PfImage;
import sesoc.global.c4d.vo.Portfolio;
import sesoc.global.c4d.vo.Project;
//0906 seonminwowo
@Controller
public class PFController {
	@Autowired
	ProjectService ps;
	@Autowired
	PfService pfs;
	
	final String uploadPath = "/pf/image";
	
	@RequestMapping(value = "makePF", method = RequestMethod.GET)
	public String makePF(HttpSession session,Model model) {
		session.setAttribute("id", "id1");//
		String loginedID=(String)session.getAttribute("id");
		return "pf/createpf";
	}
	
	@RequestMapping(value = "savePF", method = RequestMethod.POST)
	public String savePF(HttpSession session,Model model,Project pj ) {
		pj.setProject_userid((String)session.getAttribute("id"));
		ps.insertPJ(pj);
		
		Portfolio pf=new Portfolio();
		pf.setProject_num(ps.getCurrentPjNum());
		
		//last pfnum, 없을 경우 return 0+1
		int pfnum=pfs.getCurrentPfNum()+1;
		String userid=pj.getProject_userid();
		
		//save as html file
		String path = "C:" + File.separator + "pf" + File.separator + userid
		+File.separator+pfnum+".html";//일단 하난데 uuid 추가하기
		FileService.saveHtmlFile(path,pj.getSaveCode());
		pf.setPath(path);
		
		//insert pf
		pfs.insertPF(pf);
	
		return "redirect:/";//일단 index로 리다이렉트// 사실은 자신의 수정 페이지로 돌아가야 함 
	}
	
	@RequestMapping(value="saveImage",method=RequestMethod.POST)
	public @ResponseBody boolean saveImage(HttpSession session,MultipartHttpServletRequest multipartRequest) {

		String userid=((String)session.getAttribute("id"));
		int pfnum=pfs.getCurrentPfNum();
	    Map<String, List<String>> fileNames = new HandlerFile(multipartRequest, uploadPath).getUploadFileName();
	    // 실제저장파일명과 원본파일명 DB저장처리
	    System.out.println(fileNames);
	    List<String> list=fileNames.get("saveNames");
	    System.out.println(list);
	    for(String savefilename : list){

		    PfImage pfimage=new PfImage(userid+String.valueOf(pfnum),pfnum, savefilename);
		    System.out.println("pfimg:"+pfimage);
		    pfs.insertPfImage(pfimage);
	    }
	    //파일 업로드 성공여부 체크
	    return true;
	  }


	
	
	
	//ajax?
/*	@RequestMapping(value = "openPF", method = RequestMethod.POST)
	public String openPF(HttpSession session,Model model,int pf_num) {
		
		return "redirect:/";//일단 index로 리다이렉트// 사실은 자신의 수정 페이지로 돌아가야 함 
	}
	*/
	
	
	
}
