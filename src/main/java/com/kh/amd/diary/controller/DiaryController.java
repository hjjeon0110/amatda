package com.kh.amd.diary.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DiaryController {
	
	@RequestMapping("diaryDetail.di")
	public String showDiaryDetail() {
		
		return "diary/diaryDetail";
		
	}
	
	@RequestMapping("diaryDetail2.di")
	public String showDiaryDetail2() {
		
		return "diary/diaryDetail2";
		
	}

}
