package sesoc.global.c4d.service;

import java.util.ArrayList;
import java.util.Collection;
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


	@Override
	public List<Map<String, Object>> getVisitCnt(String loginedID) {
		String[] Xarr={"오늘","하루전","2일 전","3일 전","4일 전","5일 전"};
		List<Map<String,Integer>> cntlist=sdao.getVisitCnt(loginedID);
		List<Map<String,Object>> returnlist=new ArrayList<>();
		
		for(int i=0;i>=-5;i--){
			Map<String,Object> tempmap=new HashMap<>();//test위한 map
			Map<String,Object> tempMap=new HashMap<String,Object>();//list에 넣는 map
			boolean check=false;
			for(int k=0; k< cntlist.size();k++){
				Map<String,Integer> map=new HashMap<>();
				map=cntlist.get(k);
				List<Integer> temp = new ArrayList<Integer>(map.values());
				int j=Integer.parseInt(String.valueOf(temp.get(0)));
				if(j==i){
					 //returnlist에 map을 넣고 지운다
					tempMap.put("visitdate", Xarr[i*-1]);
					tempMap.put("cnt", Integer.parseInt(String.valueOf(temp.get(1))));
					returnlist.add(tempMap);
					cntlist.remove(k);
					check=true;
					break;
				}
			}
			 if(!check){
				 tempMap.put("visitdate", Xarr[i*-1]);
					tempMap.put("cnt", 0);
					returnlist.add(tempMap);
			 }
		
		}
		System.out.println("returnlist : "+returnlist);
		return returnlist;
	}

}
