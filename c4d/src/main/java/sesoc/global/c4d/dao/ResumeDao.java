package sesoc.global.c4d.dao;

import java.util.List;
import java.util.Map;

import sesoc.global.c4d.vo.Resume;

public interface ResumeDao {

	public int insert(Resume resume);
	
	public Resume selectOne(Resume resume);
	
	public List<Resume> select(Resume resume);

	public int update(Resume resume);
}
