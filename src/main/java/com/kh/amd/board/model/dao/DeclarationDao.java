package com.kh.amd.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.board.model.vo.Declaration;

public interface DeclarationDao {

	//신고 목록 조회(김선아)
	List<Declaration> declarationList(SqlSessionTemplate sqlSession);
	//게시물 상세보기(김선아)
	Object declarationSelectOne(SqlSessionTemplate sqlSession, int decl_no);
	//게시물 삭제(김선아)
	void deleteDeclaration(SqlSessionTemplate sqlSession, int decl_no);

	//신고게시물 전송(SR)
	int insertDeclaration(SqlSessionTemplate sqlSession, Declaration d);
	

}
