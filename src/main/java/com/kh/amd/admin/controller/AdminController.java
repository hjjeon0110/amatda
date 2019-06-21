package com.kh.amd.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	//관리자 페이지 메인
	@RequestMapping("main.ad")
	public String adminMain() {
		
		return "admin/mainForm";
	}
	
	//트레이너 조회
	@RequestMapping("trainer.ad")
	public String trainerForm() {
		
		return "admin/trainer";
	}
	
	//매칭 조회
	@RequestMapping("matching.ad")
	public String matchingForm() {
		
		return "admin/matching";
	}
	
	//통계관리 페이지
	@RequestMapping("statistics.ad")
	public String statistics(){
		
		return "admin/statistics";
		
	}

}
