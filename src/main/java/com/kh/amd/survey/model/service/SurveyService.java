package com.kh.amd.survey.model.service;


import java.util.List;

import com.kh.amd.survey.model.vo.Survey;

public interface SurveyService {

	int insertSurvey1(Survey s, String mno);

	int insertSurvey2(Survey s);

	int insertSurvey3(Survey s);

	int updateSurvey(Survey s);

	List<Survey> surveyList(int mno);

	

	

	

}
