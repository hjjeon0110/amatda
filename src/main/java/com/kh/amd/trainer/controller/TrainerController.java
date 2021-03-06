package com.kh.amd.trainer.controller;

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
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.common.CommonUtils;
import com.kh.amd.common.Pagination;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.service.TrainerService;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Payment;
import com.kh.amd.trainer.model.vo.Profile;

@SessionAttributes("loginUser")
@Controller
public class TrainerController {

	@Autowired
	private TrainerService ts;
	
	
	// 진환 메소드 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
	   //견적서 ajax로 select 보기  메소드(김진환)
	   @RequestMapping("ajaxshowMyPageEstimate.tr")
	   public void ajaxshowMyPageEstimate(HttpServletResponse response, int mno, String estType) {
		   System.out.println("받아온 mno : " + mno + "받아온 estType : " + estType);
	      int iestType = Integer.parseInt(estType); 
	      Estimate estimate = ts.selectEstimate(mno, iestType);
	      
          response.setContentType("application/json");
          response.setCharacterEncoding("UTF-8");
          
	      try {
			new Gson().toJson(estimate, response.getWriter());
			} catch (JsonIOException | IOException e) {
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
	   public void memberShipPayment(String tno, String memberShipName, String memberShipUsage, HttpServletResponse rsp) {
	      System.out.println("멤버쉽 서블릿 들어옴");
	      System.out.println("받아온값  mno : " + tno + "멤버쉽이름 : " + memberShipName);
	      int memberShipNo = 0;
	      if(memberShipName.equals("S")) {
	    	  memberShipNo = 1;
	      }else if(memberShipName.equals("A")) {
	    	  memberShipNo = 2;
	      }else {
	    	  memberShipNo = 3;
	      }
	      
	      //멤버쉽 결제 후 인서트 서비스 이동
	      int result = ts.insertmemberShipPayment(tno, memberShipNo, memberShipUsage);
		      
		      try {
				rsp.getWriter().print("성공");
		      } catch (IOException e) {
				try {
					rsp.getWriter().print("실패");
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				e.printStackTrace();
		      }

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
	   //트레이너 결제내역 리스트(김진환) ----------------------------------------------------
	   @RequestMapping("paymentList.tr")
	   public String paymentList(Model model, String tno, String currentPage) {
		   System.out.println("MNO받아왔고, 그값은 : " + tno);
		   
		   int currentPageI = 1;
			
			if(currentPage != null) {
				currentPageI = Integer.parseInt(currentPage);
			}
			//목록을 조회해서 해당 리스트가 리스트가 얼마인지 확인 
			int listCount = ts.getPaymentListCount(tno);
			
			PageInfo pi = Pagination.getPageInfo(currentPageI, listCount);

		   
			List<Payment> payment = ts.paymentList(tno, pi);
		   
			model.addAttribute("payList", payment);
			model.addAttribute("pi", pi);
			
		   
		   
		   return "trainer/2_4_1_myPage_paymentList";
	   }
	   //환불요청 처리 메소드(김진환)
	   @RequestMapping("refundRequest.tr")
	   public void refundRequest(HttpServletResponse response, String refundId, String refundReason, String refundCount, String tno) {
		   
		   int mno = Integer.parseInt(tno);
		   int refundCountI =Integer.parseInt(refundCount);
		   
		   System.out.println("받아온 횟수의 값 : " + refundCountI);
		   System.out.println("mno의값 : " + mno); 
		   
		   
		  int result = ts.refundRequest(refundId, refundReason, mno, refundCountI);
		   
		  if(result > 0) {
			  try {
				response.getWriter().print("success");
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		  }
		   
	   }
	// 회원 찾기 페이지 이동 (전효정, 김진환) --------------------------------------------------------------------------------------------------------
		@RequestMapping("showUserFindPageView.tr")
		public String showUserFindPageView(Model model, String currentPage) {
			 int currentPageI = 1;
			 
			 if(currentPage != null) {
					currentPageI = Integer.parseInt(currentPage);
				}
			//목록을 조회해서 해당 리스트가 몇개인지 확인 
			int listCount = ts.getSearchUserListCount();

			PageInfo pi = Pagination.getPageInfo(currentPageI, listCount);
			
			//리스트 조회
			List<Member> uInfoList = ts.showUserList(pi);
			
			//설문조사 희망운동 , 를 #으로 바꾸기
			for(Member member : uInfoList) {
				String changeExcer = member.getSurvey().getHopeExercise().replaceAll(",", " #");
				member.getSurvey().setHopeExercise(changeExcer);
			}
			
			System.out.println("회원 리스트 ? : " + uInfoList); 
			
			
			model.addAttribute("list", uInfoList);
			model.addAttribute("pi", pi);
			
			return "trainer/1_userFindPage";
		}
		
		//회원찾기 정렬 메소드(김진환)
		@RequestMapping("userListSort.tr")
		public String userListSort(Model model, String sort) {
			int currentPageI = 1;
			//목록을 조회해서 해당 리스트가 몇개인지 확인 
			int listCount = ts.getSearchUserListCount();

			//페이징 처리를 위해 pageinfo객체 초기화
			PageInfo pi = Pagination.getPageInfo(currentPageI, listCount);
			
			
			//정렬 리스트 조회
			List<Member> list = ts.userListSort(sort, pi);
			
			//설문조사 희망운동 , 를 #으로 바꾸기
			for(Member member : list) {
				String changeExcer = member.getSurvey().getHopeExercise().replaceAll(",", " #");
				member.getSurvey().setHopeExercise(changeExcer);
			}
			
			//모델 담아서 보내기
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			
			return "trainer/1_userFindPage";
			
		}
		//견적서 보내기 + 매칭스타트(견적서 있을경우)(김진환)
		@RequestMapping("insertMatchStart.tr")
		public void insertMatchStart(HttpServletResponse response, String uno, String tno, String estNo, 
				String estName, String estContents, String estDay, String estPrice) {
			
			//견적서에 이미 등록된 트레이너 일경우 확인
			int searchResult = ts.checkMprocess(uno, tno);
				System.out.println("검색결과값: " + searchResult);
			
			if(searchResult > 0) {
				try {
					response.getWriter().print(false);
				} catch (IOException e) {
					
					e.printStackTrace();
				}
				
			}else {
			
				int estDayi = Integer.parseInt(estDay);
				int estPricei = Integer.parseInt(estPrice);
				int tnoI = Integer.parseInt(tno);
				
				Estimate estimate = new Estimate();
				estimate.setEstContents(estContents);
				estimate.setEstDay(estDayi);
				estimate.setEstName(estName);
				estimate.setEstPrice(estPricei);
				estimate.setEstType(3);
				estimate.setTno(tnoI);
				
				Estimate existEstimate = ts.selectEstimate(tnoI, 3);
				System.out.println("estimate : " + estimate);
				System.out.println("이미 있는 estimate : " + existEstimate);
				
				int result = 0;
				
				//int result2 = ts.checkMprocess(); 
			
				
				if(existEstimate == null) {
					System.out.println("인서트로 들어옴");
					result = ts.insertEstimate(estimate);
					
				}else {
					System.out.println("업데이트로 들어옴");
					result = ts.updateEstimate(estimate);
				}
				
				//프로세스 객체 생성, 객체에 값을 넣어서 보냄
				int unoI = Integer.parseInt(uno);
				Mprocess mprocess = new Mprocess();
				mprocess.setMatchEstimate(estimate);
				mprocess.setTno(tnoI);
				mprocess.setUno(unoI);
				
				
				
				
				//프로세스에 insert + list를 리턴 받는 메소드
				List<Member> sendEstList = ts.sendEstList(tno, mprocess);
			
				
			}
			
			
		}
		
		//견적서 보내기 + 매칭스타트 메소드(견적서 없을시)(김진환)
		@RequestMapping("insertEstMatchStart.tr")
		public String insertEstMatchStart(Model model, String uno, String tno, String estDay, String estName, String estContents, String estPrice) {
			
			System.out.println(uno + " : " + tno);
			
			int tnoI = Integer.parseInt(tno);
			int unoI = Integer.parseInt(uno);
			int estDayi = Integer.parseInt(estDay);
			int estPricei = Integer.parseInt(estPrice);
			
			Estimate estimate = new Estimate();
			estimate.setEstContents(estContents);
			estimate.setEstDay(estDayi);
			estimate.setEstName(estName);
			estimate.setEstPrice(estPricei);
			estimate.setEstType(3);
			estimate.setTno(tnoI);
			
			Estimate existEstimate = ts.selectEstimate(tnoI, 3);
			System.out.println("estimate : " + estimate);
			System.out.println("이미 있는 estimate : " + existEstimate);
			
			int result = 0;
			
			if(existEstimate == null) {
				System.out.println("인서트로 들어옴");
				result = ts.insertEstimate(estimate);
				
			}else {
				System.out.println("업데이트로 들어옴");
				result = ts.updateEstimate(estimate);
			}
			
			
			Mprocess mprocess = new Mprocess();
			mprocess.setMatchEstimate(estimate);
			mprocess.setTno(tnoI);
			mprocess.setUno(unoI);
			
			//int result = ts.insertEstMatchStart(uno, tno, estDay, estName, estContents, estPrice);
			List<Member> sendEstList = ts.sendEstList(tno, mprocess);
			
			//설문조사 희망운동 , 를 #으로 바꾸기
			for(Member member : sendEstList) {
				String changeExcer = member.getSurvey().getHopeExercise().replaceAll(",", " #");
				member.getSurvey().setHopeExercise(changeExcer);
			}
			
			model.addAttribute("list", sendEstList);
			//멤버객체를 가져와서 보낸요청 리스트로 리턴
			
			return "trainer/2_3_myPage_matching";
		}
		// 트레이너 마이페이지_매칭관리 이동 (김진환)
		@RequestMapping("showMyPageMatching.tr")
		public String showTrainerMyPageMatchingView(Model model, String tno, String currentPage) {
			int currentPageI = 1;
			 
			if(currentPage != null) {
					currentPageI = Integer.parseInt(currentPage);
			}
			//목록을 조회해서 해당 리스트가 몇개인지 확인 
			int listCount = ts.getTrainerMyPageMatchingListCount(tno);

			PageInfo pi = Pagination.getPageInfo(currentPageI, listCount);
			
			List<Member> list = ts.sendEstList(tno, pi);
			
			//설문조사 희망운동 , 를 #으로 바꾸기
			for(Member member : list) {
				String changeExcer = member.getSurvey().getHopeExercise().replaceAll(",", " #");
				member.getSurvey().setHopeExercise(changeExcer);
			}
			
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			
			
			return "trainer/2_3_myPage_matching";
		}
		
		//받은 요청 조회용 메소드(김진환)
		@RequestMapping("showMyPageReceivedMatching.tr")
		public String showMyPageReceivedMatching(Model model, String tno, String currentPage) {
			int currentPageI = 1;
			 
			if(currentPage != null) {
					currentPageI = Integer.parseInt(currentPage);
			}
			//목록을 조회해서 해당 리스트가 몇개인지 확인 
			int listCount = ts.checkMyReceiveListCount(tno);

			PageInfo pi = Pagination.getPageInfo(currentPageI, listCount);
			
			List<Member> list = ts.myReciveList(tno, pi);
			
			//설문조사 희망운동 , 를 #으로 바꾸기
			for(Member member : list) {
				String changeExcer = member.getSurvey().getHopeExercise().replaceAll(",", " #");
				member.getSurvey().setHopeExercise(changeExcer);
			}
			
			
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			
			System.out.println(list);
			
			return "trainer/2_3_1myPage_matching(receive)";
		}
		
		//보낸요청에서 내가 보낸 견적서 조회하기용 메소드(김진환)
		@RequestMapping("matchEstimateOpen.tr")
		public void matchEstimateOpen(HttpServletResponse response, int uno, int tno) {
			
			
			Mprocess mp = ts.matchEstimateOpen(tno, uno);
			
			response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            System.out.println(mp);
            
            try {
				new Gson().toJson(mp, response.getWriter());
			} catch (JsonIOException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
		//보낸견적서 취소(김진환)
		@RequestMapping("matchEstCancel.tr")
		public void matchEstCancel(HttpServletResponse response, int uno, int tno) {
			
			int result = ts.matchEstCancel(tno, uno);
			
			
			if(result > 0) {
				try {
					response.getWriter().print("SUCCESS");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}else {
				try {
					response.getWriter().print("FAIL");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			
		}
		
		//요청한 내역 거절하기 메소드(김진환)
		@RequestMapping("denyRequest.tr")
		public void denyRequest(HttpServletResponse response, int tno, int uno) {
			System.out.println("둘다 받아옴  : " + tno + "uno :" + uno);
			
			int result = ts.denyRequest(tno, uno);
			
			
			
			if(result > 0 ) {
				try {
					response.getWriter().print("SUCCESS");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else {
				try {
					response.getWriter().print("FAIL");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		
		//받은 요청서 수락하기 메소드(김진환)
		@RequestMapping("receivedReqAccept.tr")
		public void receivedReqAccept(HttpServletResponse response, int uno, int tno, int estDay, 
			String estName, String estContents, int estPrice) {
			
			Estimate estimate = new Estimate();
			estimate.setEstContents(estContents);
			estimate.setEstDay(estDay);
			estimate.setEstName(estName);
			estimate.setEstPrice(estPrice);
			estimate.setEstType(3);
			estimate.setTno(tno);
			
			Estimate existEstimate = ts.selectEstimate(tno, 3);
			System.out.println("estimate : " + estimate);
			System.out.println("이미 있는 estimate : " + existEstimate);
			
			int result = 0;
			
			if(existEstimate == null) {
				System.out.println("인서트로 들어옴");
				result = ts.insertEstimate(estimate);
				
			}else {
				System.out.println("업데이트로 들어옴");
				result = ts.updateEstimate(estimate);
			}
			
			
			Mprocess mprocess = new Mprocess();
			mprocess.setMatchEstimate(estimate);
			mprocess.setTno(tno);
			mprocess.setUno(uno);
			
			System.out.println(mprocess);
			
			//update 
			int updateResult = ts.receivedReqAccept(mprocess);
			
			if(updateResult > 0) {
				try {
					response.getWriter().print("SUCCESS");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}else {
				try {
					response.getWriter().print("FAIL");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		

		// 트레이너 PT관리페이지_매칭진행회원 이동 (전효정, 김진환)
		@RequestMapping("showMatchingInProgressPage.tr")
		public String showMatchingInProgressView(Model model, String tno, String currentPage) {
			
			//페이징 처리를 위한 변수 선언, 관리
			int currentPageI = 1;
			 
			if(currentPage != null) {
					currentPageI = Integer.parseInt(currentPage);
			}
			//목록을 조회해서 해당 리스트가 몇개인지 확인 
			int listCount = ts.checkProgressList(tno);
			
			System.out.println("받아온 tno : " + tno);
			
			PageInfo pi = Pagination.getPageInfo(currentPageI, listCount);
			
			List<Member> list = ts.showMatchingProgressList(tno, pi);
			
			//설문조사 희망운동 , 를 #으로 바꾸기
			for(Member member : list) {
				String changeExcer = member.getSurvey().getHopeExercise().replaceAll(",", " #");
				member.getSurvey().setHopeExercise(changeExcer);
			}
			
			
			System.out.println("db에서 조회해온 list : \n" + list);
			
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);

			
			return "trainer/3_1_matchingInProgressPage";
		}

		// 트레이너 PT관리페이지_매칭완료회원 이동 (전효정, 김진환)
		@RequestMapping("showMatchingCompletePage.tr")
		public String showMatchingCompleteView(Model model, String tno, String currentPage) {
			
			//페이징 처리를 위한 변수 선언, 관리
			int currentPageI = 1;
			 
			if(currentPage != null) {
					currentPageI = Integer.parseInt(currentPage);
			}
			//목록을 조회해서 해당 리스트가 몇개인지 확인 
			int listCount = ts.checkCompleteList(tno);

			PageInfo pi = Pagination.getPageInfo(currentPageI, listCount);
			
			System.out.println("받아온 tno : " + tno);
			
			List<Member> list = ts.showMatchingCompleteList(tno, pi);
			
			//설문조사 희망운동 , 를 #으로 바꾸기
			for(Member member : list) {
				String changeExcer = member.getSurvey().getHopeExercise().replaceAll(",", " #");
				member.getSurvey().setHopeExercise(changeExcer);
			}
			
			
			System.out.println("db에서 조회해온 list : \n" + list);
			
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			
			
			
			return "trainer/3_2_matchingCompletePage";
		}
		
		@RequestMapping("firstMembership.tr")
		public void firstMembership (HttpServletResponse response, int mno) {
			
			int checkFirst = ts.checkFirstMembership(mno);
			
			if(checkFirst > 0) {
				int updateCharge = ts.welcomeCharge(mno);
				
				try {
					response.getWriter().print("SUCCESS");
				} catch (IOException e) {
					
					e.printStackTrace();
				}
				
			}else {
				
				try {
					response.getWriter().print("FAIL");
				} catch (IOException e) {
					e.printStackTrace();
				}
				
			}
			
			
		}
		// 트레이너 매칭진행회원_매칭프로세스페이지 이동 (전효정, 김진환)
		@RequestMapping("showMatchingProcessPage.tr")
		public String showMatchingProcessView(String tno, String uno, Model model) {	
			
			Member matchingMember = ts.showMatchingProcessListView(tno, uno);
			
			model.addAttribute("matchingMember", matchingMember);
			System.out.println("출력하는 메소드 : " + matchingMember);
			
			return "trainer/3_1_1_matchingProcessPage";
		}
		
		
		
	   
	
	
	
	
	
	// 효정 메소드 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
	

	
	// 트레이너 마이페이지_프로필관리 이동 (전효정) --------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("showMyPageProfile.tr")
	public String showTrainerMyPageProfileView(Model model, int mno) {

		// 1. 프로필 작성 여부 확인 (전효정)
		Profile profile = ts.checkProfile(mno);
		model.addAttribute("profile", profile);

		// 2. 프로필 이미지 존재 여부 확인 메소드 (전효정)
		Attachment profileImgAttachment = ts.checkProfileImg(mno);
		
		if(profileImgAttachment != null) {
			model.addAttribute("profileImgAttachment", profileImgAttachment);
			String profileImgAttachmentSrc = profileImgAttachment.getModiName() + profileImgAttachment.getExtension();
			model.addAttribute("profileImgAttachmentSrc", profileImgAttachmentSrc);		
		}else {
			model.addAttribute("profileImgAttachment", profileImgAttachment);
		}
		
		// 8. 미디어 존재 여부 확인 메소드 (전효정)
		List<Attachment> mediaAttachment = ts.checkMediaAttachment(mno);					
		model.addAttribute("mediaAttachment", mediaAttachment);
		
		// 14. 자격증 존재 여부 확인 메소드 (전효정)
		List<Attachment> certificationAttachment = ts.checkCertificationAttachment(mno);					
		model.addAttribute("certificationAttachment", certificationAttachment);

		return "trainer/2_1_myPage_profile";

	}
	
	
	// 트레이너 마이페이지_프로필관리 이동 (전효정) ---------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("showMyPageProfile2.tr")
	public String showTrainerMyPageProfileView2(Model model, int mno) {

		// 1. 프로필 작성 여부 확인  (전효정)
		Profile profile = ts.checkProfile(mno);
		model.addAttribute("profile", profile);
		
		// 2. 프로필 이미지 존재 여부 확인 메소드 (전효정)
		Attachment profileImgAttachment = ts.checkProfileImg(mno);
		
		if(profileImgAttachment != null) {
			model.addAttribute("profileImgAttachment", profileImgAttachment);
			String profileImgAttachmentSrc = profileImgAttachment.getModiName() + profileImgAttachment.getExtension();
			model.addAttribute("profileImgAttachmentSrc", profileImgAttachmentSrc);		
		}else {
			model.addAttribute("profileImgAttachment", profileImgAttachment);
		}
		
		// 8. 미디어 존재 여부 확인 메소드 (전효정)
		List<Attachment> mediaAttachment = ts.checkMediaAttachment(mno);					
		model.addAttribute("mediaAttachment", mediaAttachment);
		
		// 14. 자격증 존재 여부 확인 메소드 (전효정)
		List<Attachment> certificationAttachment = ts.checkCertificationAttachment(mno);					
		model.addAttribute("certificationAttachment", certificationAttachment);

		return "trainer/2_1_myPage_profile";

	}

	
	// 프로필 사진 추가 (전효정) ---------------------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("insertProfileImg.tr")
	public String insertProfileImg(Model model, Member m, HttpServletRequest request, @RequestParam(name="profileImgFile", required=false) MultipartFile profileImgFile) {

		String mno = request.getParameter("mno");
		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root + "\\uploadFiles";

		String originalFilename = profileImgFile.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
		String changeName = CommonUtils.getRandomString();

		try {
			
			profileImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
			
			// 3. 프로필 이미지 insert 메소드 (전효정)
			ts.insertProfileImg(mno, filePath, originalFilename, changeName, ext);
			
			int mno2 = Integer.parseInt(mno);
						
			// 1. 프로필 작성 여부 확인(전효정)
			Profile profile = ts.checkProfile(mno2);
			model.addAttribute("profile", profile);

			// 2. 프로필 이미지 존재 여부 확인 메소드 (전효정)
			Attachment profileImgAttachment = ts.checkProfileImg(mno2);
			
			if(profileImgAttachment != null) {
				model.addAttribute("profileImgAttachment", profileImgAttachment);
				String profileImgAttachmentSrc = profileImgAttachment.getModiName() + profileImgAttachment.getExtension();
				model.addAttribute("profileImgAttachmentSrc", profileImgAttachmentSrc);		
			}else {
				model.addAttribute("profileImgAttachment", profileImgAttachment);
			}

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			System.out.println("에러발생");
		}

		// return "trainer/2_1_myPage_profile";
		String redirect = "redirect:showMyPageProfile.tr?mno=" + mno;
		
		return redirect;
		
	}
	
	
	// 프로필 이미지 수정 (전효정) ---------------------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("modifyProfileImg.tr")
	public String modifyProfileImg(Model model, Member m, HttpServletRequest request, @RequestParam(name="profileImgFile", required=false) MultipartFile profileImgFile) {
		
		String mno = request.getParameter("mno");
		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root + "\\uploadFiles";

		String originalFilename = profileImgFile.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
		String changeName = CommonUtils.getRandomString();

		try {

			profileImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
		
			// 4. 프로필 이미지 수정 메소드 (전효정)
			ts.modifyProfileImg(mno, filePath, originalFilename, changeName, ext);

			int mno2 = Integer.parseInt(mno);

			// 1. 프로필 작성 여부 확인(전효정)
			Profile profile = ts.checkProfile(mno2);
			model.addAttribute("profile", profile);

			// 2. 프로필 이미지 존재 여부 확인 메소드 (전효정)
			Attachment profileImgAttachment = ts.checkProfileImg(mno2);
			
			if(profileImgAttachment != null) {
				model.addAttribute("profileImgAttachment", profileImgAttachment);
				String profileImgAttachmentSrc = profileImgAttachment.getModiName() + profileImgAttachment.getExtension();
				model.addAttribute("profileImgAttachmentSrc", profileImgAttachmentSrc);		
			}else {
				model.addAttribute("profileImgAttachment", profileImgAttachment);
			}
			
			// 8. 미디어 존재 여부 확인 메소드 (전효정)
			List<Attachment> mediaAttachment = ts.checkMediaAttachment(mno2);					
			model.addAttribute("mediaAttachment", mediaAttachment);
			
			// 14. 자격증 존재 여부 확인 메소드 (전효정)
			List<Attachment> certificationAttachment = ts.checkCertificationAttachment(mno2);					
			model.addAttribute("certificationAttachment", certificationAttachment);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			System.out.println("에러발생");
		}

		// return "trainer/2_1_myPage_profile";
		String redirect = "redirect:showMyPageProfile.tr?mno=" + mno;
		
		return redirect;
	}
	
	
	// 프로필 - 내 정보 수정하기 (전효정) --------------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("modifyProfile1.tr")
	public void modifyProfile1(String mno, String proTitle, String lineProfile, HttpServletResponse response) {
				
		int mno2 = Integer.parseInt(mno);

		// 1. 프로필 작성 여부 확인 메소드 (전효정)
		Profile profile = ts.checkProfile(mno2);
		
		if(profile == null) {
			// 5. 프로필 - 내 정보 수정하기 insert 메소드 (전효정)
			ts.insertProfile1(mno, proTitle, lineProfile);
			try {
				response.getWriter().print("insert");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			// 6. 프로필 - 내 정보 수정하기 update 메소드 (전효정)
			ts.updateProfile1(mno, proTitle, lineProfile);
			try {
				response.getWriter().print("insert");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	// 프로필 - 미디어 수정하기 (전효정) ----------------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("insertMediaImg.tr")
	public String insertMediaImg(Model model, Member m, HttpServletRequest request, @RequestParam(name="insertMediaImg", required=false) MultipartFile insertMediaImg) {
		
		String mno = request.getParameter("mno");
		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root + "\\uploadFiles";

		String originalFilename = insertMediaImg.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
		String changeName = CommonUtils.getRandomString();

		try {

			insertMediaImg.transferTo(new File(filePath + "\\" + changeName + ext));
		
			// 7. 프로필 - 미디어 수정하기 insert 메소드 (전효정)
			ts.insertMediaImg(mno, filePath, originalFilename, changeName, ext);

			int mno2 = Integer.parseInt(mno);
			  
			// 1. 프로필 작성 여부 확인(전효정)
			Profile profile = ts.checkProfile(mno2);
			model.addAttribute("profile", profile);

			// 2. 프로필 이미지 존재 여부 확인 메소드 (전효정)
			Attachment profileImgAttachment = ts.checkProfileImg(mno2);
			
			if(profileImgAttachment != null) {
				model.addAttribute("profileImgAttachment", profileImgAttachment);
				String profileImgAttachmentSrc = profileImgAttachment.getModiName() + profileImgAttachment.getExtension();
				model.addAttribute("profileImgAttachmentSrc", profileImgAttachmentSrc);		
			}else {
				model.addAttribute("profileImgAttachment", profileImgAttachment);
			}
			
			// 8. 미디어 존재 여부 확인 메소드 (전효정)
			List<Attachment> mediaAttachment = ts.checkMediaAttachment(mno2);					
			model.addAttribute("mediaAttachment", mediaAttachment);
			
			// 14. 자격증 존재 여부 확인 메소드 (전효정)
			List<Attachment> certificationAttachment = ts.checkCertificationAttachment(mno2);					
			model.addAttribute("certificationAttachment", certificationAttachment);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			System.out.println("에러발생");
		}
		
		// return "trainer/2_1_myPage_profile";
		String redirect = "redirect:showMyPageProfile.tr?mno=" + mno;
		
		return redirect;
	}
	
	
	// 프로필 - 트레이너 소개 수정하기 (전효정) --------------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("modifyProfile4.tr")
	public void modifyProfile4(String mno, String intro, HttpServletResponse response) {
						
		int mno2 = Integer.parseInt(mno);

		// 1. 프로필 작성 여부 확인 메소드 (전효정)
		Profile profile = ts.checkProfile(mno2);
		
		if(profile == null) {
			// 9. 프로필 - 트레이너 소개 insert 메소드 (전효정)
			ts.insertProfile4(mno, intro);
			
		}else {
			// 10. 프로필 - 트레이너 소개 update 메소드 (전효정)
			ts.updateProfile4(mno, intro);
		}
			
	}
	
	
	// 프로필 - 서비스 키워드 수정하기 (전효정) --------------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("modifyProfile3.tr")
	public void modifyProfile3(String mno, String keyword, HttpServletResponse response) {
						
		int mno2 = Integer.parseInt(mno);

		// 1. 프로필 작성 여부 확인 메소드 (전효정)
		Profile profile = ts.checkProfile(mno2);
		
		if(profile == null) {
			// 11. 프로필 - 서비스 키워드 insert 메소드 (전효정)
			ts.insertProfile3(mno, keyword);
			
		}else {
			// 12. 프로필 - 서비스 키워드 update 메소드 (전효정)
			ts.updateProfile3(mno, keyword);
		}
			
	}
	
	
	// 프로필 - 자격증 수정하기 (전효정) ----------------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("insertCertificationImg.tr")
	public String insertCertificationImg(Model model, Member m, HttpServletRequest request, @RequestParam(name="insertCertificationImg", required=false) MultipartFile insertCertificationImg) {
		
		String mno = request.getParameter("mno");
		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root + "\\uploadFiles";

		String originalFilename = insertCertificationImg.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
		String changeName = CommonUtils.getRandomString();

		try {

			insertCertificationImg.transferTo(new File(filePath + "\\" + changeName + ext));
		
			// 13. 프로필 - 자격증 수정하기 insert 메소드 (전효정)
			ts.insertCertificationImg(mno, filePath, originalFilename, changeName, ext);

			int mno2 = Integer.parseInt(mno);
			  
			// 1. 프로필 작성 여부 확인(전효정)
			Profile profile = ts.checkProfile(mno2);
			model.addAttribute("profile", profile);

			// 2. 프로필 이미지 존재 여부 확인 메소드 (전효정)
			Attachment profileImgAttachment = ts.checkProfileImg(mno2);
			
			if(profileImgAttachment != null) {
				model.addAttribute("profileImgAttachment", profileImgAttachment);
				String profileImgAttachmentSrc = profileImgAttachment.getModiName() + profileImgAttachment.getExtension();
				model.addAttribute("profileImgAttachmentSrc", profileImgAttachmentSrc);		
			}else {
				model.addAttribute("profileImgAttachment", profileImgAttachment);
			}
			
			// 8. 미디어 존재 여부 확인 메소드 (전효정)
			List<Attachment> mediaAttachment = ts.checkMediaAttachment(mno2);					
			model.addAttribute("mediaAttachment", mediaAttachment);
			
			// 14. 자격증 존재 여부 확인 메소드 (전효정)
			List<Attachment> certificationAttachment = ts.checkCertificationAttachment(mno2);					
			model.addAttribute("certificationAttachment", certificationAttachment);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			System.out.println("에러발생");
		}
		
		// return "trainer/2_1_myPage_profile";
		String redirect = "redirect:showMyPageProfile.tr?mno=" + mno;
		
		return redirect;
	}
	
	
	// 미디어 삭제하기 (전효정) ----------------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("deleteMidea.tr")
	public String deleteMidea(String mno, String thisModiName, HttpServletResponse response) {
		
		// 15. 프로필 - 미디어/자격증 삭제하기 (전효정)
		ts.deleteMidea(mno, thisModiName);
		
		String redirect = "redirect:showMyPageProfile.tr?mno=" + mno;
		
		return redirect;
	}

	
	// 매칭 요청 거절하기 (전효정) -------------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("updateMprocess1.tr")
	public String updateMprocess1(String uno, String tno) {
		
		// 16. 매칭 요청 거절하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
		ts.updateMprocess1(uno, tno);
		
		return "redirect:showMatchingProcessPage.tr?uno=" + uno + "&tno=" + tno;
	}
	
	
	// 매칭 요청 수락하기 (전효정) -------------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("updateMprocess2.tr")
	public String updateMprocess2(String uno, String tno) {
		
		// 17. 매칭 요청 수락하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
		ts.updateMprocess2(uno, tno);
		
		return "redirect:showMatchingProcessPage.tr?uno=" + uno + "&tno=" + tno;
	}
	
	
	// 입금 확인 요청 수락하기 (전효정) -------------------------------------------------------------------------------------------------------------------------------------------
	@RequestMapping("updateMprocess3.tr")
	public String updateMprocess3(String uno, String tno) {
		
		// 18. 입금 확인 요청 수락하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
		ts.updateMprocess3(uno, tno);
		
		return "redirect:showMatchingProcessPage.tr?uno=" + uno + "&tno=" + tno;
	}
	
	
	
	
	
	
	
	


	// 페이지 이동 메소드 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	

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



	

	
	
}
