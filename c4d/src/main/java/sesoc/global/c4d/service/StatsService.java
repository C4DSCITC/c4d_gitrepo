package sesoc.global.c4d.service;

import java.util.List;
import java.util.Map;

public interface StatsService {
	public List<Map<String, Object>> getPercentage(String what);

	public float getAvgWorkYears(String loginedID);
	public float getSumWorkYears(String loginedID);
 
}
