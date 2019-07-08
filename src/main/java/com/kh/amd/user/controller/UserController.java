package com.kh.amd.user.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;
import com.kh.amd.trainer.model.service.TrainerService;
import com.kh.amd.user.model.service.UserService;

@SessionAttributes("loginUser")
@Controller
public class UserController {
	
	@Autowired
	private UserService us;
	
	// 트레이너찾기_맞춤트레이너추천 페이지 이동 (전효정)
	@RequestMapping("showRecommendTrainerPageView.us")
	public String showRecommendTrainerPageView(Model model, int mno) {
		
		// 2. 설문조사/키워드 조회 (전효정)
		Survey survey = us.selectSurvey(mno);
		model.addAttribute("survey", survey);
		
		String hopeAge = survey.getHopeAge();
		String hopeGender = survey.getHopeGender();
		String hopePeriod = survey.getHopePeriod();
		String hopeExercise = survey.getHopeExercise();
				
		String[] hopeExerciseArr = hopeExercise.split(",");

		// 1. 맞춤 트레이너 리스트 조회 (전효정)
		List<Member> recommendtrainerList = us.selectRecommendTrainerList(mno, hopeAge, hopeGender, hopePeriod, hopeExercise, hopeExerciseArr);
		model.addAttribute("recommendtrainerList", recommendtrainerList);
		System.out.println(recommendtrainerList);
		
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
	
	
	//(김진환이 조금이라도 들어간 메소드)------------------------------------------------------------------------------------//
	
	// 마이페이지_개인정보관리 페이지 이동 (전효정, 김진환)
		@RequestMapping("showMyPagePrivacy.us")
		public String showMyPagePrivacyPageView() {
			
			
			return "user/2_1_myPage_privacy";
		}
	
	
	
	
	
	
	
	
	
	
}
