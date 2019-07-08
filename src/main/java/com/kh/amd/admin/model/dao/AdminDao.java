package com.kh.amd.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.board.model.vo.Board;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Payment;

public interface AdminDao {

	//결제 내역 리스트
	List<Payment> paymentList(SqlSessionTemplate sqlSession);

	//환불 내역 리스트
	List<Payment> refundList(SqlSessionTemplate sqlSession);

	//회원 정보 조회
	List<Member> userList(SqlSessionTemplate sqlSession);

	//트레이너 조회
	List<Member> trainerList(SqlSessionTemplate sqlSession);

	//아이디 검색
	List<Member> searchUser(SqlSessionTemplate sqlSession, String userId);

	//카테고리별 조회
	List<Member> filteringList(SqlSessionTemplate sqlSession, String category, String keyword);




}
