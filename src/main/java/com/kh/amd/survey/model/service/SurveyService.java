package com.kh.amd.survey.model.service;


import java.util.List;

import com.kh.amd.survey.model.vo.Survey;

public interface SurveyService {

	int insertSurvey1(Survey s, String mno);

	int insertSurvey2(Survey s, String mno);

	int insertSurvey3(Survey s, String mno, String hopeExerciseString);

	int updateSurvey(Survey s, String mno);

	List<Survey> surveyList(int mno);

	

	

	

}
