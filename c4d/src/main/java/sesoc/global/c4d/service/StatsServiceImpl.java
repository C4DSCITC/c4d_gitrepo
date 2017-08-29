package sesoc.global.c4d.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sesoc.global.c4d.dao.StatsDAOImpl;


@Service("StatsService")
public class StatsServiceImpl implements StatsService{
	@Autowired
	StatsDAOImpl sdao;
	@Override
	
	public Map<String, Object> getPercentage() {
		String[] fields={"WEB","MOBILE","APPLICATION"};
		Map<String,Integer> cntfields=new HashMap<>();
		cntfields=sdao.getFieldCnt();
		Map<String,Object> ratiofield=new HashMap<>();
		int sum=0;
		
		System.out.println(cntfields.get(0));
		for(String i : fields){
			Map<String,Integer> tempmap= cntfields;
			sum+=Integer.parseInt(String.valueOf(tempmap.get(i)));
		}
		
		for(String i : fields){
			System.out.println(Integer.parseInt(String.valueOf(cntfields.get(i))));
			int tempcnt=Integer.parseInt(String.valueOf(cntfields.get(i)));
			float temppercent=tempcnt*100/sum;
			String tempkey=i;
			ratiofield.put(tempkey, temppercent);
		}
		System.out.println("ratiofield:"+ratiofield);//{WEB=30.0, APPLICATION=36.0, MOBILE=34.0}
		return ratiofield;
	}

}
