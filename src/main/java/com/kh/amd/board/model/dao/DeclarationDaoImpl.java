package com.kh.amd.board.model.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.Declaration;
import com.kh.amd.board.model.vo.PageInfo;

@Repository
public class DeclarationDaoImpl implements DeclarationDao{

   //신고 게시물 목록(김선아)
   @Override
   public List<Declaration> declarationList(SqlSessionTemplate sqlSession, PageInfo pi) {
      
	   int offset = (pi.getCurrentPage() - 1) * pi.getLimit();	      
	    RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
	    
	    List<Declaration> list = null;
	    
	    list = (List)sqlSession.selectList("Declaration.declarationList", null, rowBounds);
		System.out.println("리스트 : " + list);
		
		return list;
	   
	   //return sqlSession.selectList("Declaration.declarationList", pi);
   }

   //사용자 페이지 신고게시판 (SR) - 구버전
  @Override
   public int insertDeclaration(SqlSessionTemplate sqlSession, Declaration d,String mno) {
	  System.out.println("mno in Controller : " + mno);
	  System.out.println("dao에서 deC : " + d);
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