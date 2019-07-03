package com.kh.amd.survey.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.survey.model.vo.Survey;



public interface SurveyDao {

	int insertSurvey1(SqlSessionTemplate sqlSession, Survey s, String mno);

	int insertSurvey2(SqlSessionTemplate sqlSession, Survey s, String mno);

	int insertSurvey3(SqlSessionTemplate sqlSession, Survey s, String mno, String hopeExerciseString);

	int updateSurvey(SqlSessionTemplate sqlSession, Survey s, String mno);

	List<Survey> surveyList(SqlSessionTemplate sqlSession, int mno);

	int updateMember(SqlSessionTemplate sqlSession, String mno);

	

	

	

	

}
