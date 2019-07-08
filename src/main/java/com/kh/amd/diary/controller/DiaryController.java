package com.kh.amd.diary.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.common.CommonUtils;
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
	public String selectDiary(Model model, Member m) {
		
		int mno = m.getMno();
		
		
		List<Diary> diaryList = ds.diaryList(mno);
		
		
		System.out.println("diaryList: " + diaryList);
		
		model.addAttribute("diaryList", diaryList);
		
		return "diary/diaryList";
		
	}
	
	
	//다이어리 상세보기
	@RequestMapping(value="selectDetailDiary.di", method=RequestMethod.GET)
	public ModelAndView selectDetailDiary(@RequestParam int bno, HttpSession session) {
		
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
		
		return mav;
		
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
	
	
	
	
	@RequestMapping("deleteDiary.di")
	public String deleteDiary() {
		
		return "diary/deleteDiary";
		
	}
	
	
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
