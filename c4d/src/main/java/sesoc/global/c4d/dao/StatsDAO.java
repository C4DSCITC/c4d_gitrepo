package sesoc.global.c4d.dao;

import java.util.List;
import java.util.Map;

import sesoc.global.c4d.vo.Career_simple;

public interface StatsDAO {
	 public Map<String,Integer> getFieldCnt();
	public Map<String, Integer> getLangCnt();
	
	public List<Integer> getWorkYearsByID(String id);
	public List<Integer> getWorkYearsAll();
	
	public List<Integer> getSumWorkYearsAll(); 
	public int getSumWorkYearsByID(String id); 
}
