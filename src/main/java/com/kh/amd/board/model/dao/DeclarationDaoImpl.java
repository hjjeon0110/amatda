package com.kh.amd.board.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.amd.board.model.vo.Declaration;

@Repository
public class DeclarationDaoImpl implements DeclarationDao{

	//신고 게시물 목록(김선아)
	@Override
	public List<Declaration> declarationList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("Declaration.declarationList");
	}

	//사용자 페이지 신고게시판 (SR)
  @Override
	public int insertDeclaration(SqlSessionTemplate sqlSession, Declaration d) {
		return sqlSession.insert("Declaration.insertDeclaration",d);

	}

	//게시물 상세보기(김선아)
	@Override
	public Object declarationSelectOne(SqlSessionTemplate sqlSession, int decl_no) {		
		//System.out.println("dao no: " + decl_no);		
		return sqlSession.selectOne("Declaration.declarationSelectOne", decl_no);
		}

	//게시물 삭제(김선아)
	@Override
	public void deleteDeclaration(SqlSessionTemplate sqlSession, int decl_no) {
		//System.out.println("dao no: " + decl_no);	
		sqlSession.delete("Declaration.declarationDelete", decl_no);
	}

	
	

	


	

	
}
