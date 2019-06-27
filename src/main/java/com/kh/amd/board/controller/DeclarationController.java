package com.kh.amd.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.amd.board.model.service.DeclarationService;
import com.kh.amd.board.model.vo.Declaration;

@Controller
public class DeclarationController {

	@Autowired
	private DeclarationService ds;
	
	//신고게시판 그냥 단순 페이지 출력(sr)
	@RequestMapping("insertDeclarationFormView.de")
	public String insertDeclarationFormView() {
		System.out.println("나는 단순하게 입력 양식만 호출했어요!");
		
				
		return "board/insertDeclaration";
	}
	
	//신고게시판 입력(sr)
	/*@RequestMapping("insertDeclaration.bo")
	public String insertDeclaration(Model model,Declaration d) {
		System.out.println("신고게시판인 내가 호출됐어요!!!");
		System.out.println(d);
		
		int result = ds.insertDeclaration(d);
		return "board/insertDeclaration";
	}*/
	
	
	//신고게시판 입력(sr)
		@RequestMapping("insertDeclaration.de")
		public String insertDeclaration(Model model,Declaration d) {
			System.out.println("신고게시판인 내가 호출됐어요!!!");
			System.out.println(d);
			
			int result = ds.insertDeclaration(d);
			return "board/insertDeclaration";
		}
}
