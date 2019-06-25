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
	
	//insert 설문조사 시작
	@RequestMapping("survey1.su")
	public String showSurvey1() {
		
		return "survey/survey1";
		
	}
	
	
	//update 설문조사
	@RequestMapping("updateSurvey.su")
	public String updateSurvey() {
		
		return "survey/updateSurvey";
		
	}
	
	
	//첫번째 설문조사 insert
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
		
	}
		
	//두번째 설문조사 insert
	@RequestMapping(value="insert2.su")
	public String insertSurvey2(Model model, Survey s, HttpServletRequest request) {
		
		System.out.println(s);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		int result = ss.insertSurvey2(s);
		
		if(result > 0) {
			return "survey/survey3";
		}else {
			model.addAttribute("msg","등록실패");
			return "common/errorPage";
		}		 
		
	}
	
	
	//세번째 설문조사 insert
	@RequestMapping(value="insert3.su")
	public String insertSurvey3(Model model, Survey s, HttpServletRequest request) {
		
		System.out.println(s);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		try {
			
		ss.insertSurvey3(s);
			
			return "redirect:index.jsp";
			
		}catch(Exception e){
			
			model.addAttribute("msg","등록실패");
			
			return "common/errorPage";
			
		}		
		
	}
	
	
	//설문조사 update
		@RequestMapping(value="update.su")
		public String updateSurvey(Model model, Survey s, HttpServletRequest request) {
			
			System.out.println(s);
			
			String root = request.getSession().getServletContext().getRealPath("resources");
			
			int result = ss.updateSurvey(s);
			
			if(result > 0) {
				
				return "redirect:index.jsp";
				
			}else {
				
				model.addAttribute("msg","등록실패");
				
				return "common/errorPage";
			}		 
			
		}
	
	
	

}//class
