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

	@Override
	public int insertSurvey1(Survey s, String mno) {
		
		return sd.insertSurvey1(sqlSession, s, mno); 
	
	}

	@Override
	public int insertSurvey2(Survey s, String mno) {
		
		return sd.insertSurvey2(sqlSession, s, mno);
		
	}

	@Override
	public int insertSurvey3(Survey s, String mno) {
		
		return sd.insertSurvey3(sqlSession, s, mno);
	}

	@Override
	public int updateSurvey(Survey s, String mno) {
		
		return sd.updateSurvey(sqlSession, s, mno);
	}

	@Override
	public List<Survey> surveyList(int mno) {
				
		return sd.surveyList(sqlSession, mno);
	}

	

	

	

}
