package com.kh.amd.board.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.amd.board.model.vo.Declaration;

@Repository
public class DeclarationDaoImpl implements DeclarationDao{

	//신고 게시물 목록
	@Override
	public List<Declaration> declarationList(SqlSessionTemplate sqlSession) {

		return sqlSession.selectList("Declaration.declarationList");
	}
	
	

	
}
