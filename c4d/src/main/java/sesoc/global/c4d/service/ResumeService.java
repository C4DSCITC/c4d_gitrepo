package sesoc.global.c4d.service;

import java.util.List;

import sesoc.global.c4d.vo.Resume;

public interface ResumeService {

	public int insert(Resume resume);
	
	public Resume selectOne(Resume resume);
	
	public List<Resume> select(Resume resume);
	
	public int update(Resume resume);
	
}
