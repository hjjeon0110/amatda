package com.kh.amd.diary.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DiaryController {
	
	@RequestMapping("selectDiaryDetail.di")
	public String selectDiaryDetail() {
		
		return "diary/selectDiaryDetail";
		
	}
	
	@RequestMapping("insertDiary.di")
	public String insertDiary() {
		
		return "diary/insertDiary";
		
	}
	
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
