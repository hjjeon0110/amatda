package com.kh.amd.survey.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.service.SurveyService;
import com.kh.amd.survey.model.vo.Survey;

@SessionAttributes("loginUser")
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
		
		
		String mno = request.getParameter("mNo");
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		//System.out.println("survey" + s); 
		
		
		int result = ss.insertSurvey1(s, mno);
		
		  if(result > 0) {
		  
		  return "survey/survey2";
		  
		  }else {
		  
		  model.addAttribute("msg","등록실패");
		 
			return "common/errorPage";
			
		}
	}
		
		
	//두번째 설문조사 insert
	@RequestMapping(value="insert2.su")
	public String insertSurvey2(Model model, Survey s, HttpServletRequest request) {
		
		System.out.println(s);
		
		String mno = request.getParameter("mNo");
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		int result = ss.insertSurvey2(s, mno);
		
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
		
		String mno = request.getParameter("mNo");
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		int result = ss.insertSurvey3(s, mno);
		
		if(result > 0) {
			
			return "redirect:index.jsp";
			
		}else {
			
			model.addAttribute("msg","등록실패");
			return "common/errorPage";
			
		}			
		
	} 
	
	
	//설문조사 update
		@RequestMapping(value="update.su")
		public String updateSurvey(Model model, Survey s, HttpServletRequest request) {
			
			System.out.println(s);
			
			String mno = request.getParameter("mNo");
			
			String root = request.getSession().getServletContext().getRealPath("resources");
			
			int result = ss.updateSurvey(s, mno);
			
			if(result > 0) {
				
				return "redirect:index.jsp";
				
			}else {
				
				model.addAttribute("msg","등록실패");
				
				return "common/errorPage";
			}		 
			
		}
		
		//설문조사 조회
		@RequestMapping("list.su")
		public String surveyList(Model model, Member m) {
			
			int mno = m.getMno();
			List<Survey> surveyList = ss.surveyList(mno);
			
			System.out.println("surveyList : " + surveyList);
			
			model.addAttribute("list", surveyList);
			
			return "survey/surveyList";
		}
		
	
	
	

}//class
