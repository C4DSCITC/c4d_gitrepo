package sesoc.global.c4d.dao;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service
public class CvService {
	public boolean fileUpload(MultipartHttpServletRequest mhsr){
		boolean success = false;
		String uploadPath = "C:\\c4d\\webcv";
		File file = new File(uploadPath);
		
		if(!file.isDirectory()){
			file.mkdirs();
		}
		Iterator<String> iterator = mhsr.getFileNames();
		while(iterator.hasNext()){
			String uploadFileName = iterator.next();
			MultipartFile mpf = mhsr.getFile(uploadFileName);
			String originalFileName = mpf.getOriginalFilename();
			String saveFileName = originalFileName;
			
			if (saveFileName != null && !saveFileName.equals("")) {
				try{
					mpf.transferTo(new File(uploadPath, saveFileName));
					success = true;
				}catch (IllegalStateException e) {
					e.printStackTrace();
					success = false;
				}catch (IOException e) {
					e.printStackTrace();
					success= false;
				}
			}//if
		}//while
		return success;
	}//fileUpload
}
