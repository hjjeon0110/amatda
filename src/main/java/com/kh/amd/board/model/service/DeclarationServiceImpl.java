package com.kh.amd.board.model.service;

import java.util.List;

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

	@Override
	public List<Declaration> declarationList() {
		
		return dd.declarationList(sqlSession);
		
	}

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
