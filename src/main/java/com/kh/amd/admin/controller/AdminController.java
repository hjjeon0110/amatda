package com.kh.amd.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("main.ad")
	public String adminMain() {
		
		return "admin/mainForm";
	}

}
