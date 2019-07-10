package com.kh.amd.board.model.service;

import java.util.List;

import javax.servlet.http.HttpSession;


import com.kh.amd.board.model.vo.Declaration;

public interface DeclarationService {


   //신고목록 조회(김선아)
   List<Declaration> declarationList();
   //신고게시물 상세보기(김선아)
   Object declarationSelectOne(int decl_no);
   //신고게시물 삭제(김선아)
   void deleteDeclaration(int decl_no);

   //신고게시물 내용(content) insert (SR)
   void insertDeclaration(Declaration d, String mno);
   
   //신고게시판 bno 조회(SR)
   int selectDeclBno();
   
   //신고게시판 이미지 INSERT (SR)
   void insertDeclarationImg(int bno, String mno, String filePath, String originalFilename, String changeName,String ext, String decl_category, String decl_classification);



}