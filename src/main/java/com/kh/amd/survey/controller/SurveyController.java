package com.kh.amd.survey.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.amd.survey.model.service.SurveyService;
import com.kh.amd.survey.model.vo.Survey;

@Controller
public class SurveyController {
	
	@Autowired
	private SurveyService ss;
	
	@RequestMapping(value="insert1.su")
	public String insertSurvey1(Model model, Survey s, HttpServletRequest request) {
		
		System.out.println(s);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		try {
			ss.insertSurvey1(s);
			
			return "survey/survey2";
			
		}catch(Exception e){
			
			model.addAttribute("msg","등록실패");
			
			return "common/errorPage";
			
		}
		
		/* return "survey/survey1"; */
		
	}
	
	@RequestMapping("survey1.su")
	public String showSurvey1() {
		
		return "survey/survey1";
		
	}
	
	/*
	 * @RequestMapping("survey2.su") public String insertSurvey2() {
	 * 
	 * 
	 * 
	 * return "survey/survey2";
	 * 
	 * }
	 */
	
	@RequestMapping(value="insert2.su")
	public String insertSurvey2(Model model, Survey s, HttpServletRequest request) {
		
		System.out.println(s);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		try {
			ss.insertSurvey1(s);
			
			return "survey/survey3";
			
		}catch(Exception e){
			
			model.addAttribute("msg","등록실패");
			
			return "common/errorPage";
			
		}
		
		/* return "survey/survey1"; */
		
	}
	
	@RequestMapping("survey3.su")
	public String insertSurvey3() {
		
		return "survey/survey3";
		
	}
	

}
