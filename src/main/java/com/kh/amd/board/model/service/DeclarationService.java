package com.kh.amd.board.model.service;

import java.util.List;

import com.kh.amd.board.model.vo.Declaration;

public interface DeclarationService {

	List<Declaration> declarationList();

	int insertDeclaration(Declaration d);

	


//	List<Declaration> declarationList(Declaration decl);

}
