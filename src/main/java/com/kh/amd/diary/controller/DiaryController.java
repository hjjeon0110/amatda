package com.kh.amd.diary.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.common.CommonUtils;
import com.kh.amd.common.Pagination;
import com.kh.amd.diary.model.service.DiaryService;
import com.kh.amd.diary.model.vo.Diary;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;
import com.kh.amd.trainer.model.vo.Profile;

@SessionAttributes("loginUser")
@Controller
public class DiaryController {
	
	@Autowired
	private DiaryService ds;
	
	//다이어리 인서트 시작하자
	@RequestMapping("show.di")
	public String showDiary() {
		
		return "diary/showDiary";
		
	}
	
	//다이어리 insert
	@RequestMapping(value="insert.di")
	public String insertDiary(Model model, Diary d, Member m, HttpServletRequest request, @RequestParam(name="diaryImgFile", required=false) MultipartFile diaryImgFile){
				
		String mno = request.getParameter("mNo");
		ds.insertDiary(d, mno);
		
		int bno = ds.selectDiaryBno();
		System.out.println(bno);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\uploadFiles";		
		String originalFilename = diaryImgFile.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
		String changeName = CommonUtils.getRandomString();
				
		
		try {
			
			diaryImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
					
			ds.insertDiaryImg(bno, mno, filePath, originalFilename, changeName, ext);
			
			return "redirect:list.di?mno=" + mno;
			
		}catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			System.out.println("에러발생");
		}

		return "diary/showDiary";		
	
	}
	

	
	//다이어리 리스트
	@RequestMapping("list.di")
	public String selectDiary(Model model, Member m, int mno, String currentPage) {
		//리스트

		
		//페이지처리
		int currentPageI = 1;
        
        if(currentPage != null) {
             currentPageI = Integer.parseInt(currentPage);
          }
       //목록을 조회해서 해당 리스트가 몇개인지 확인 
       int listCount = ds.diaryListCount(mno);
       
       System.out.println("리스트 나오냐: " + listCount);

       PageInfo pi = Pagination.getPageInfo(currentPageI, listCount);
       
		
		
		List<Diary> diaryList = ds.diaryList(mno, pi);
		
		
		System.out.println("diaryList: " + diaryList);
		System.out.println(pi);
		model.addAttribute("diaryList", diaryList);
		model.addAttribute("pi", pi);
		
		return "diary/diaryList";
		
	}
	
	
	//다이어리 상세보기
	@RequestMapping(value="selectDetailDiary.di", method=RequestMethod.GET)
	public ModelAndView selectDetailDiary(@RequestParam int bno, HttpSession session, Model model) {
		
		System.out.println("컨트롤러 bno : " + bno);
		
		Diary d = ds.selectDetailDiary(bno);
		Attachment a = ds.selectAttachmentOne(bno);
		
		System.out.println("다이어리 : " + d);
		System.out.println("다이어리 이미지 : " + a);
				
		ModelAndView mav = new ModelAndView();
		mav.setViewName("diary/selectDetailDiary");
		mav.addObject("diary", ds.selectDetailDiary(bno));
		
		mav.addObject("d", d);
		mav.addObject("a", a);
		
		//댓글 목록
		List<Reply> repList = ds.replyList(bno);
		model.addAttribute("repList", repList);
		System.out.println("이름 나오나: " + repList);
		
		return mav;
		
	}
	
	
	//댓글 입력
	@RequestMapping("insertReply.di")
	public void insertReply(@ModelAttribute Reply reply, HttpServletRequest request, HttpServletResponse response) {
		//System.out.println("댓글 입력 controller");
		//System.out.println(reply);
		String mno = request.getParameter("mno");
		String bno = request.getParameter("bno");
		String content = request.getParameter("content");
		
		int mno2 = Integer.parseInt(mno);
		int bno2 = Integer.parseInt(bno);
		
		Reply rep = new Reply();
		
		rep.setMno(mno2);
	
		
		rep.setbNo(bno2);
		rep.setRepContent(content);
		
		
		
		
		System.out.println("rep: "+ rep);
		
		int result = ds.insertReply(rep);
		System.out.println("db갔다온 mno: " + mno);
		System.out.println("db갔다온 bno: " + bno);
		
		if(result>0) {
			try {
				response.getWriter().print("success");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			try {
				response.getWriter().print("fail");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	}
		

	//다이어리 update 테스트
		@RequestMapping(value="update.di")
		public String updateDiary(Model model, Diary d, Member m, HttpServletRequest request, @RequestParam(name="diaryImgFile", required=false) MultipartFile diaryImgFile){
					
			String mno = request.getParameter("mNo");
			String bno = request.getParameter("bno");
			System.out.println("bno : " + bno);
			
			//int mno = m.getMno();
			//int bno = d.getbNo();
			
			ds.updateDiary(d, mno, bno);
			
			
			
			String root = request.getSession().getServletContext().getRealPath("resources");
			
			String filePath = root + "\\uploadFiles";		
			String originalFilename = diaryImgFile.getOriginalFilename();
			String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
			String changeName = CommonUtils.getRandomString();
					
			
			try {
				
				diaryImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
						
				ds.updateDiaryImg(bno, mno, filePath, originalFilename, changeName, ext);
				
				return "redirect:list.di?mno=" + mno;
				
			}catch (IllegalStateException | IOException e) {
				e.printStackTrace();
				System.out.println("에러발생");
			}

			return "diary/showDiary";		
		
		}
	
	
	
	
	/*
	 * @RequestMapping("deleteDiary.di") public String deleteDiary() {
	 * 
	 * return "diary/deleteDiary";
	 * 
	 * }
	 */
	
	
	//리스트 delete
	/*
	 * @RequestMapping(value="deleteDiary.di", method = RequestMethod.POST) public
	 * String deleteDiary(@RequestParam("checkDelete") String[] checkDelete,
	 * ModelMap modelMap, int mno) throws Exception {
	 * 
	 * for (String bNo : checkDelete) { System.out.println("사용자 삭제 = " + bNo); int
	 * delete_count = ds.deleteDiary(bNo); } // 목록 페이지로 이동 return
	 * "redirect:list.di?mno=" + mno; }
	 */
	
	
	@RequestMapping(value="deleteDiary.di", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteDiary(Model model, Diary d, HttpServletRequest request){
				
		String mno = request.getParameter("mno");
		String bno = request.getParameter("bno");
		System.out.println("bno : " + bno);
		
		//int mno = m.getMno();
		//int bno = d.getbNo();
		
		ds.deleteDiary(d, bno);	
		
			
			return "redirect:list.di?mno=" + mno;
			
				
	
	}


	//리스트 delete 테스트중
//	@RequestMapping("deleteDiary.di")
//	@ResponseBody
//	public String deleteDiary(@RequestParam(name = "checkList[]") List<String> checkList, HttpSession session) {
//		System.out.println("checkList : " + checkList);
//		
//		HashMap<String, Object> infoMap = new HashMap<String, Object>();
//		
//		infoMap.put("checkList",checkList);
//		infoMap.put("mno", ((Member) session.getAttribute("loginUser")).getMno());
//		
//		int result = ds.deleteDiary(infoMap);
//		
//		if(result == checkList.size()) {
//			return "sussess";
//		}else {
//			return "fail";
//		}
//	}
	
	
	
	//갤러리 테스트
//		@RequestMapping(value="showGallery.di", method=RequestMethod.GET)
//		public ModelAndView selectGallery(@RequestParam String mno, HttpSession session) {
//			
//			System.out.println("컨트롤러 mno : " + mno);
//			
//			Diary d = ds.selectGallery(mno);
//			Attachment a = ds.selectAttachment(mno);
//			
//			System.out.println("다이어리 : " + d);
//			System.out.println("다이어리 이미지 : " + a);
//					
//			ModelAndView mav = new ModelAndView();
//			mav.setViewName("gallery/selectGallery");
//			mav.addObject("gallery", ds.selectGallery(mno));
//			
//			mav.addObject("d", d);
//			mav.addObject("a", a);
//			
//			return mav;
//			
//		}
//		
	
	@RequestMapping("showGallery.di")
	public String selectGallery(HttpServletRequest request, Attachment a, HttpSession session, Member m, Model model ) {
		
		m = (Member) session.getAttribute("loginUser");
		a.setPno(m.getMno());
		
		List<Object> list = ds.selectGallery(a);
		
		model.addAttribute("list", list);
		
		return "gallery/selectGallery";
	}





}
