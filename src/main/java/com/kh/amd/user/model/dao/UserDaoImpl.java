package com.kh.amd.user.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;

@Repository
public class UserDaoImpl implements UserDao {

	
	// 1. 맞춤 트레이너 리스트 조회 (전효정)
	@Override
	public List<Member> selectRecommendTrainerList(SqlSessionTemplate sqlSession, int mno, String hopeAge, String hopeGender, String hopePeriod, String hopeExercise, String[] hopeExerciseArr) {
		
		int num = 0;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("hopeAge", hopeAge);
		map.put("hopeGender", hopeGender);
		map.put("hopePeriod", hopePeriod);
		map.put("hopeExercise", hopeExercise);
		map.put("hopeExerciseArr", hopeExerciseArr);
		
		for(int i = 0; i < hopeExerciseArr.length; i++) {
			num++;
			String key = "hopeExercise" + String.valueOf(num);
			map.put(key, hopeExerciseArr[i]);
		}
				
		return sqlSession.selectList("User.selectRecommendTrainerList", map);
		
	}

	
	// 2. 설문조사/키워드 조회 (전효정)
	@Override
	public Survey selectSurvey(SqlSessionTemplate sqlSession, int mno) {
		return sqlSession.selectOne("User.selectSurvey", mno);
	}

}
