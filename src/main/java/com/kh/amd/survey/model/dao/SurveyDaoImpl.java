package com.kh.amd.survey.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.survey.model.vo.Survey;

@Repository
public class SurveyDaoImpl implements SurveyDao{ 

	@Override
	public int insertSurvey1(SqlSessionTemplate sqlSession, Survey s, String mno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("s", s);
		map.put("mno", mno);
		
		return sqlSession.insert("Survey.insertSurvey1", map);
	}

	@Override
	public int insertSurvey2(SqlSessionTemplate sqlSession, Survey s, String mno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("s", s);
		map.put("mno", mno);
		
		return sqlSession.insert("Survey.insertSurvey2", map);
		
	}

	@Override
	public int insertSurvey3(SqlSessionTemplate sqlSession, Survey s, String mno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("s", s);
		map.put("mno", mno);
		
		return sqlSession.insert("Survey.insertSurvey3", map);
		
	}

	@Override
	public int updateSurvey(SqlSessionTemplate sqlSession, Survey s, String mno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("s", s);
		map.put("mno", mno);
		
		return sqlSession.update("Survey.updateSurvey", map);
	}

	@Override
	public List<Survey> surveyList(SqlSessionTemplate sqlSession, int mno) {
		
		System.out.println("dao mno : " + mno);
		
		return sqlSession.selectList("Survey.listSurvey", mno);
	}

	@Override
	public int updateMember(SqlSessionTemplate sqlSession, String mno) {		
		
		return sqlSession.update("Survey.updateMember", mno);
	}

	
	
	

}
