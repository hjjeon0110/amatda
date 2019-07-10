package com.kh.amd.board.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
   public String insertDeclarationFormView(HttpServletRequest request) {
      System.out.println("나는 단순하게 입력 양식만 호출했어요!");
      
            
      return "board/insertDeclaration";
   }

   
   //신고게시판 입력(sr)
      @RequestMapping("insertDeclaration.de")
      public String insertDeclaration(Model model,Declaration d, Member m,HttpServletRequest request, HttpSession session, String mNo, String decl_category, 
                              String decl_classification, String decl_title, String decl_content,
                              @RequestParam(name="declImgFile", required=false) MultipartFile declImgFile) {
         System.out.println("여기 오니?1");
         
        System.out.println("우리나 ㅎ하하하 : " + mNo);
        System.out.println("카테고리 : " + decl_category);
        System.out.println("신고사유 : " + decl_classification);
        System.out.println("신고타이틀 : " + decl_title);
        System.out.println("신고내용 : " + decl_content);
      /*
       * System.out.println("mno: " + mno); System.out.println("여기 오니?3"); int mno2 =
       * Integer.parseInt(mno); System.out.println("mno2: " + mno2);
       * 
       * System.out.println("d: " + d); System.out.println("mno: "+ mno);
       * ds.insertDeclaration(d,mno);
       */
       
         System.out.println("insert Decl");
         
         int bno = ds.selectDeclBno();
         System.out.println("bno in declController : " + bno);
         
         System.out.println("신고게시판인 내가 호출됐어요!!!");
         System.out.println("d in declController : " + d);
         //System.out.println("mno in declController : " + mno);
         
         String root = request.getSession().getServletContext().getRealPath("resources");
         
         String filePath = root + "\\uploadFiles";      
         String originalFilename = declImgFile.getOriginalFilename();
         String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
         String changeName = CommonUtils.getRandomString();
         //String decl_category= request.getParameter("decl_category");
         //String decl_classification = request.getParameter("decl_classification");
         
         System.out.println("category: "+ decl_category);
         System.out.println("category2: "+ decl_classification);
            try {
               
               declImgFile.transferTo(new File(filePath + "\\" + changeName + ext));
                     
               //ds.insertDeclarationImg(bno, mno, filePath, originalFilename, changeName, ext,decl_category ,decl_classification);
               
               return "redirect:insertDeclaration.de";
               
            }catch (IllegalStateException | IOException e) {
               e.printStackTrace();
               System.out.println("에러발생");
            }

            return "board/insertDeclaration";      
         
         }
         
      }

