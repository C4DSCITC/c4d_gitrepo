package sesoc.global.c4d.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import sesoc.global.c4d.dao.PfDAO;
import sesoc.global.c4d.dao.ProjectDAO;
import sesoc.global.c4d.util.FileService;
import sesoc.global.c4d.vo.PfImg;
import sesoc.global.c4d.vo.PfItem;
import sesoc.global.c4d.vo.Portfolio;
import sesoc.global.c4d.vo.Project;
@Service
public class PfServiceImpl implements PfService  {
	@Autowired
	ProjectDAO pdao;
 
	@Autowired
	PfDAO pfdao;
	
	final String uploadPath = "/pf/images/"; //파일이 저장되는 HDD  경로
	//final String htmlPath="/pf/";

	@Override
	public void insertPF(Portfolio pf) {
		pfdao.insertPF(pf);
	return;
		
	}
 

	@Override
	public int getCurrentPfNum() {
	 return	pfdao.getCurrentPfNum();
	}


	@Override
	public void insertPfImage(PfImg image) {
		pfdao.insertPFImage(image);
	}


	@Override
	public List<PfItem> getPfItems(String userid) {
		return pfdao.getPfItems(userid);
	}


	@Override
	public String getPf(int pf_num) throws IOException   {
		
		Portfolio pf= pfdao.getPf(pf_num);
		//Project pj=pdao.getPj(pf.getProject_num());
		String htmlFullPath=pf.getPath();
		String everything="";
		System.out.println("getPFService:"+pf);
		//read html file
		try {
		BufferedReader br = new BufferedReader(new FileReader(htmlFullPath));
		    StringBuilder sb = new StringBuilder();
		    String line = br.readLine();

		    while (line != null) {
		        sb.append(line);
		        sb.append(System.lineSeparator());
		        line = br.readLine();
		    }
		     everything = sb.toString();
		     br.close();
		} catch(Exception e){
			e.printStackTrace();
		}
		 
		return everything;
	}


	@Override
	public void resetImgPfNum() {
		 pfdao.resetImgPfNum();
		
	}

 

}
