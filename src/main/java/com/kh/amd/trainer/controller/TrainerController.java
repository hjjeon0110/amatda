package com.kh.amd.trainer.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.service.TrainerService;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Profile;
import com.kh.tsp.common.CommonUtils;

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
		Profile profile;
		
		profile = ts.checkProfile(mno);
				
		model.addAttribute("profile", profile);
		
		return "trainer/2_1_myPage_profile";
		
	}
	
	// 트레이너 마이페이지_프로필관리 이동 (전효정)
	@RequestMapping("showMyPageProfile2.tr")
	public String showTrainerMyPageProfileView2(Model model, int mno) {
		
		Profile profile;
		
		profile = ts.checkProfile(mno);
				
		model.addAttribute("profile", profile);
		
		return "trainer/2_1_myPage_profile";
		
	}
	
	// 프로필 사진 변경 (전효정)
	@RequestMapping("modifyProfileImg.tr")
	public void modifyProfileImg(Model model, Member m, HttpServletRequest request, @RequestParam(name="profileImgFile", required=false) MultipartFile profileImgFile) {
		
		System.out.println("profileImgFile : " + profileImgFile);
		System.out.println("Member : " + m);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\uploadFiles";
		
		System.out.println("filePath : " + filePath);
		
		// 파일 이름 변경
		String originalFilename = profileImgFile.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); // 확장자명 따로 저장
		//String changeName = CommonUtils.getRandomString();
		
		try {
			profileImgFile.transferTo(new File(filePath + "\\" + changeName + ext));

			
			ms.insertMember(m);
				
			return "redirect:index.jsp";
			
		} catch (Exception e) {
			
			// 실패 시 파일 삭제 처리
			new File(filePath + "\\" + changeName + ext).delete();
			
			model.addAttribute("msg", "회원가입 실패!");
			
			return "common/errorPage";
			
		} 
		
		
		
		
		
	}
	
	
	// 트레이너 마이페이지_견적서관리 이동 (전효정)
	@RequestMapping("showMyPageEstimate.tr")
	public String showTrainerMyPageEstimateView(Model model, int mno, String estType) {
		
		int iestType = Integer.parseInt(estType);
		
		Estimate estimate = ts.selectEstimate(mno, iestType);
		
		
		System.out.println("받아온 iestType의 값? " + iestType);
		System.out.println("받아온 estimate객체 : " + estimate);
	
		model.addAttribute("estimate", estimate);
			
		return "trainer/2_2_myPage_estimate";
		
	}
	@RequestMapping("insertEstimate.tr")
	public String insertEstimate(Model model, Estimate tEst) {
		
		
		int result = ts.insertEstimate(tEst);
		
		
		
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
