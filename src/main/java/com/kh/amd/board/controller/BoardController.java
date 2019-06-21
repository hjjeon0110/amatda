package com.kh.amd.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	//공지사항리스트(sr)
	@RequestMapping("selectNotice.bo")
	public String selectNotice() {
		return "board/selectNotice";
	}
	
	//공지사항 상세페이지(sr)
	@RequestMapping("selectOneNotice.bo")
	public String selectOneNotice() {
		return "board/selectOneNotice";
	}

}
