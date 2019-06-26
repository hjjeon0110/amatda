package com.kh.amd.board.model.service;

import java.util.List;

import javax.servlet.http.HttpSession;


import com.kh.amd.board.model.vo.Declaration;

public interface DeclarationService {


	//신고목록 조회 
	List<Declaration> declarationList();
	//조회수 증가
	void increaseViewcnt(int decl_no, HttpSession session);
	//신고게시물 상세보기
	Object declarationSelectOne(int decl_no);



	List<Declaration> declarationList();

	int insertDeclaration(Declaration d);

	


//	List<Declaration> declarationList(Declaration decl);


}
