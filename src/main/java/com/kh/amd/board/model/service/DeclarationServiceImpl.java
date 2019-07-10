package com.kh.amd.board.model.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.board.model.dao.DeclarationDao;
import com.kh.amd.board.model.vo.Declaration;

@Service
public class DeclarationServiceImpl implements DeclarationService{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	DeclarationDao dd;

	//신고 목록 조회(김선아)
	@Override
	public List<Declaration> declarationList() {		
		return dd.declarationList(sqlSession);	
	}

	//게시물 상세보기(김선아)
	@Override
	public Object declarationSelectOne(int decl_no) {
		//System.out.println("sevice no : " + decl_no);
		return dd.declarationSelectOne(sqlSession, decl_no);
	}
	

	//사용자페이지 신고입력 페이지(SR)
  	@Override
	public int insertDeclaration(Declaration d,String mno) {
  		
		return dd.insertDeclaration(sqlSession, d,mno);
	}

	//게시물 삭제(김선아)
	@Override
	public void deleteDeclaration(int decl_no) {
		//System.out.println("sevice no : " + decl_no);
		dd.deleteDeclaration(sqlSession, decl_no);
	}

	
	
	





}
