package com.kh.amd.trainer.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
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

	
	// 회원 찾기 페이지 이동 (전효정) ---------------------------------------------------------------------------------------------------------------------------------------------

	@RequestMapping("showUserFindPageView.tr")
	public String showUserFindPageView() {
		return "trainer/1_userFindPage";
	}

	
	// 트레이너 마이페이지_프로필관리 이동 (전효정) ------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("showMyPageProfile.tr")
	public String showTrainerMyPageProfileView(Model model, int mno) {

		// 프로필 작성 여부 확인 메소드 (전효정)
		Profile profile = ts.checkProfile(mno);
		model.addAttribute("profile", profile);

		// 프로필 사진 존재 여부 확인 (전효정)
		Attachment attachment = ts.checkProfileImg(mno);
		System.out.println(attachment);
		
		if(attachment != null) {
			model.addAttribute("attachment", attachment);
			String pic = attachment.getModiName() + attachment.getExtension();
			model.addAttribute("pic", pic);		
		}else {
			model.addAttribute("attachment", attachment);
		}

		return "trainer/2_1_myPage_profile";

	}

	
	// 트레이너 마이페이지_프로필관리 이동 (전효정) ------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("showMyPageProfile2.tr")
	public String showTrainerMyPageProfileView2(Model model, int mno) {

		// 프로필 작성 여부 확인 메소드 (전효정)
		Profile profile = ts.checkProfile(mno);
		model.addAttribute("profile", profile);
		
		// 프로필 사진 존재 여부 확인 (전효정)
		Attachment attachment = ts.checkProfileImg(mno);
		if(attachment != null) {
			model.addAttribute("attachment", attachment);
			String pic = attachment.getModiName() + attachment.getExtension();
			model.addAttribute("pic", pic);		
		}else {
			model.addAttribute("attachment", attachment);
		}

		return "trainer/2_1_myPage_profile";



	}

	
	// 프로필 사진 추가 (전효정) ------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("insertProfileImg.tr")
	public String insertProfileImg(Model model, Member m, HttpServletRequest request, @RequestParam(name="profileImgFile", required=false) MultipartFile profileImgFile) {

		String mno = request.getParameter("mno");
		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root + "\\uploadFiles";

		// 파일 이름 변경
		String originalFilename = profileImgFile.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
		String changeName = CommonUtils.getRandomString();

		try {

			profileImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
			
			ts.insertProfileImg(mno, filePath, originalFilename, changeName, ext);
			
			int mno2 = Integer.parseInt(mno);
						
			// 프로필 작성 여부 확인 메소드 (전효정)
			Profile profile = ts.checkProfile(mno2);
			model.addAttribute("profile", profile);
			
			// 프로필 사진 존재 여부 확인 (전효정)
			Attachment attachment = ts.checkProfileImg(mno2);
			model.addAttribute("attachment", attachment);
			String pic = attachment.getModiName() + attachment.getExtension();
			model.addAttribute("pic", pic);		

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			System.out.println("에러발생");
		}

		return "trainer/2_1_myPage_profile";
		
	}
	
	
	// 프로필 사진 수정 (전효정) ------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("modifyProfileImg.tr")
	public String modifyProfileImg(Model model, Member m, HttpServletRequest request, @RequestParam(name="profileImgFile", required=false) MultipartFile profileImgFile) {
		
		String mno = request.getParameter("mno");
		String root = request.getSession().getServletContext().getRealPath("resources");

		String filePath = root + "\\uploadFiles";

		// 파일 이름 변경
		String originalFilename = profileImgFile.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
		String changeName = CommonUtils.getRandomString();

		try {

			profileImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
		
			ts.modifyProfileImg(mno, filePath, originalFilename, changeName, ext);

			int mno2 = Integer.parseInt(mno);

			// 프로필 작성 여부 확인 메소드 (전효정)
			Profile profile = ts.checkProfile(mno2);
			model.addAttribute("profile", profile);

			// 프로필 사진 존재 여부 확인 (전효정)
			Attachment attachment = ts.checkProfileImg(mno2);
			model.addAttribute("attachment", attachment);
			String pic = attachment.getModiName() + attachment.getExtension();
			model.addAttribute("pic", pic);			

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			System.out.println("에러발생");
		}

		return "trainer/2_1_myPage_profile";
	}
	
	
	// 프로필 - 내 정보 수정하기 (전효정) ------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("modifyProfile1.tr")
	public void modifyProfile1(String mno, String proTitle, String lineProfile, HttpServletResponse response) {
		
		System.out.println("내 정보 수정하기 서블릿 실행");
		
		int mno2 = Integer.parseInt(mno);

		// 프로필 작성 여부 확인 메소드 (전효정)
		Profile profile = ts.checkProfile(mno2);
		
		if(profile == null) {
			ts.insertProfile1(mno, proTitle, lineProfile);
			try {
				response.getWriter().print("insert");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			ts.updateProfile1(mno, proTitle, lineProfile);
			try {
				response.getWriter().print("insert");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	
	// 프로필 - 미디어 수정하기 (전효정) ------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("insertMediaImg.tr")
	public String insertMediaImg(Model model, Member m, HttpServletRequest request, @RequestParam(name="insertMediaImg", required=false) MultipartFile insertMediaImg) {
		
		String mno = request.getParameter("mno");
		String root = request.getSession().getServletContext().getRealPath("resources");

		String filePath = root + "\\uploadFiles";

		// 파일 이름 변경
		String originalFilename = insertMediaImg.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
		String changeName = CommonUtils.getRandomString();

		try {

			insertMediaImg.transferTo(new File(filePath + "\\" + changeName + ext));
		
			ts.insertMediaImg(mno, filePath, originalFilename, changeName, ext);

			
			int mno2 = Integer.parseInt(mno);
			  
			/*
			 * // 프로필 작성 여부 확인 메소드 (전효정) Profile profile = ts.checkProfile(mno2);
			 * model.addAttribute("profile", profile);
			 * 
			 * // 프로필 사진 존재 여부 확인 (전효정) Attachment attachment = ts.checkProfileImg(mno2);
			 * 
			 * if(attachment != null) { model.addAttribute("attachment", attachment); String
			 * pic = attachment.getModiName() + attachment.getExtension();
			 * model.addAttribute("pic", pic); }else { model.addAttribute("attachment",
			 * attachment); }
			 */
			 	

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			System.out.println("에러발생");
		}
		
		return "trainer/2_1_myPage_profile";
	}



	/*
	 * @RequestMapping(value = "ajaxshowMyPageEstimate.tr") public void
	 * ajaxshowMyPageEstimate(HttpServletResponse response, int mno, String estType)
	 * { int iestType = Integer.parseInt(estType); Estimate estimate =
	 * ts.selectEstimate(mno, iestType);
	 * 
	 * 
	 * ObjectMapper mapper = new ObjectMapper();
	 * 
	 * try { response.getWriter().print(mapper.writeValueAsString(estimate)); }
	 * catch (JsonGenerationException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } catch (JsonMappingException e) { // TODO
	 * Auto-generated catch block e.printStackTrace(); } catch (IOException e) { //
	 * TODO Auto-generated catch block e.printStackTrace(); }
	 * 
	 * 
	 * System.out.println("받아온 estimate객체 : " + estimate);
	 * 
	 * 
	 * }
	 */
	
	//견적소 select 보기 메소드(김진환)
	@RequestMapping("ajaxshowMyPageEstimate.tr")
	public void ajaxshowMyPageEstimate(HttpServletRequest request, HttpServletResponse response, int mno, String estType) {
		int iestType = Integer.parseInt(estType); 
		Estimate estimate = ts.selectEstimate(mno, iestType);
		System.out.println("estimate값 : " + estimate);
		
		System.out.println("ajax로 보낼 객체 : " + estimate);
		System.out.println("받아온estType : " + estType);
		JSONObject estiMateJson = new JSONObject();
		
		
			if(estimate != null) {

				try {
					String EncodeestContents = URLEncoder.encode(estimate.getEstContents(), "UTF-8");
					String EncodeestContent = EncodeestContents.replaceAll("\\+", "%20");
					String EncodeestName = URLEncoder.encode(estimate.getEstName(), "UTF-8");
					String EncestName = EncodeestName.replaceAll("\\+", "%20");
					estiMateJson.put("estName", EncestName);
					estiMateJson.put("estContents", EncodeestContent);
					estiMateJson.put("estDay", estimate.getEstDay());
					estiMateJson.put("estPrice", estimate.getEstPrice());
					
					response.setContentType("application/json");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
			}else {
				response.setContentType("application/json");
				
			}
				try {
					new Gson().toJson(estiMateJson, response.getWriter());
				} catch (JsonIOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}		
		
	}
	
	

	// 트레이너 견적서 삽입 서블릿(김진환)
	@RequestMapping("insertEstimate.tr")
	public String insertEstimate(Model model, Estimate tEst) {
	
		// 견적서 값을 넘겨서 있으면 update, 없으면 insert를 해줌

		Estimate estimate = ts.selectEstimate(tEst.getTno(), tEst.getEstType());

		System.out.println("insert에서 받아온 estimate의 값 : " + estimate);

		if (estimate != null) {
			int updateResult = ts.updateEstimate(tEst);

		} else {
			int insertResult = ts.insertEstimate(tEst);

		}

		return "trainer/2_2_myPage_estimate";

	}

	// 트레이너 마이페이지_견적서관리 이동 (김진환)
	@RequestMapping("showMyPageEstimate.tr")
	public String showTrainerMyPageEstimateView(Model model, int mno, String estType) {

		int iestType = Integer.parseInt(estType);

		Estimate estimate = ts.selectEstimate(mno, iestType);

		System.out.println("받아온 iestType의 값? " + iestType);
		System.out.println("받아온 estimate객체 : " + estimate);

		model.addAttribute("estimate", estimate);

		return "trainer/2_2_myPage_estimate";

	}
	
	//트레이너 공개설정 메소드(김진환)
	@RequestMapping("tOpenChange.tr")
	public void tOpenChange(String mno, String open) {
		
		ts.updateTopen(mno, open);

		
	}
	
	//트레이너 멤버쉽 결제 메소드(김진환)
	@RequestMapping("memberShipPayment.tr")
	public void memberShipPayment(String tno, String memberShipName) {
		System.out.println("멤버쉽 서블릿 들어옴");
		System.out.println("받아온값  mno : " + tno + "멤버쉽이름 : " + memberShipName);
		
	}
	
	//트레이너 잔여 횟수 리스트(김진환)
	@RequestMapping("checkMembership.tr")
	public void checkMembership(String mno, HttpServletResponse response) {
		String remainNum = ts.checkMemberShip(mno);
		System.out.println("멤버쉽체크 서블릿을 들어옴");
		
		
		try {
			response.getWriter().print(remainNum);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
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

	// 트레이너 마이페이지_내글관리 이동  (전효정)
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
