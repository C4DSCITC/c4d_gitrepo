package sesoc.global.c4d.util;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.StringReader;
import java.io.Writer;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.AbstractView;

import com.itextpdf.text.Document;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import com.itextpdf.tool.xml.pipeline.end.PdfWriterPipeline;

public abstract class AbstractTextPdfView extends AbstractView {
	
	public AbstractTextPdfView() {
		setContentType("application/pdf");
	}
	
	@Override
	protected boolean generatesDownloadContent() {
		return true;
	}
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		//Document 생성 & 용지 및 여백 설정
		Document document = new Document(PageSize.A4, 50, 50, 50, 50);
		
		//PdfWriter 생성
		PdfWriter writer= PdfWriter.getInstance(document, response.getOutputStream());
		writer.setInitialLeading(12.5f);
		
		//파일 다운로드 설정
		response.setContentType("application/pdf");
		String fileName = URLEncoder.encode("한글파일명", "UTF-8");
		response.setHeader("Content-Transper-Encoding", "binary");
		response.setHeader("Content-Disposition", "inline; filename="+fileName+".pdf");
		
		//Document 오픈
		document.open();
		XMLWorkerHelper helper = XMLWorkerHelper.getInstance();
		
		//Pipelines
		PdfWriterPipeline pdf = new PdfWriterPipeline(document, writer);
		
		document.close();
		writer.close();
	}

}
