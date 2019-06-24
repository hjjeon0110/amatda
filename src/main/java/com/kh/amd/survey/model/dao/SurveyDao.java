package com.kh.amd.survey.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.survey.model.vo.Survey;



public interface SurveyDao {

	int insertSurvey1(SqlSessionTemplate sqlSession, Survey s);

	

	

}
