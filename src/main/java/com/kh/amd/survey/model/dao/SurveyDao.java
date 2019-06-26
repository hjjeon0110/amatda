package com.kh.amd.survey.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.survey.model.vo.Survey;



public interface SurveyDao {

	int insertSurvey1(SqlSessionTemplate sqlSession, Survey s, String mno);

	int insertSurvey2(SqlSessionTemplate sqlSession, Survey s);

	int insertSurvey3(SqlSessionTemplate sqlSession, Survey s);

	int updateSurvey(SqlSessionTemplate sqlSession, Survey s);

	List<Survey> surveyList(SqlSessionTemplate sqlSession, int mno); 

	

	

	

}
