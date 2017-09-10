package sesoc.global.c4d.service;

import org.springframework.web.multipart.MultipartFile;

import sesoc.global.c4d.vo.PfImage;
import sesoc.global.c4d.vo.Portfolio;
import sesoc.global.c4d.vo.Project;

public interface PfService {

	public void insertPF(Portfolio pf);

	public int getCurrentPfNum();

	public void insertPfImage(PfImage image);
}
