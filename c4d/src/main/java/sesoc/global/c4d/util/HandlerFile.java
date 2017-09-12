package sesoc.global.c4d.util;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
 
import javax.servlet.http.HttpServletResponse;
 
import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
 
public class HandlerFile {
   
  private MultipartHttpServletRequest multipartRequest; // upload
  private String filePath; // common
  private Map<String, List<String>> fileNames; // upload
  private String oldName; // down
  private HttpServletResponse resp; // down
  private byte[] fileByte; // down
   
  public HandlerFile() {}
  // upload 생성자
  public HandlerFile(MultipartHttpServletRequest multipartRequest, String filePath) {
    this.multipartRequest = multipartRequest;
    this.filePath = filePath;
    fileNames = new HashMap<String, List<String>>();
  }
  // upload setter
  public HandlerFile setUpload(MultipartHttpServletRequest multipartRequest, String filePath) {
    this.multipartRequest = multipartRequest;
    this.filePath = filePath;
    fileNames = new HashMap<String, List<String>>();
    return this;
  }
  // upload
  public Map<String, List<String>> getUploadFileName() {
    upload(true);
    return fileNames;
  }
  // upload save이름 생성여부
  public Map<String, List<String>> getUploadFileName(boolean saveNameCreate) {
    upload(saveNameCreate);
    return fileNames;
  }
  // 파일 업로드 처리
  private void upload(boolean saveNameCreate) {
    Iterator<String> itr = multipartRequest.getFileNames();
    List<String> oldNames = new ArrayList<String>();
    List<String> saveNames = new ArrayList<String>();
    StringBuffer sb = null;
    while (itr.hasNext()) { // 받은 파일들을 모두 돌린다.
      MultipartFile mpf = multipartRequest.getFile(itr.next());
      sb = new StringBuffer();
      String oldFileName = mpf.getOriginalFilename(); // 파일명
      String saveFileName = sb.append(new SimpleDateFormat("yyyyMMdd").format(System.currentTimeMillis()))
                  .append("-")
                  .append(UUID.randomUUID().toString())
                  .append(oldFileName.substring(oldFileName.lastIndexOf("."))).toString();
      String fileFullPath = null;
      if(saveNameCreate) {
        fileFullPath = filePath + "/" + saveFileName; // 파일 전체 경로
      }else {
        fileFullPath = filePath + "/" + oldFileName;
      }
      try {
        // 경로가 없으면 생성
        File targetDir = new File(fileFullPath);
        if(!targetDir.exists()) {
          targetDir.mkdirs();
        }
        // 파일 저장
        mpf.transferTo(new File(fileFullPath));
        oldNames.add(oldFileName);
        if(saveNameCreate) {
          saveNames.add(saveFileName);
        }else {
          saveNames.add(oldFileName);
        }
      } catch (Exception e) {
        e.printStackTrace();
      }
    }
    fileNames.put("oldNames", oldNames);
    fileNames.put("saveNames", saveNames);
  }
   
  // down 생성자
  public HandlerFile(HttpServletResponse resp, String filePath, String saveName, String oldName) {
    this.resp = resp;
    this.filePath = filePath + "/" + saveName;
    this.oldName = oldName;
  }
  // down setter
  public HandlerFile setDown(HttpServletResponse resp, String filePath, String saveName, String oldName) {
    this.resp = resp;
    this.filePath = filePath + "/" + saveName;
    this.oldName = oldName;
    return this;
  }
  // down
  public byte[] getDownloadFileByte() {
    dowonload();
    return fileByte;
  }
  // down
  private void dowonload() {
    try {
      fileByte = FileUtils.readFileToByteArray(new File(filePath));
      resp.setContentType("application/octet-stream");
      resp.setContentLength(fileByte.length);
      // 다운로드시 변경할 파일명
      resp.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(oldName, "UTF-8") + "\";");
      resp.setHeader("Content-Transfer-Encoding", "binary");
    } catch (IOException e) {
      e.printStackTrace();
    }
  }
   
  // delete 생성자
  public HandlerFile(String filePath, String saveName) {
    this.filePath = filePath + "/" + saveName;
  }
  // delete setter
  public HandlerFile setDelete(String filePath, String saveName) {
    this.filePath = filePath + "/" + saveName;
    return this;
  }
  // delete
  public void deleteFileExecute() {
    File file = new File(filePath);
    if(file.exists()) {
      file.delete();
    }
  }
}


