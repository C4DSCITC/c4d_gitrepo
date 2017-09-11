package sesoc.global.c4d.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import sesoc.global.c4d.vo.PfImg;
import sesoc.global.c4d.vo.PfItem;
import sesoc.global.c4d.vo.Portfolio;
import sesoc.global.c4d.vo.Project;

public interface PfService {

	public void insertPF(Portfolio pf);

	public int getCurrentPfNum();

	public void insertPfImage(PfImg image);


	public List<PfItem> getPfItems(String userid);


	public String getPf(int pf_num) throws IOException;

	public void resetImgPfNum();
}
