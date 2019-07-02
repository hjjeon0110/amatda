package com.kh.amd.user.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;
import com.kh.amd.user.model.dao.UserDao;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private UserDao ud;
	
	
	// 1. 맞춤 트레이너 리스트 조회 (전효정)
	@Override
	public List<Member> selectRecommendTrainerList(int mno, String hopeAge, String hopeGender, String hopePeriod, String hopeExcercise) {
		return ud.selectRecommendTrainerList(sqlSession, mno, hopeAge, hopeGender, hopePeriod, hopeExcercise);
	}

	
	// 2. 설문조사/키워드 조회 (전효정)
	@Override
	public Survey selectSurvey(int mno) {
		return ud.selectSurvey(sqlSession, mno);
	}

}
