package com.kh.amd.board.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.amd.board.model.service.DeclarationService;
import com.kh.amd.board.model.vo.Declaration;
import com.kh.amd.common.CommonUtils;
import com.kh.amd.member.model.vo.Member;

@Controller
public class DeclarationController {

	@Autowired
	private DeclarationService ds;
	
	//신고게시판 그냥 단순 페이지 출력(sr)
	@RequestMapping("insertDeclarationFormView.de")
	public String insertDeclarationFormView() {
		System.out.println("나는 단순하게 입력 양식만 호출했어요!");
		
				
		return "board/insertDeclaration";
	}

	
	//신고게시판 입력(sr)
		@RequestMapping("insertDeclaration.de")
		public String insertDeclaration(Model model,Declaration d,Member m,HttpServletRequest request,
										@RequestParam(name="declImgFile", required=false) MultipartFile declImgFile) {
			String mno = request.getParameter("mNo");
			ds.insertDeclaration(d,mno);
			
			int bno = ds.selectDeclBno();
			System.out.println("bno in declController : " + bno);
			
			System.out.println("신고게시판인 내가 호출됐어요!!!");
			System.out.println("d in declController : " + d);
			System.out.println("mno in declController : " + mno);
			
			String root = request.getSession().getServletContext().getRealPath("resources");
			
			String filePath = root + "\\uploadFiles";		
			String originalFilename = declImgFile.getOriginalFilename();
			String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
			String changeName = CommonUtils.getRandomString();
			

				try {
					
					declImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
							
					ds.insertDeclarationImg(bno, mno, filePath, originalFilename, changeName, ext);
					
					return "redirect:insertDeclaration.de";
					
				}catch (IllegalStateException | IOException e) {
					e.printStackTrace();
					System.out.println("에러발생");
				}

				return "board/insertDeclaration";		
			
			}
			
		}
