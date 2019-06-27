package com.kh.amd.diary.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.amd.diary.model.vo.Diary;
import com.kh.amd.survey.model.vo.Survey;

@Controller
public class DiaryController {
	
	@RequestMapping("selectDiaryDetail.di")
	public String selectDiaryDetail() {
		
		return "diary/selectDiaryDetail";
		
	}
	
	//다이어리 show
		@RequestMapping("show.di")
		public String showDiary() {
			
			return "diary/showDiary";
			
		}
	
	//다이어리 insert
	@RequestMapping(value="insert.di")
	public String insertDiary(Model model, Diary d, HttpServletRequest request){
		
		   
		
		
		return "redirect:index.jsp";
	}
		
		
		
		
		
	/*
	 * public String insertSurvey1(Model model, Survey s, HttpServletRequest
	 * request) {
	 * 
	 * System.out.println(s);
	 * 
	 * 
	 * String mno = request.getParameter("mNo");
	 * 
	 * String root =
	 * request.getSession().getServletContext().getRealPath("resources");
	 * 
	 * //System.out.println("survey" + s);
	 * 
	 * 
	 * int result = ss.insertSurvey1(s, mno);
	 * 
	 * if(result > 0) {
	 * 
	 * return "survey/survey2";
	 * 
	 * }else {
	 * 
	 * model.addAttribute("msg","등록실패");
	 * 
	 * return "common/errorPage";
	 * 
	 * } }
	 */
	
	@RequestMapping("selectDiary.di")
	public String selectDiary() {
		
		return "diary/selectDiary";
		
	}
	
	@RequestMapping("updateDiary.di")
	public String updateDiary() {
		
		return "diary/updateDiary";
		
	}
	
	@RequestMapping("deleteDiary.di")
	public String deleteDiary() {
		
		return "diary/deleteDiary";
		
	}

}
