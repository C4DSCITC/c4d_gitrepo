package sesoc.global.c4d.service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import sesoc.global.c4d.dao.PfDAO;
import sesoc.global.c4d.dao.ProjectDAO;
import sesoc.global.c4d.util.FileService;
import sesoc.global.c4d.vo.PfImage;
import sesoc.global.c4d.vo.Portfolio;
import sesoc.global.c4d.vo.Project;
@Service
public class PfServiceImpl implements PfService  {
	@Autowired
	ProjectDAO pdao;
 
	@Autowired
	PfDAO pfdao;
	
	final String uploadPath = "/pf/images"; //파일이 저장되는 HDD  경로

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
	public void insertPfImage(PfImage image) {
		pfdao.insertPFImage(image);
	}

}
