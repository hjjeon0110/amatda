package com.kh.amd.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.board.model.vo.Declaration;

public interface DeclarationDao {

	List<Declaration> declarationList(SqlSessionTemplate sqlSession);

	int insertDeclaration(SqlSessionTemplate sqlSession, Declaration d);

	//List<Declaration> declarationList(SqlSessionTemplate sqlSession, Declaration decl);

}
