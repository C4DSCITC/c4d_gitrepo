package sesoc.global.c4d.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class FileService2 {

	public static String saveFile(MultipartFile upload, String uploadPath){
		
		String savedFilename = "";
		
		// false 이면 파일이 전송되었으므로 저장을 진행함
		//if(!path.isEmpty()) return null;
		
		File path = new File(uploadPath);
		
		if(!path.isDirectory()){
			path.mkdirs();
		}
		
		String origianlFilename = upload.getOriginalFilename();
		
		String temp = UUID.randomUUID().toString();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		
		String temp2 = sdf.format(new Date());
		
		//확장자를 뺀이름
		String filename;
		//파일명을 뺀 확장자
		String ext;
		
		//HDD에 저장되는 이름 savedfilename= filename_++uuid+.+ext
		//String savedFileName; 
		
		int lastIndex = origianlFilename.lastIndexOf(".");
		filename = origianlFilename.substring(0, lastIndex);
	
		//확장자(.) 이없으면 -1리턴
		if(lastIndex == -1){
			ext = "";
			
		//확장자가 있으면
		} else {
			
			ext = origianlFilename.substring(lastIndex+1);
		}
		
		//HDD에 지정할 savedFilename 작성
		savedFilename = filename+"_"+temp+"."+ext;
		System.out.println(filename+"_"+temp+"."+ext);
		
		/*savedFilename = filename+"_"+temp2+"."+ext;
		System.out.println("222222222222"+filename+"_"+temp2+"."+ext);
		*/
		
		//파일 객체 생성
		File serverFile = null;
		
		serverFile = new File(uploadPath+"/"+savedFilename);
		
		//저장만함
		try {
			upload.transferTo(serverFile);

		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return savedFilename;
	}
	/**
	 * 
	 */
	public static boolean deleteFile(String fullPath){
		
		boolean result= false;
		
		File deleteFile = new File(fullPath);
		
		if(deleteFile.isFile()){
		
			deleteFile.delete();
			
			result = true;
		}
		
		return result;
	}
}
