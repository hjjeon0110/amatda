package com.kh.amd.board.model.service;

import java.util.List;

import javax.servlet.http.HttpSession;


import com.kh.amd.board.model.vo.Declaration;
import com.kh.amd.board.model.vo.PageInfo;

public interface DeclarationService {


	//신고목록 조회(김선아)
	List<Declaration> declarationList(PageInfo pi);
	//신고게시물 상세보기(김선아)
	Object declarationSelectOne(int decl_no);
	//신고게시물 삭제(김선아)
	void deleteDeclaration(int decl_no);

	//신고게시물 전송(SR)
	int insertDeclaration(Declaration d, String mno);



}
