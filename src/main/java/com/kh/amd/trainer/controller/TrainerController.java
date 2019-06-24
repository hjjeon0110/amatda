package com.kh.amd.trainer.controller;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.service.TrainerService;
import com.kh.amd.trainer.model.vo.Profile;

@SessionAttributes("loginUser")
@Controller
public class TrainerController {
	
	@Autowired
	private TrainerService ts;
	
	// 회원 찾기 페이지 이동 (전효정)
	@RequestMapping("showUserFindPageView.tr")
	public String showUserFindPageView() {
		return "trainer/1_userFindPage";
	}
	
	// 트레이너 마이페이지_프로필관리 이동 (전효정)
	@RequestMapping("showMyPageProfile.tr")
	public String showTrainerMyPageProfileView(Model model, int mno) {
		
		// 프로필 작성 여부 확인 메소드 (전효정)
		Profile profile = ts.checkProfile(mno);
		
		System.out.println("컨트롤러 profile : " + profile);
		
		return "trainer/2_1_myPage_profile";
		

		
			
		
	}
	
	// 트레이너 마이페이지_견적서관리 이동 (전효정)
	@RequestMapping("showMyPageEstimate.tr")
	public String showTrainerMyPageEstimateView() {
		return "trainer/2_2_myPage_estimate";
	}
	
	// 트레이너 마이페이지_매칭관리 이동 (전효정)
	@RequestMapping("showMyPageMatching.tr")
	public String showTrainerMyPageMatchingView() {
		return "trainer/2_3_myPage_matching";
	}
	
	// 트레이너 마이페이지_멤버십관리 이동 (전효정)
	@RequestMapping("showMyPageMembership.tr")
	public String showTrainerMyPageMembershipView() {
		return "trainer/2_4_myPage_membership";
	}
	
	// 트레이너 마이페이지_내글관리 이동 (전효정)
	@RequestMapping("showMyPageMyWriting.tr")
	public String showTrainerMyPageMyWritingView() {
		return "trainer/2_5_myPage_myWriting";
	}
	
	// 트레이너 PT관리페이지_매칭진행회원 이동 (전효정)
	@RequestMapping("showMatchingInProgressPage.tr")
	public String showMatchingInProgressView() {
		return "trainer/3_1_matchingInProgressPage";
	}
	
	// 트레이너 PT관리페이지_매칭완료회원 이동 (전효정)
	@RequestMapping("showMatchingCompletePage.tr")
	public String showMatchingCompleteView() {
		return "trainer/3_2_matchingCompletePage";
	}
	
	// 트레이너 매칭진행회원_매칭프로세스페이지 이동 (전효정)
	@RequestMapping("showMatchingProcessPage.tr")
	public String showMatchingProcessView() {
		return "trainer/3_1_1_matchingProcessPage";
	}

}
