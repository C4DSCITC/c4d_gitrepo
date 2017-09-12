package sesoc.global.c4d;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import sesoc.global.c4d.service.PfService;
import sesoc.global.c4d.service.ProjectService;
import sesoc.global.c4d.util.FileService;
import sesoc.global.c4d.util.HandlerFile;
import sesoc.global.c4d.vo.PfImg;
import sesoc.global.c4d.vo.PfItem;
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
		int pfnum=pfs.getCurrentPfNum()+1;
		System.out.println("saveImage :Current Pf NUm ::"+pfnum);
	    Map<String, List<String>> fileNames = new HandlerFile(multipartRequest, uploadPath).getUploadFileName();
	    // 실제저장파일명과 원본파일명 DB저장처리
	    List<String> list=fileNames.get("saveNames");

	    for(String savefilename : list){
		    PfImg pfimage=new PfImg(0,pfnum, savefilename);
		    pfs.insertPfImage(pfimage);
	    }
	    //파일 업로드 성공여부 체크
	    return true;
	  }
	 
	@RequestMapping(value="pflist",method=RequestMethod.GET)//isMyCv때문에 get으로
	public  String pfList(HttpSession session, Model model,boolean isMyCv) {
		List<PfItem> pflist=new ArrayList<PfItem>();
		String userid=((String)session.getAttribute("id")); 
		
		 if(isMyCv){
			pflist= pfs.getPfItems(userid);
		 }
		 else{
			 pflist=pfs.getPfItems("");
		 }
		 model.addAttribute("pflist", pflist);
		 System.out.println("pflist::"+pflist);
	    return "pf/testindex";
	  }
	
	@RequestMapping("/download")
	public String download(String path, HttpServletResponse response){
		//System.out.println(pfnum);
		/*PfImg pfimage = pfs.findOne(pfnum);
		System.out.println("image"+pfimage);*/
		if(path!=null){
		String fullPath = uploadPath + "/" + path;
		fullPath = fullPath.replaceAll(" ", "");
		System.out.println(fullPath);
		//Server의 HDD 어딘가에 저장되어 있는 file을 읽어들임
		FileInputStream filein = null;
		//network를 통해 client에게 output
		ServletOutputStream sout = null;
		
		try {
			filein = new FileInputStream(fullPath);
			sout = response.getOutputStream();
			//
			FileCopyUtils.copy(filein, sout);
			
			filein.close();
			sout.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		}
		return null;
	}
	
	//문제 있는 부분
	@RequestMapping(value="gethtml",method=RequestMethod.POST)
	public @ResponseBody String getHtml(HttpSession session, int pf_num ) {
		String pfcode="";
		try {
			pfcode = pfs.getPf(pf_num);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return pfcode;
	  }
	
	@RequestMapping(value="resetimgpfnum",method=RequestMethod.POST)
	public void resetImgPfNum(HttpSession session ) {
		pfs.resetImgPfNum();
		 
	  }
}
