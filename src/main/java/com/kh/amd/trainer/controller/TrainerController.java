package com.kh.amd.trainer.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.common.CommonUtils;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.service.TrainerService;
import com.kh.amd.trainer.model.vo.Estimate;
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
		model.addAttribute("profile", profile);
		
		// 프로필 사진 존재 여부 확인 (전효정)
		Attachment attachment = ts.checkProfileImg(mno);
		model.addAttribute("attachment", attachment);
		String pic = attachment.getModiName() + ".jpg";
		model.addAttribute("pic", pic);		
		
		return "trainer/2_1_myPage_profile";
		
	}
	
	// 트레이너 마이페이지_프로필관리 이동 (전효정)
	@RequestMapping("showMyPageProfile2.tr")
	public String showTrainerMyPageProfileView2(Model model, int mno) {
		
		// 프로필 작성 여부 확인 메소드 (전효정)
				Profile profile = ts.checkProfile(mno);
				model.addAttribute("profile", profile);
				
				// 프로필 사진 존재 여부 확인 (전효정)
				Attachment attachment = ts.checkProfileImg(mno);
				model.addAttribute("attachment", attachment);
				String pic = attachment.getModiName() + ".jpg";
				model.addAttribute("pic", pic);		
		
		return "trainer/2_1_myPage_profile";
		
	}
	
	// 프로필 사진 존재 여부 확인 (전효정)
	/*
	 * @RequestMapping("modifyProfileImg.tr") public String checkProfileImg(Model
	 * model, Member m, HttpServletRequest
	 * request, @RequestParam(name="profileImgFile", required=false) MultipartFile
	 * profileImgFile) {
	 * 
	 * String mno = request.getParameter("mno");
	 * 
	 * Attachment attachment = ts.checkProfileImg(mno);
	 * model.addAttribute("attachment", attachment); String pic =
	 * attachment.getFilePath() + attachment.getModiName() + "jpg";
	 * model.addAttribute("pic", pic); System.out.println("pic : " + pic);
	 * 
	 * return "trainer/2_1_myPage_profile";
	 * 
	 * }
	 */
	
	// 프로필 사진 변경 (전효정)
	@RequestMapping("modifyProfileImg1.tr")
	public void modifyProfileImg1(Model model, Member m, HttpServletRequest request, @RequestParam(name="profileImgFile", required=false) MultipartFile profileImgFile) {
		System.out.println("인서트 = 버튼 실행");

		String mno = request.getParameter("mno");
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\uploadFiles";
				
		// 파일 이름 변경
		String originalFilename = profileImgFile.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); // 확장자명 따로 저장
		String changeName = CommonUtils.getRandomString();
		
		try {
			
			profileImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
			
			ts.insertProfileImg(mno, filePath, originalFilename, changeName);

			
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			System.out.println("에러발생");
		}
		
		
	}
	
	
	// 프로필 사진 변경 (전효정)
	
	/*
	 * @RequestMapping("modifyProfileImg2.tr") public void modifyProfileImg2(Model
	 * model, Member m, HttpServletRequest
	 * request, @RequestParam(name="profileImgFile", required=false) MultipartFile
	 * profileImgFile) { System.out.println("업데이트 폼 실행");
	 * 
	 * String mno = request.getParameter("mno");
	 * 
	 * String root =
	 * request.getSession().getServletContext().getRealPath("resources");
	 * 
	 * String filePath = root + "\\uploadFiles";
	 * 
	 * // 파일 이름 변경 String originalFilename = profileImgFile.getOriginalFilename();
	 * String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
	 * // 확장자명 따로 저장 String changeName = CommonUtils.getRandomString();
	 * 
	 * try {
	 * 
	 * profileImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
	 * 
	 * 
	 * ts.modifyProfileImg(mno, filePath, originalFilename, changeName);
	 * 
	 * 
	 * } catch (IllegalStateException | IOException e) { e.printStackTrace();
	 * System.out.println("에러발생"); }
	 * 
	 * String path = "trainer/2_1_myPage_profile" + "?mno=" + mno;
	 * 
	 * System.out.println("보내줄 경로 : " + path);
	 * 
	 * //return "trainer/2_1_myPage_profile";
	 * 
	 * }
	 */
	 
	
	@RequestMapping("modifyProfileImg2.tr")
	public String modifyProfileImg2(Model model, Member m, HttpServletRequest request, @RequestParam(name="profileImgFile", required=false) MultipartFile profileImgFile) {
		System.out.println("업데이트 폼 실행");
		
		String mno = request.getParameter("mno");
		
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\uploadFiles";
				
		// 파일 이름 변경
		String originalFilename = profileImgFile.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); // 확장자명 따로 저장
		String changeName = CommonUtils.getRandomString();
		
		try {
			
			profileImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
			

			ts.modifyProfileImg(mno, filePath, originalFilename, changeName);
			
			int mno2 = Integer.parseInt(mno);
			
			// 프로필 작성 여부 확인 메소드 (전효정)
			Profile profile = ts.checkProfile(mno2);
			model.addAttribute("profile", profile);
			
			// 프로필 사진 존재 여부 확인 (전효정)
			Attachment attachment = ts.checkProfileImg(mno2);
			model.addAttribute("attachment", attachment);
			String pic = attachment.getModiName() + ".jpg";
			model.addAttribute("pic", pic);	
							
			
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			System.out.println("에러발생");
		}
		
		return "trainer/2_1_myPage_profile";
	}
	
	
	// 트레이너 마이페이지_견적서관리 이동 (전효정)
	@RequestMapping("showMyPageEstimate.tr")
	public String showTrainerMyPageEstimateView(Model model, int mno, int estType) {
		
		
		Estimate estimate = ts.selectEstimate(mno);
		
		System.out.println("받아온 estimate객체 : " + estimate);
	
		model.addAttribute("estimate", estimate);
			
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
