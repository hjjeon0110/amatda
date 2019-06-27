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

	//신고 목록 조회
	@Override
	public List<Declaration> declarationList() {
		
		return dd.declarationList(sqlSession);
		
	}

	//조회수 증가
	@Override
	public void increaseViewcnt(int decl_no, HttpSession session) {
		// TODO Auto-generated method stub
		
	}

	//게시물 상세보기
	@Override
	public Object declarationSelectOne(int decl_no) {
		
		System.out.println("게시물 상세보기 서비스");
		
		return dd.declarationSelectOne(sqlSession, decl_no);
	}
	
	//사용자페이지 신고입력 페이지(SR)
	@Override
	public int insertDeclaration(Declaration d) {
	
		return dd.insertDeclaration(sqlSession, d);
	}

	//신고 게시물 목록
	/*
	 * @Override public List<Declaration> declarationList(Declaration decl) {
	 * 
	 * return dd.declarationList(sqlSession, decl); }
	 */


}
