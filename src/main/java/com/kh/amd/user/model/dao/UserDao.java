package com.kh.amd.user.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;

public interface UserDao {


	// 1. 맞춤 트레이너 리스트 조회 (전효정)
	List<Member> selectRecommendTrainerList(SqlSessionTemplate sqlSession, int mno, String hopeAge, String hopeGender, String hopePeriod, String hopeExcercise);

	// 2. 설문조사/키워드 조회 (전효정)
	Survey selectSurvey(SqlSessionTemplate sqlSession, int mno);
	
}
