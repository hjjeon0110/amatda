package com.kh.amd.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.amd.member.model.service.MemberService;
import com.kh.amd.member.model.vo.Member;

@Controller

public class MemberController {
	
	@Autowired
	private MemberService ms;
	
	@RequestMapping("selectJoinType.me")
	public String joinType() {
		return "common/selectJoinType";
	}
	
	@RequestMapping("memberJoinView.me")
	public String showMemberJoinView() {
		return "common/memberJoin";
	}
	
	@RequestMapping("trainerJoinView.me")
	public String showTrainerJoinView() {
		return "common/trainerJoin";
	}
	
	@RequestMapping("insertMember.me")
	public String insertMember(Model model,Member m) {
		
		System.out.println("일반 회원가입: "+m);
		
		ms.insertMember(m);
		
		
		return "redirect:index.jsp";
	}
	
	@RequestMapping("insertTrainer.me")
	public String insertTrainer(Model model, Member m) {
		
		System.out.println("트레이너 회원가입 : " + m);
		ms.insertTrainer(m);
		
		return "redirect:index.jsp";
	}
	
	@RequestMapping("loginMember.me")
	public String loginMember() {
		return "common/login";
	}
	
	
}
