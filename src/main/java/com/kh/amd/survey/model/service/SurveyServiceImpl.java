package com.kh.amd.survey.model.service;

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
	public int insertSurvey1(Survey s) {
		return sd.insertSurvey1(sqlSession, s);
	}

}
