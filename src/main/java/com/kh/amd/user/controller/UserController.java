package com.kh.amd.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	// 트레이너찾기_맞춤트레이너추천 페이지 이동 (전효정)
	@RequestMapping("showRecommendTrainerPageView.us")
	public String showRecommendTrainerPageView() {
		return "user/1_1_recommendTrainerPage";
	}
	
	// 트레이너찾기_셀프트레이너검색 페이지 이동 (전효정)
	@RequestMapping("showSearchTrainerPageView.us")
	public String showSearchTrainerPageView() {
		return "user/1_2_searchTrainerPage";
	}
	
	// 트레이너찾기_프로필상세보기 페이지 이동 (전효정)
	@RequestMapping("showProfileDetailPageView.us")
	public String showProfileDetailPageView() {
		return "user/1_3_profileDetailPage";
	}
	
	// 마이페이지_개인정보관리 페이지 이동 (전효정)
	@RequestMapping("showMyPagePrivacy.us")
	public String showMyPagePrivacyPageView() {
		return "user/2_1_myPage_privacy";
	}
	
	// 마이페이지_다이어트정보관리 페이지 이동 (전효정)
	@RequestMapping("showMyPageDietSurvey.us")
	public String showMyPageDietSurveyPageView() {
		return "user/2_2_myPage_dietSurvey";
	}
	
	// 트레이너찾기_프로필상세보기 페이지 이동 (전효정)
	@RequestMapping("showMyPageMyTrainer.us")
	public String showMyPageMyTrainerPageView() {
		return "user/2_3_myPage_myTrainer";
	}
	
	// 트레이너찾기_프로필상세보기 페이지 이동 (전효정)
	@RequestMapping("showMyPageRequestsReceived.us")
	public String showMyPageRequestsReceivedPageView() {
		return "user/2_4_myPage_requestsReceived";
	}
	
	// 트레이너찾기_프로필상세보기 페이지 이동 (전효정)
	@RequestMapping("showMyPageMyWriting.us")
	public String showMyPageMyWritingPageView() {
		return "user/2_5_myPage_myWriting";
	}
	
	
}
