package com.kh.amd.diary.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.amd.diary.model.service.DiaryService;
import com.kh.amd.diary.model.vo.Diary;
import com.kh.amd.survey.model.vo.Survey;

@SessionAttributes("loginUser")
@Controller
public class DiaryController {
	
	@Autowired
	private DiaryService ds;
	
	//다이어리 show
	@RequestMapping("show.di")
	public String showDiary() {
		
		return "diary/showDiary";
		
	}
	
	//다이어리 insert
	@RequestMapping(value="insert.di")
	public String insertDiary(Model model, Diary d, HttpServletRequest request){
		
		System.out.println(d);
		
		String mno = request.getParameter("mNo");
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		int result = ds.insertDiary(d, mno);
		
			if(result > 0) {
				
				return "diary/diaryList";
				
			}else {
				
				model.addAttribute("msg","등록실패");
				
				return "common/errorPage";
			}
		
		
		//return "redirect:index.jsp";
	}
	
	//다이어리 상세
	@RequestMapping("selectDiaryDetail.di")
	public String selectDiaryDetail() {
		
		return "diary/selectDiaryDetail";
		
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
