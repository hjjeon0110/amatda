package com.kh.amd.survey.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.survey.model.vo.Survey;

@Repository
public class SurveyDaoImpl implements SurveyDao{ 

	
	//설문조사 첫번째 insert + 멤버 status update 
	@Override
	public int insertSurvey1(SqlSessionTemplate sqlSession, Survey s, String mno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("s", s);
		map.put("mno", mno);
		
		return sqlSession.insert("Survey.insertSurvey1", map);
	}

	
	//설문조사 두번째 update
	@Override
	public int insertSurvey2(SqlSessionTemplate sqlSession, Survey s, String mno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("s", s);
		map.put("mno", mno);
		
		return sqlSession.insert("Survey.insertSurvey2", map);
		
	}

	
	//설문조사 세번째 update
	@Override
	public int insertSurvey3(SqlSessionTemplate sqlSession, Survey s, String mno, String hopeExerciseString) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("s", s);
		map.put("mno", mno);
		map.put("hopeExerciseString", hopeExerciseString);
		
		return sqlSession.insert("Survey.insertSurvey3", map);
		
	}

	
	//설문조사 완전체 update
	@Override
	public int updateSurvey(SqlSessionTemplate sqlSession, Survey s, String mno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("s", s);
		map.put("mno", mno);
		
		return sqlSession.update("Survey.updateSurvey", map);
	}

	
	//설문조사 select
	@Override
	public List<Survey> surveyList(SqlSessionTemplate sqlSession, int mno) {
		
		System.out.println("dao mno : " + mno);
		
		return sqlSession.selectList("Survey.listSurvey", mno);
	}

	
	//설문조사 트랜잭션
	@Override
	public int updateMember(SqlSessionTemplate sqlSession, String mno) {		
		
		return sqlSession.update("Survey.updateMember", mno);
	}

	
	
	

}
