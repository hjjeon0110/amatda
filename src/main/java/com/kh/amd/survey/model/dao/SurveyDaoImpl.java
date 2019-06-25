package com.kh.amd.survey.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.survey.model.vo.Survey;

@Repository
public class SurveyDaoImpl implements SurveyDao{

	@Override
	public int insertSurvey1(SqlSessionTemplate sqlSession, Survey s) {
		
		return sqlSession.insert("Survey.insertSurvey1", s);
	}

	@Override
	public int insertSurvey2(SqlSessionTemplate sqlSession, Survey s) {
		
		return sqlSession.insert("Survey.insertSurvey2", s);
		
	}

	@Override
	public int insertSurvey3(SqlSessionTemplate sqlSession, Survey s) {
		
		return sqlSession.insert("Survey.insertSurvey3", s);
		
	}

	@Override
	public int updateSurvey(SqlSessionTemplate sqlSession, Survey s) {
		
		return sqlSession.update("Survey.updateSurvey", s);
	}
	
	

}
