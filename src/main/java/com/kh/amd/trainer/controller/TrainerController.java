package com.kh.amd.trainer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.amd.trainer.model.service.TrainerService;

@Controller
public class TrainerController {
	
	@Autowired
	private TrainerService ts;
	
	@RequestMapping("goMyPageView.tr")
	public String showTrainerMyPageView() {
		return "trainer/trainerMyPageMain";
	}
	
	@RequestMapping("goMyPageProfile.tr")
	public String showTrainerMyPageProfileView() {
		return "trainer/trainerMyPage_profile";
	}
	
	@RequestMapping("goMyPageEstimate.tr")
	public String showTrainerMyPageEstimateView() {
		return "trainer/trainerMyPage_estimate";
	}
	
	@RequestMapping("goMyPageMatching.tr")
	public String showTrainerMyPageMatchingView() {
		return "trainer/trainerMyPage_matching";
	}
	
	@RequestMapping("goMyPageMembership.tr")
	public String showTrainerMyPageMembershipView() {
		return "trainer/trainerMyPage_membership";
	}
	
	@RequestMapping("goMyPageMyWriting.tr")
	public String showTrainerMyPageMyWritingView() {
		return "trainer/trainerMyPage_myWriting";
	}
	
	

}
