package com.kh.amd.user.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.common.CommonUtils;
import com.kh.amd.common.Pagination;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.service.MemberService;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;
import com.kh.amd.trainer.model.vo.Payment;
import com.kh.amd.trainer.model.vo.Profile;
import com.kh.amd.user.model.service.UserService;

@SessionAttributes("loginUser")
@Controller
public class UserController {
	
	@Autowired
	private UserService us;
	
	
	@Autowired
	private MemberService ms;
	
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
	
	
	// 마이트레이너 등록 취소 (전효정)
	@RequestMapping("deleteMyTrainer.us")
	public String deleteMyTrainer(Model model, HttpServletRequest request) {
		
		String uno = request.getParameter("mno");
		String tno = request.getParameter("tno");
		
		// 11. 마이트레이너 delete (전효정)
		us.deleteMyTrainer(uno, tno);
		
		String mno = request.getParameter("mno");
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
	
	// 마이페이지_내글관리 페이지 이동 & qna리스트 select (우리나)
	@RequestMapping("showMyPageMyWriting.us")
	public String showMyPageMyWritingPageView(Model model,String mno,String currentPage) {
		System.out.println("mno넘어오니?" + mno);
		int mno2 = Integer.parseInt(mno);
		
	//페이징 시작
		int currentPageI = 1;
				
		if(currentPage != null) {
			currentPageI = Integer.parseInt(currentPage);
		}
		//목록을 조회해서 해당 리스트가 리스트가 얼마인지 확인 
		int listCount = us.getQnaListCount(mno2);
				
		System.out.println("리뷰 게시물 갯수 조회: " + listCount);
				
		PageInfo pi = Pagination.getPageInfo(currentPageI, listCount);

		System.out.println("pi: " + pi);
		
		List<Board> selectMyQnaList = us.selectMyQnaList(mno2,pi);
		System.out.println("db에서 가져온 List: " + selectMyQnaList);
		
		model.addAttribute("qnaList", selectMyQnaList);
		model.addAttribute("pi", pi);
		
		return "user/2_5_myPage_myWriting";
	}
	
	
	
	//마이페이지 _qna리스트에서 detail select (우리나)
		@RequestMapping("gotoMyQnaDetailForm.us")
		public String gotoMyQnaDetailForm(String bno,Model model) {
			System.out.println("bno: " + bno);
			
			int bno2 = Integer.parseInt(bno);
			
			Board myQnaDetail = us.selectMyQnaDetail(bno2);
			
			System.out.println("db다녀온 qna 디테일: " + myQnaDetail);
			
			
			
			Reply re = us.selectQnaReply(bno2);
			System.out.println("db다녀온 댓글: " + re);
			
			model.addAttribute("myQnaDetail",myQnaDetail);
			model.addAttribute("re",re);
			
			return "user/2_6_myQnaDetail";
		}
	
	
	//마이페이지 -Review리스트 페이지로 이동 (우리나)
	@RequestMapping("gotoMyReviewList.us")
	public String gotoMyReviewList(String mno,Model model) {
		System.out.println("mno다: " + mno);
		
		int mno2 = Integer.parseInt(mno);
		List<Board> reviewList = us.selectMyBoardList(mno2);
		
		System.out.println("db다녀온 리뷰리스트: " + reviewList);
		model.addAttribute("reviewList", reviewList);
		
		return "user/2_7_myPage_myReviewList";
	}
		
	
	
	//마이페이지 - Review리스트에서 상세리스트로 이동 (우리나)
	@RequestMapping("gotoMyReviewDetail.us")
	public String gotoMyReviewDetail(String bno,Model model) {
		System.out.println("detail review bno: " + bno);
		
		 int bno2 = Integer.parseInt(bno);
		 Board b=us.selectOneReview(bno2);
		 System.out.println("b: " + b);
		 
		 
		 if(b!=null) {
			 model.addAttribute("b",b);
			 Attachment a= us.selectOneAttachment(bno2);
			 System.out.println("a: " + a);
			 model.addAttribute("a",a);
		 }
		
		return "user/2_8_myPage_selectMyDetailReview";
	}
	
	
	//마이페이지 - 리뷰 수정하기 폼으로 이동 (우리나)
	@RequestMapping("updateMyReview.us")
	public String updateMyReview(String bno,Model model) {
		
		System.out.println("update bno: " + bno);
		
		int bno2 = Integer.parseInt(bno);
		
		Board b=us.selectOneReview(bno2);
		 System.out.println("update b: " + b);
		 
		 
		 if(b!=null) {
			 model.addAttribute("b",b);
			 Attachment a= us.selectOneAttachment(bno2);
			 System.out.println("update a: " + a);
			 model.addAttribute("a",a);
		 }
		
		return  "user/2_9_myPage_updateReview";
	}
	
	//마이페이지 - 리뷰 수정하기  (우리나)
	@RequestMapping("updateReview.us")
	public String updateReview(HttpServletRequest request,String bContent, String bTitle,String bno,String mno,@RequestParam(name="modifypicture", required=false) MultipartFile modifypicture) {
		System.out.println("update기능 bTitle: " + bTitle);
		System.out.println("update기능 bContent: " + bContent);
		System.out.println("update기능 bno: " + bno);
		System.out.println("update기능 mno: " + mno);
		
		
		
		int bno2 = Integer.parseInt(bno);
		Board b = new Board();
		b.setbContent(bContent);
		b.setbTitle(bTitle);
		b.setbNo(bno2);
		
		int result = us.updateMyReview(b);
		System.out.println("리뷰 글 result: " + result);
		
		if(result>0) {
			
			Attachment a = new Attachment();
			
			String root = request.getSession().getServletContext().getRealPath("resources");
			String filePath = root + "\\uploadFiles";		
			String originalFilename = modifypicture.getOriginalFilename();
			String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
			String changeName = CommonUtils.getRandomString();
			try {
				modifypicture.transferTo(new File(filePath + "\\" + changeName + ext));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			a.setModiName(changeName);
			a.setBno(bno2);
			a.setFilePath(filePath);
			a.setExtension(ext);
			a.setOriName(modifypicture.getOriginalFilename());
			
			System.out.println("db가기전 작성한 a: " + a);
			
			int result2 = us.updateMyReviewAttachment(a);
			
			if(result2>0) {
				System.out.println("리뷰사진 업데이트 성공");
			}else {
				System.out.println("리뷰사진 업데이트 실패");
			}
		}
		
		return "redirect:gotoMyReviewDetail.us?bno="+bno;
	}
	
	
	
	@RequestMapping("deleteMyReview.us")
	public String deleteMyReview(String bno,String mno) {
		
		int bno2 = Integer.parseInt(bno);
		
		int result = us.deleteMyReview(bno2);
		System.out.println("삭제 result: " + result);
		
		return "redirect:gotoMyReviewList.us?mno=" + mno;
	}
	
	// 매칭 프로세스 페이지 이동 (전효정)
	@RequestMapping("goMatchingProcess.us")
	public String goMatchingProcess(Model model, HttpServletRequest request) {
		
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
				
		// 12. 매칭 시작 트레이너 조회 (전효정)
		Member matchingTrainer = us.selectOneMatchingTrainer(tno);
		model.addAttribute("matchingTrainer", matchingTrainer);
		
		// 13. 다이어트 정보 보내기 - 회원 설문조사 selectOne (전효정)
				Survey survey = us.selectOneSurvey(mno);
				model.addAttribute("survey", survey);
				
		return "user/3_1_matchingProcessPage";
		
	}
	
	
	// 회원 설문조사 selectOne (전효정)
	@RequestMapping("selectOneSurvey.us")
	public void selectOneSurvey(String mno, Model model) {
		
		// 13. 다이어트 정보 보내기 - 회원 설문조사 selectOne (전효정)
		Survey survey = us.selectOneSurvey(mno);
		model.addAttribute("survey", survey);
		
		System.out.println("survey : " + survey);
	}
	
	
	
	
	
	
	
	
	// 마이페이지_개인정보관리 페이지 이동 (우리나)
	@RequestMapping("showMyPagePrivacy.us")
	public String showMyPagePrivacyPageView(String mno,Model model) {
		
		int mno2 = Integer.parseInt(mno);
		
		
		
		Attachment at = ms.selectMyImg(mno2);
		
		
		System.out.println("at: " + at);
		model.addAttribute("at",at);
	
		
		return "user/2_1_myPage_privacy";
	}
	
}
