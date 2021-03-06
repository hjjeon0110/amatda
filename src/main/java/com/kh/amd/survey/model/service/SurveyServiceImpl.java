package com.kh.amd.survey.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.amd.survey.model.dao.SurveyDao;
import com.kh.amd.survey.model.vo.Survey;

@Service
public class SurveyServiceImpl implements SurveyService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private SurveyDao sd;
	@Autowired
	private DataSourceTransactionManager transactionManager;

	
	//설문조사 첫번째 insert + 멤버 status update
	@Override
	public int insertSurvey1(Survey s, String mno) {
		
		 int result = 0;
		  
		  int result1 = sd.insertSurvey1(sqlSession, s, mno);
		  
		  System.out.println(result1);
		  
		  int result2 = sd.updateMember(sqlSession, mno);
		  
		  System.out.println(result2);
		  
		  if(result1 > 0 && result2 > 0) {
			  
			  result = 1;
			  
		}else { 
			
			  result = 0; 
			  
		}
		  
		  return result;
		
		//return sd.insertSurvey1(sqlSession, s, mno); 
	
	}

	
	//설문조사 두번째 update
	@Override
	public int insertSurvey2(Survey s, String mno) {
		
		return sd.insertSurvey2(sqlSession, s, mno);
		
	}

	
	//설문조사 세번째 update
	@Override
	public int insertSurvey3(Survey s, String mno, String hopeExerciseString) {
		
		return sd.insertSurvey3(sqlSession, s, mno, hopeExerciseString);
	}

	
	//설문조사 완전체 update
	@Override
	public int updateSurvey(Survey s, String mno) {
		
		return sd.updateSurvey(sqlSession, s, mno);
	}

	
	//설문조사 select
	@Override
	public List<Survey> surveyList(int mno) {
				
		return sd.surveyList(sqlSession, mno);
	}
	

	

}
