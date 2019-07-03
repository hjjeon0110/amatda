package com.kh.amd.user.model.service;

import java.util.List;

import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;

public interface UserService {

	// 1. 맞춤 트레이너 리스트 조회 (전효정)
	List<Member> selectRecommendTrainerList(int mno, String hopeAge, String hopeGender, String hopePeriod, String hopeExercise, String[] hopeExerciseArr);

	// 2. 설문조사/키워드 조회 (전효정)
	Survey selectSurvey(int mno);

}
