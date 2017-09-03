package sesoc.global.c4d.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sesoc.global.c4d.dao.StatsDAOImpl;
import sesoc.global.c4d.vo.Career;

@Service("StatsService")
public class StatsServiceImpl implements StatsService{
	
	@Autowired
	StatsDAOImpl sdao; 
	
	@Override
	public List<Map<String, Object>> getPercentage(String what) {
		String[] fields={"WEB","MOBILE","APPLICATION"};
		String[] languages={"JAVA","PHP","C"};
		String[] whatlist={};
		Map<String,Integer> cnts=new HashMap<>();
		switch(what){
		case "field":
			whatlist=fields;
			cnts=sdao.getFieldCnt();
			break;
		case "language":
			whatlist=languages;
			cnts=sdao.getLangCnt();
			break;
		} 
		
		List<Map<String,Object>> list=new ArrayList<Map<String,Object>>();
		
		int sum=0;
		
		for(String i : whatlist){
			Map<String,Integer> tempmap= cnts;
			sum+=Integer.parseInt(String.valueOf(tempmap.get(i)));
		}
		
		for(String i : whatlist){
			Map<String,Object> map=new HashMap<>();
			int tempcnt=Integer.parseInt(String.valueOf(cnts.get(i)));
			float temppercent=tempcnt*100/sum;
			map.put("label", i);
			map.put("value", temppercent);
			list.add(map);
		}
		return list;
	}
	
	
	@Override
	public float getAvgWorkYears(String loginedID) {
		
		List<Integer> workMonths= null;
		if(loginedID.equals(""))
			workMonths=sdao.getWorkYearsAll();
		else
			workMonths=sdao.getWorkYearsByID(loginedID); 
		
		int sum=0;
		for(int workmonth : workMonths){
			sum+=workmonth;
		}
		float result =(float) ((float) Math.round(((float)sum/((float)(workMonths.size()*12)))*100d) / 100d);
		return result;
	}


	@Override
	public float getSumWorkYears(String loginedID) {
		int workMonths= 0;
		List<Integer> workMonthslist=null;
		if(loginedID.equals("")){
			int sum=0;
			workMonthslist=sdao.getSumWorkYearsAll();
			for(int workMonth : workMonthslist){
				sum+=workMonth;
			}
			workMonths=sum/workMonthslist.size();
		}
		else
			workMonths=sdao.getSumWorkYearsByID(loginedID); 
		return (float) ((float) Math.round((workMonths/12)*100d) / 100d);
	}

}
