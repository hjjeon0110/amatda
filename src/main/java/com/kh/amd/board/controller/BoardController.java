package com.kh.amd.board.controller;


import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tools.ant.taskdefs.Apt.Option;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.service.BoardService;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.common.CommonUtils;
import com.kh.amd.common.Pagination;
import com.kh.amd.member.model.vo.Member;



@Controller
public class BoardController {
	@Autowired
	private BoardService bs;
	
	
	//-------------------------------------------------------------------------------------------------(공지사항/이벤트)
	
		 //공지사항/이벤트 리스트 출력(SR)
		 @RequestMapping("selectNotice.bo")
		 public String selectNotice(Model model,String currentPage) {
			
			 int currentPageI = 1;
	          
	          if(currentPage != null) {
	               currentPageI = Integer.parseInt(currentPage);
	            }
	         //목록을 조회해서 해당 리스트가 몇개인지 확인 
	         int listCount = bs.getSearchNoticeListCount(); //디비안의 해당리스틀가 몇개인지 확인용 
	         System.out.println("listCount in controller : " + listCount);
	         PageInfo pi = Pagination.getPageInfo(currentPageI, listCount);
	         
	         //------------------------
			 
			 List<Board> selectNotice = bs.selectNotice(pi);
			 model.addAttribute("selectNotice",selectNotice);
			 model.addAttribute("pi", pi);//[1]들에게 속성을 달아줌
			 
			 System.out.println("selectNotice in controller : " + selectNotice);
			 return "board/selectNotice";
			 
			 
		 }
	
		 //공지사항 CATEGORY만의 리스트 출력(SR)
		 @RequestMapping("selectNoticeCate.bo")
		 public String selectNoticeCate(Model model,String currentPage) {
			 int currentPageI = 1;
	          
	          if(currentPage != null) {
	               currentPageI = Integer.parseInt(currentPage);
	            }
	         //목록을 조회해서 해당 리스트가 몇개인지 확인 
	         int listCount = bs.getSearchNoticeCateListCount();
	         System.out.println("getSearchNoticeCateListCount in controller : " + listCount);
	         PageInfo pi = Pagination.getPageInfo(currentPageI, listCount);
			 
			 //---------
			 List<Board> selectNoticeCate = bs.selectNoticeCate(pi);
			 model.addAttribute("selectNoticeCate",selectNoticeCate);
			 model.addAttribute("pi", pi);//[1]들에게 속성을 달아줌
			 System.out.println("selectNoticeCate in controller : " + selectNoticeCate );
			 return "board/selectNoticeCate";
		 }
		 
		 
		 //이벤트 CATEGORY만의 리스트 출력(SR)
		 @RequestMapping("selectEventCate.bo")
		 public String selectEventCate(Model model,String currentPage) {
			 int currentPageI = 1;
	          if(currentPage != null) {
	               currentPageI = Integer.parseInt(currentPage);
	            }
	          //목록을 조회해서 해당 리스트가 몇개인지 확인 
		         int listCount = bs.getSearchEventCateListCount();
		         System.out.println("getSearchEventCateListCount in controller : " + listCount);
		         PageInfo pi = Pagination.getPageInfo(currentPageI, listCount);
				 
			 //-----------------------------
			 List<Board> selectEventCate = bs.selectEventCate(pi);
			 model.addAttribute("selectEventCate",selectEventCate);
			 model.addAttribute("pi", pi);//[1]들에게 속성을 달아줌
			 System.out.println("selectEventCate in controller : " + selectEventCate );
			 return "board/selectEventCate";
		 }
		 
		//공지사항&이벤트 전체 상세 페이지(SR)
		@RequestMapping(value="selectOneNotice.bo", method=RequestMethod.GET)
		 public String selectOneNotice(Model model, int bNo) {
			 
			Board b = bs.selectOneNotice(bNo);
			
			System.out.println("디비로부터 받아온 Board" + b);
			
			model.addAttribute("Board", b);		
			return "board/selectOneNotice";
		 } 
		
		 //★공지사항 카테고리 게시물 상세페이지(SR)
		
			@RequestMapping(value="selectOneNoticeCate.bo", method=RequestMethod.GET)
			 public String selectOneNoticeCate(Model model, int bNo) {
				 
				Board b = bs.selectOneNoticeCate(bNo);
				
				System.out.println("디비로부터 받아온 Board" + b);
				
				model.addAttribute("Board", b);		
				return "board/selectOneNoticeCate";
			 } 
			
			
			//★이벤트 카테고리 게시물 상세페이지(SR)
			
			@RequestMapping(value="selectOneEventCate.bo", method=RequestMethod.GET)
			 public String selectOneEventCate(Model model, int bNo) {
				 
				Board b = bs.selectOneEventCate(bNo);
				
				System.out.println("디비로부터 받아온 Board" + b);
				
				model.addAttribute("Board", b);		
				return "board/selectOneEventCate";
			 } 
			
			 //공지사항 이벤트 게시판 총 제목&내용으로 검색(SR)
			@RequestMapping("searchResult.bo")
			public ResponseEntity searchResult (String searchCon, String searchType, int bType) {
				
				Board b = new Board();
				if(searchType.equals("title")) {
					//제목내용으로 검색
					b.setbTitle(searchCon);
				}else {
					//본문내용으로 검색
					b.setbContent(searchCon);
				}
				b.setbType(bType);
				
				System.out.println("bType : " + b.getbType());
				System.out.println("title : " + b.getbTitle());
				System.out.println("content : " + b.bContent);
				
				List<Board> searchResult = bs.searchResult(b);
				
				System.out.println("List : " + searchResult);
				System.out.println("list size : " + searchResult.size());
				
			/* model.addAttribute("searchResult", searchResult); */
				//mv.addObject("searchResult", searchResult);
				
				return new ResponseEntity(searchResult, HttpStatus.OK);
			
			}
		

			 //★공지사항/이벤트 게시판 검색  !!! (SR)
			/* @RequestMapping("searchNotice.bo")
			 public String searchNotice(Model model, String searchCon, String selectType) {
				 //검색할 내용 = searchCon
				 //검색할 타입 = selectType
				 System.out.println("받아온값 두개 : " + searchCon + ";;;;;" + selectType);
				 List<Board> searchNotice = bs.searchNotice(searchCon);
				 if(searchNotice!=null) {
					 System.out.println("잘 넘어옴");
				 }
				 model.addAttribute("searchNotice",searchNotice);
				 return "board/searchNotice";
			 }*/
			 
		
		//-----------------------------------------------------------------------------------------------(FAQ)
		 //★FAQ게시판 아코디언 리스트 출력(SR)
		 @RequestMapping("selectFaq.bo")
		 public String selectFaq(Model model) {
			 List<Board> selectFaq = bs.selectFaq();
			 model.addAttribute("selectFaq",selectFaq);
			 System.out.println("selectFaq in controller : " + selectFaq);
			 return "board/selectFaq";
		 }
		 
		 // FAQ 게시판 총 제목&내용으로 검색(SR)
			@RequestMapping("searchResultFaq.bo")
			public ResponseEntity searchResultFaq (String searchCon) {
				
				Board b = new Board();
				
				b.setbContent(searchCon);
				
				System.out.println("content : " + b.bContent);
				
				List<Board> searchResultFaq = bs.searchResultFaq(b);
				
				System.out.println("List : " + searchResultFaq);
				System.out.println("list size : " + searchResultFaq.size());
				
			/* model.addAttribute("searchResult", searchResult); */
				//mv.addObject("searchResult", searchResult);
				
				return new ResponseEntity(searchResultFaq, HttpStatus.OK);
			
			}
			
			
			
		  //FAQ 게시판 카테고리별 클릭시 출력(AJAX)
			@RequestMapping("cateResult.bo")
			public ResponseEntity cateResult(String bmCate) {
				
				List<Board> cateResult = bs.cateResult(bmCate);
				
				System.out.println("cateResult : " + cateResult.size());
				
				return new ResponseEntity(cateResult,HttpStatus.OK);
			}
			
		 //----------------------------------------------------------------------------------------------(후기리뷰)
		 
		 //리뷰게시판 select리스트 그냥 단순 페이지 출력(SR)
		 @RequestMapping("selectReviewFormView.bo")
		 public String selectReviewFormView() {
			 
			 System.out.println("selectReviewFormView in controller");
			 
			 return "board/selectReview";
			 
		 }
		 
		 
		 //리뷰게시판 리스트(sr)
		  @RequestMapping("selectReview.bo")
		  public String selectReview2(Model model,Attachment a ) {
			  System.out.println("selectReview페이지로 옴");
			  System.out.println("a잘넘어오나? " + a);
			  List <Board> selectReview = bs.selectReview2(a);
			  model.addAttribute("selectReview",selectReview);
			  System.out.println("selectReview in controller : " + selectReview);
			  
			  return "board/selectReview"; 
			  } 
		  
		  
		  //리뷰게시판 상세페이지 (SR)
		 @RequestMapping(value="selectOneReview.bo",method=RequestMethod.GET)
		  public ModelAndView selectOneReview(Model model,@RequestParam int bNo,HttpSession session) {
			 Board b=bs.selectOneReview(bNo);
			 System.out.println("b: " + b);
			 Attachment a= bs.selectOneAttachment(bNo);
			 System.out.println("a: " + a);
			 ModelAndView mav = new ModelAndView();
			 System.out.println("mav: " + mav);
			 mav.setViewName("board/selectOneReview");
			 mav.addObject("board",bs.selectOneReview(bNo));
			 mav.addObject("b",b);
			 mav.addObject("a",a);
			 
			 return mav;
			 
			 //System.out.println("bno in controller : " + bNo);
			 //bs.selectOneReview(bNo);
			 
		 }
		 
		 //★리뷰게시판 입력(SR)
		 /*@RequestMapping("insertReview.bo")
		 public String insertReview(Model model,Board b) {
			 System.out.println("진짜인 내가 호출됐어요!!");
			 
			 int result = bs.insertReview(b);
			 
			 return "board/insertReview";
		 }
		  */
		 /*----------------------------------------보험용-------------------*/
		 //★리뷰게시판 입력(SR)
		 /*@RequestMapping("insertReview.bo")
		 public String insertReview(Model model,Board b,HttpServletRequest request) {
			 System.out.println("진짜인 내가 호출됐어요!!");
			 
			 Member loginUser = (Member) request.getSession().getAttribute("loginUser");
			 b.setbWriter(loginUser.getMno());
			 
			 int result = bs.insertReview(b);
			 if(result >0) {
				  return "board/insertQna"; 
			  }else {
				  model.addAttribute("msg","등록실패");
				  return "common/errorPage";
			  }
		 } */
		 /*----------------------------------------보험용-------------------*/
		 
		 
		 
		

		 //★리뷰게시판 입력(SR)
		       @RequestMapping("insertReview.bo")
		       public String insertReview(Model model,HttpServletRequest request, Board b, @RequestParam(name="reviewImgFile", required=false) MultipartFile reviewImgFile) {
		         
		          
		          System.out.println("insertReview.bo로 옴 : " + b);
		          
		      /*
		       * int mNo = Integer.parseInt(request.getParameter("mNo")); String bTitle =
		       * request.getParameter("bTitle"); String bContent =
		       * request.getParameter("bContent"); b.setbWriter(mNo); b.setbTitle(bTitle);
		       * b.setbContent(bContent);
		       */
		   
		           
		          
		          System.out.println("-----------------------");
		          
		          String mno = request.getParameter("bWriter");
		          System.out.println("bWriter : " + mno);
		          int result = bs.insertReview(b);  //1. 후기 내용 작성
		          int bno=bs.selectReviewBno();      //2. 작성한 후기의 bno조회(currval)
		          System.out.println("bno in controller : " + bno);
		         
		          
		          
		          String root = request.getSession().getServletContext().getRealPath("resources");
		            
		            String filePath = root + "\\uploadFiles";    

		            String originalFilename = reviewImgFile.getOriginalFilename();
		            String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
		            String changeName = CommonUtils.getRandomString();
		            
		            /////////////김진환 추가
		           // List <Board> selectReview = bs.selectReview();	            
		            //model.addAttribute("selectReview", selectReview);
		            
		            try {
		               reviewImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
		               bs.insertReviewImg(mno, filePath, originalFilename, ext, changeName,bno);
		               return "board/selectReview";
		            }catch(IllegalStateException | IOException e){
		               e.printStackTrace();
		               System.out.println("에러발생");
		            }
		            return "board/selectReview";
		            
	            // 후기 이미지 insert
	            //bs.insertReviewImg(mno, filePath, originalFilename, ext, changeName,bno);  //3. 조회해온 bno를 담아서 attachment에 insert
	          
	            //selectReview(model);// 이 메소드의 내용들을 보여달라는 뜻 
	               //return "board/selectReview";      
		       }
		            
		   /*
		    * Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		    * b.setbWriter(loginUser.getMno());
		    * 
		    * 
		    * int result = bs.insertReview(b); if(result >0) { return
		    * "redirect:/selectReview.bo"; }else { model.addAttribute("msg","등록실패"); return
		    * "common/errorPage"; }
		    */

			  //리뷰 게시판 그냥 단순 페이지 출력 (SR)
			 @RequestMapping("insertReviewFormView.bo")
			 public String insertReviewFormView() {
				 
				 System.out.println("나는 단순하게 입력양식만 호출했어요!");
				 return "board/insertReview";
			 }
			  
		  
		
			
			  //리뷰게시판 그냥 단순 페이지 출력 (SR)
			  
			 /*@RequestMapping("insertReviewFormView.bo") 
			 public String insertReviewFormView() { 
				System.out.println("나는 단순하게 입력양식만 호출했어요!");
				 return "board/insertReview"; 
			 }
			  */
			
			//---------------------------------------------------------------------------------------------(Q&A)
			
			 //Q&A 게시판 그냥 단순 페이지 출력 (SR)
			 @RequestMapping("insertQnaFormView.bo")
			 public String insertQnaFormView() {
				 return "board/insertQna";
			 }
			
			 
			 //Q&A 게시판 입력 (SR)
			  @RequestMapping("insertQna.bo") 
			  public String insertQna(Model model, Board b,HttpServletRequest request) {
			  System.out.println("내가 호출됐어요!!!");
			  System.out.println(b);
			 
			  Member loginUser = (Member) request.getSession().getAttribute("loginUser");
			  
			  b.setbWriter(loginUser.getMno());
			  
			  int result = bs.insertQna(b);
			  if(result >0) {
				  return "board/insertQna"; 
			  }else {
				  model.addAttribute("msg","등록실패");
				  return "common/errorPage";
			  }
			
			 }
			  
			//Q&A 게시판 입력 (SR)
			 /* @RequestMapping("insertQna.bo") 
			  public String insertQna(Model model, Board b,HttpServletRequest request) {
			  System.out.println("내가 호출됐어요!!!");
			  System.out.println(b);
			 
			  Member loginUser = (Member) request.getSession().getAttribute("loginUser");
			  b.setbWriter(loginUser.getMno());
			  
			  int result = bs.insertQna(b);
			  if(result >0) {
				  return "board/insertQna"; 
			  }else {
				  model.addAttribute("msg","등록실패");
				  return "common/errorPage";
			  }
			
			 } */
			 
			

}















