package com.kh.amd.diary.controller;

import java.io.File;
import java.io.IOException;
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
		
		
		System.out.println(d);
		
		String root = request.getSession().getServletContext().getRealPath("resources");

		String mno = request.getParameter("mNo");		
		
		String filePath = root + "\\uploadFiles";		
		String originalFilename = diaryImgFile.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
		String changeName = CommonUtils.getRandomString();
		
				
		
		try {
			
			diaryImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
		
			ds.insertDiary(d, mno, filePath, originalFilename, changeName, ext);
			
			return "redirect:list.di?mno=" + mno;
			
		}catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			System.out.println("에러발생");
		}

		return "diary/showDiary";

		
		
		
//		int result = ds.insertDiary(d, mno);
//		
//			if(result > 0) {
//				
//				return "redirect:index.jsp";
//				
//			}else {
//				
//				model.addAttribute("msg","등록실패");
//				
//				return "common/errorPage";
//			}
		
		
		//return "redirect:index.jsp";
	}
	
	//다이어리 상세
	@RequestMapping("selectDiaryDetail.di")
	public String selectDiaryDetail() {
		
		return "diary/selectDiaryDetail";
		
	}
	
	
	
	// 프로필 사진 추가 (전효정) ------------------------------------------------------------------------------------------------------------------------------------
		@RequestMapping("insertDiaryImg.di")
		public String modifyDiaryImg1(Model model, Member m, HttpServletRequest request, @RequestParam(name="diaryImgFile", required=false) MultipartFile diaryImgFile) {

			String mno = request.getParameter("mno");
			String root = request.getSession().getServletContext().getRealPath("resources");
			String filePath = root + "\\uploadFiles";

			// 파일 이름 변경
			System.out.println(diaryImgFile);
			String originalFilename = diaryImgFile.getOriginalFilename();
			
			
			
			String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
			String changeName = CommonUtils.getRandomString();

//			try {
//
//				diaryImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
//				
//				ds.insertDiaryImg(mno, filePath, originalFilename, changeName, ext);
//				
//				int mno2 = Integer.parseInt(mno);
//							
//								
//				// 프로필 사진 존재 여부 확인 (전효정)
//				Attachment attachment = ds.checkDiaryImg(mno2);
//				
//				if(attachment != null) {
//					model.addAttribute("attachment", attachment);
//					String pic = attachment.getModiName() + attachment.getExtension();
//					model.addAttribute("pic", pic);		
//				}else {
//					model.addAttribute("attachment", attachment);
//				}	
//
//			} catch (IllegalStateException | IOException e) {
//				e.printStackTrace();
//				System.out.println("에러발생");
//			}

			return "diary/showDiary";
			
		}
		
		// 프로필 사진 수정 (전효정) ------------------------------------------------------------------------------------------------------------------------------------
		@RequestMapping("modifyDiaryImg.di")
		public String modifyDiaryImg2(Model model, Member m, HttpServletRequest request, @RequestParam(name="diaryImgFile", required=false) MultipartFile diaryImgFile) {
			
			String mno = request.getParameter("mno");
			String root = request.getSession().getServletContext().getRealPath("resources");

			String filePath = root + "\\uploadFiles";

			// 파일 이름 변경
			String originalFilename = diaryImgFile.getOriginalFilename();
			String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
			String changeName = CommonUtils.getRandomString();

			try {

				diaryImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
			
				ds.modifyDiaryImg(mno, filePath, originalFilename, changeName, ext);

				int mno2 = Integer.parseInt(mno);
				

				// 프로필 사진 존재 여부 확인 (전효정)
				Attachment attachment = ds.checkDiaryImg(mno2);
				model.addAttribute("attachment", attachment);
				String pic = attachment.getModiName() + attachment.getExtension();
				model.addAttribute("pic", pic);			

			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
				System.out.println("에러발생");
			}

			return "diary/showDiary";
		}
		
		
		
		
		
	/*
	 * public String insertSurvey1(Model model, Survey s, HttpServletRequest
	 * request) {
	 * 
	 * System.out.println(s);
	 * 
	 * 
	 * String mno = request.getParameter("mNo");
	 * 
	 * String root =
	 * request.getSession().getServletContext().getRealPath("resources");
	 * 
	 * //System.out.println("survey" + s);
	 * 
	 * 
	 * int result = ss.insertSurvey1(s, mno);
	 * 
	 * if(result > 0) {
	 * 
	 * return "survey/survey2";
	 * 
	 * }else {
	 * 
	 * model.addAttribute("msg","등록실패");
	 * 
	 * return "common/errorPage";
	 * 
	 * } }
	 */
	
	//다이어리 리스트
	@RequestMapping("list.di")
	public String selectDiary(Model model, Member m) {
		
		int mno = m.getMno();
		
		List<Diary> diaryList = ds.diaryList(mno);
		
		System.out.println("diaryList: " + diaryList);
		
		model.addAttribute("list", diaryList);
		
		return "diary/diaryList";
		
	}
	
	//다이어리 상세보기
	@RequestMapping(value="selectDetailDiary.di", method=RequestMethod.GET)
	public ModelAndView selectDetailDiary(@RequestParam int bNo, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("diary/selectDetailDiary");
		mav.addObject("diary", ds.selectDetailDiary(bNo));
		
		return mav;
		
	}
	
	//다이어리 update
		@RequestMapping("updateDiary.di")
		public String updateDiary() {
			
			return "diary/updateDiary";
			
		}
	
	@RequestMapping("deleteDiary.di")
	public String deleteDiary() {
		
		return "diary/deleteDiary";
		
	}

}
