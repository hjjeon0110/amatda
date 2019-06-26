package com.kh.amd.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.board.model.vo.Declaration;

public interface DeclarationDao {

	//신고 목록 조회
	List<Declaration> declarationList(SqlSessionTemplate sqlSession);
	//게시물 상세보기
	Object declarationSelectOne(SqlSessionTemplate sqlSession, int decl_no);


}
