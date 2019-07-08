package com.kh.amd.user.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;
import com.kh.amd.trainer.model.service.TrainerService;
import com.kh.amd.trainer.model.vo.Profile;
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
		
		return "user/1_1_recommendTrainerPage";
	}
	
	// 트레이너찾기_셀프트레이너검색 페이지 이동 (전효정)
	@RequestMapping("showSearchTrainerPageView.us")
	public String showSearchTrainerPageView() {
		return "user/1_2_searchTrainerPage";
	}
	
	// 트레이너찾기_셀프 트레이너 검색 ajax (전효정)
	@RequestMapping("selectSearchTrainerList.us")
	public void selectSearchTrainerList(HttpServletResponse response, String mno, String searchServiceKeyword, String searchTrainerAge, String searchTrainerGender, String searchTrainerName) {
		
		// 3. 셀프 트레이너 검색 리스트 조회 (전효정)
		List<Member> searchTrainerList = us.selectSearchTrainerList(mno, searchServiceKeyword, searchTrainerAge, searchTrainerGender, searchTrainerName);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
        try {
			new Gson().toJson(searchTrainerList, response.getWriter());
		} catch (JsonIOException | IOException e) {
			e.printStackTrace();
		}
		
	}
	
	// 트레이너찾기_프로필상세보기 페이지 이동 (전효정)
	@RequestMapping("showProfileDetailPageView.us")
	public String showProfileDetailPageView(Model model, HttpServletRequest request) {
		
		String mno = request.getParameter("mno");
		String tno = request.getParameter("tno");
		String tname = request.getParameter("tname");
		model.addAttribute("tno", tno);
		model.addAttribute("tname", tname);
		
		// 4. 프로필 이미지 존재 여부 확인 메소드 (전효정)
		Attachment profileImgAttachment = us.checkProfileImg(tno);
		
		if(profileImgAttachment != null) {
			model.addAttribute("profileImgAttachment", profileImgAttachment);
			String profileImgAttachmentSrc = profileImgAttachment.getModiName() + profileImgAttachment.getExtension();
			model.addAttribute("profileImgAttachmentSrc", profileImgAttachmentSrc);		
		}else {
			model.addAttribute("profileImgAttachment", profileImgAttachment);
		}
		
		// 5. 프로필 작성 여부 확인 (전효정)
		Profile profile = us.checkProfile(tno);
		model.addAttribute("profile", profile);
		
		// 6. 미디어 존재 여부 확인 메소드 (전효정)
		List<Attachment> mediaAttachment = us.checkMediaAttachment(tno);					
		model.addAttribute("mediaAttachment", mediaAttachment);
		
		// 7. 자격증 존재 여부 확인 메소드 (전효정)
		List<Attachment> certificationAttachment = us.checkCertificationAttachment(tno);					
		model.addAttribute("certificationAttachment", certificationAttachment);
		
		// 10. 마이트레이너 존재 여부 확인 메소드 (전효정)
		Mprocess selectOneMyTrainer = us.selectOneMyTrainer(mno, tno);
		model.addAttribute("selectOneMyTrainer", selectOneMyTrainer);

		
		
		return "user/1_3_profileDetailPage";
	}
	
	
	// 마이페이지_다이어트정보관리 페이지 이동 (전효정)
	@RequestMapping("showMyPageDietSurvey.us")
	public String showMyPageDietSurveyPageView() {
		return "user/2_2_myPage_dietSurvey";
	}
	
	// 마이페이지_마이트레이너 페이지 이동1 (전효정)
	@RequestMapping("insertMyTrainer.us")
	public String insertMyTrainer(Model model, HttpServletRequest request) {
		
		String uno = request.getParameter("mno");
		String tno = request.getParameter("tno");
		
		// 8. 마이트레이너 insert (전효정)
		us.insertMyTrainer(uno, tno);
		
		// 9. 마이트레이너 리스트 조회 (전효정)
		List<Member> myTrainerList = us.selectMyTrainerList(uno);
		model.addAttribute("myTrainerList", myTrainerList);
		
		return "user/2_3_myPage_myTrainer";
	}
	
	// 마이페이지_마이트레이너 페이지 이동2 (전효정)
	@RequestMapping("showMyPageMyTrainer.us")
	public String showMyPageMyTrainerPageView(Model model, HttpServletRequest request) {
		
		String mno = request.getParameter("mno");
		
		// 9. 마이트레이너 리스트 조회 (전효정)
		List<Member> myTrainerList = us.selectMyTrainerList(mno);
		model.addAttribute("myTrainerList", myTrainerList);
 		
		return "user/2_3_myPage_myTrainer";
	}
	
	// 마이페이지_받은요청내역 페이지 이동 (전효정)
	@RequestMapping("showMyPageRequestsReceived.us")
	public String showMyPageRequestsReceivedPageView() {
		return "user/2_4_myPage_requestsReceived";
	}
	
	// 마이페이지_내글관리 페이지 이동 (전효정)
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
