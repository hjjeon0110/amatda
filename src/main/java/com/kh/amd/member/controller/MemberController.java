package com.kh.amd.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("selectJoinType.me")
	public String joinType() {
		return "common/selectJoinType";
	}
	
	@RequestMapping("insertMember.me")
	public String insertMember() {
		return "common/memberJoin";
	}
	
	
	@RequestMapping("loginMember.me")
	public String loginMember() {
		return "common/login";
	}
}
