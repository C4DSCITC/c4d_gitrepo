package sesoc.global.c4d.util;


import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class FileService {
	
	//파일등록
	public static String saveFile(MultipartFile upload, String uploadPath){
		
				File path = new File(uploadPath);
					
				//저장 디렉토리가 없으면 directory 생성
				if(!path.isDirectory())
					path.mkdirs();
						
					String originalFileName = upload.getOriginalFilename();
						
					String temp = UUID.randomUUID().toString();
						
/*					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
					String temp2 = sdf.format(new Date());*/
						
					String filename; //확장명을 뺀 파일명
					String ext; //파일명을 뺀 확장자
					String savedFilename;; //HDD에 저장되는 이름
					//savedFilename = filename + "_" + uuid + "." + ext
					int lastIndex = originalFileName.lastIndexOf(".");
					filename = originalFileName.substring(0, lastIndex);
						
					//확장자가 없으면 -1리턴
					if(lastIndex ==  -1) ext ="";
					else ext = originalFileName.substring(lastIndex+1);
						
					//HDD에 저장할 savedFilename 작성
					savedFilename = filename + "_" + temp + "." + ext;
		
						
					//파일 객체 생성 : 경로 + 파일명
					File serverFile = null;
					serverFile = new File(uploadPath + "/" + savedFilename);
						
					//저장만 함
					try {
						upload.transferTo(serverFile);
					} catch (Exception e) {
						e.printStackTrace();
					}
					return savedFilename;
			}
	/**
	 * HDD에 저장된 파일을 삭제함
	 * @param fullPath 경로+ 파일명
	 * @return
	 */
	//♣파일삭제
	public static boolean deleteFile(String fullPath){
		boolean result = false;
		
		File delFile = new File(fullPath);
		
		if(delFile.isFile()){
			delFile.delete();
			result = true;
		}
		return result;
	}
	
	//0909 seongmin woo
	//path:file이름까지 포함한 경로
	public static boolean saveHtmlFile(String path,String str){
		
		File f = new File(path);

		f.getParentFile().mkdirs(); 
		try {
			f.createNewFile();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
		      BufferedWriter out = new BufferedWriter(new FileWriter(f));

		      out.write(str); out.newLine(); 

		      out.close();
		    } catch(IOException e){
		    	System.out.println(e.getStackTrace());
		    	e.getMessage();
		    	return false;
		    }
		return true;
	}
}
