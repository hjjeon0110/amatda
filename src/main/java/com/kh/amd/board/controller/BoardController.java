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

import com.kh.amd.board.model.service.BoardService;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.common.CommonUtils;
import com.kh.amd.member.model.vo.Member;



@Controller
public class BoardController {
	@Autowired
	private BoardService bs;
	
	
	  //Q&A 게시판 그냥 단순 페이지 출력 (SR)
	 @RequestMapping("insertQnaFormView.bo")
	 public String insertQnaFormView() {
		 
		 System.out.println("나는 단순하게 입력양식만 호출했어요!");
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
	 
	
	
		 //공지사항/이벤트 리스트 출력(SR)
		 @RequestMapping("selectNotice.bo")
		 public String selectNotice(Model model) {
			 List<Board> selectNotice = bs.selectNotice();
			 model.addAttribute("selectNotice",selectNotice);
			 System.out.println("selectNotice in controller : " + selectNotice);
			 return "board/selectNotice";
		 }
	
		 //공지사항 CATEGORY만의 리스트 출력(SR)
		 @RequestMapping("selectNoticeCate.bo")
		 public String selectNoticeCate(Model model) {
			 List<Board> selectNoticeCate = bs.selectNoticeCate();
			 model.addAttribute("selectNoticeCate",selectNoticeCate);
			 System.out.println("selectNoticeCate in controller : " + selectNoticeCate );
			 return "board/selectNoticeCate";
		 }
		 
		 //이벤트 CATEGORY만의 리스트 출력(SR)
		 @RequestMapping("selectEventCate.bo")
		 public String selectEventCate(Model model) {
			 List<Board> selectEventCate = bs.selectEventCate();
			 model.addAttribute("selectEventCate",selectEventCate);
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
		
		
		//------------------------------------------------------------------
		 //★FAQ게시판 아코디언 리스트 출력(SR)
		 @RequestMapping("selectFaq.bo")
		 public String selectFaq(Model model) {
			 List<Board> selectFaq = bs.selectFaq();
			 model.addAttribute("selectFaq",selectFaq);
			 System.out.println("selectFaq in controller : " + selectFaq);
			 return "board/selectFaq";
		 }
		 
		 
		 
		
		 
		 //--------------------------------------------------------------------
		 
		 
		 
		  //리뷰게시판 그냥 단순 페이지 출력 (SR)
		  
		 /*@RequestMapping("insertReviewFormView.bo") 
		 public String insertReviewFormView() { 
			System.out.println("나는 단순하게 입력양식만 호출했어요!");
			 return "board/insertReview"; 
		 }
		  */
		 
		 //리뷰게시판 select리스트 그냥 단순 페이지 출력(SR)
		 @RequestMapping("selectReviewFormView.bo")
		 public String selectReviewFormView() {
			 
			 System.out.println("selectReviewFormView in controller");
			 
			 return "board/selectReview";
			 
		 }
		 
		 
		 
		 //리뷰게시판 리스트(sr)
		  @RequestMapping("selectReview.bo")
		  public String selectReview(Model model ) {
			  System.out.println("selectReview페이지로 옴");
			  List <Board> selectReview = bs.selectReview();
			  model.addAttribute("selectReview",selectReview);
			  System.out.println("selectReview in controller : " + selectReview);
			  
			  return "board/selectReview"; 
			  } 
		  
		  
		  //리뷰게시판 상세페이지 (SR)
		 @RequestMapping("selectOneReview.bo")
		  public String selectOneReview(Model model,int bNo) {
			 System.out.println("bno in controller : " + bNo);
			 bs.selectOneReview(bNo);
			 return "board/selectOneReview";
			 
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
		 public String insertReview(Model model,HttpServletRequest request,HttpSession session,@RequestParam(name="declImgFile",required=false) MultipartFile declImgFile) {
			
			 
			 System.out.println("insertReview.bo로 옴");
			 
			 Board b = new Board();
			 int mNo = Integer.parseInt(request.getParameter("mNo"));
			 String bTitle = request.getParameter("bTitle");
			 String bContent = request.getParameter("bContent");
			 b.setbWriter(mNo);
			 b.setbTitle(bTitle);
			 b.setbContent(bContent);
			 
			 System.out.println("b : "+ b);
			  
			 
			 System.out.println("-----------------------");
			 //int result = bs.insertReview(b);
			 //int bno=bs.selectReviewBno();
			 //System.out.println("bno in controller : " + bno);
			 
			 
			/* String root = request.getSession().getServletContext().getRealPath("resources");
	         
	         String filePath = root + "\\uploadFiles";      
	         String originalFilename = declImgFile.getOriginalFilename();
	         String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
	         String changeName = CommonUtils.getRandomString();
			 
	         try {
	               
	               declImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
	                     
	               //ds.insertDeclarationImg(bno, mno, filePath, originalFilename, changeName, ext,decl_category ,decl_classification);
	               
	               return "redirect:insertReview.de";
	               
	            }catch (IllegalStateException | IOException e) {
	               e.printStackTrace();
	               System.out.println("에러발생");
	            }*/
	            return "board/insertReview";      
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
		 
		 
		  //리뷰 게시판 그냥 단순 페이지 출력 (SR)
		 @RequestMapping("insertReviewFormView.bo")
		 public String insertReviewFormView() {
			 
			 System.out.println("나는 단순하게 입력양식만 호출했어요!");
			 return "board/insertReview";
		 }
		  
		  
		 //공지사항 이벤트 게시판 총 제목&내용으로 검색
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
		 
		
		 
		 
		//공지사항/이벤트 게시판 페이징 (SR)
	/*
	 * @RequestMapping("selectNotice.bo") public ModelAndView openBoardList(Criteria
	 * cri) throws Exception {
	 * 
	 * ModelAndView mav = new ModelAndView("/board/selectNotice");
	 * 
	 * PageMaker pageMaker = new PageMaker(); pageMaker.setCri(cri);
	 * pageMaker.setTotalCount(100);
	 * 
	 * List<Map<String,Object>> list = bs.selectBoardList(cri);
	 * mav.addObject("list", list); mav.addObject("pageMaker", pageMaker);
	 * 
	 * return mav;
	 * 
	 * }
	 */


		 
		
		 
}




















