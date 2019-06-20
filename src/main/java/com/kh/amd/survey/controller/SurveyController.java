package com.kh.amd.survey.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SurveyController {
	
	@RequestMapping("survey.my")
	public String showSurvey() {
		
		return "survey/survey";
		
	}

}
