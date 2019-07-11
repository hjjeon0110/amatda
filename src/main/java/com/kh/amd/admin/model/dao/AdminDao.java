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

	//카테고리별 조회(회원)
	List<Member> filteringList(SqlSessionTemplate sqlSession, String category, String keyword);

	//카테고리별 조회(트레이너)
	List<Member> T_filteringList(SqlSessionTemplate sqlSession, String category, String keyword);

	//카테고리별 조회(환불상태)
	List<Payment> refundStatus(SqlSessionTemplate sqlSession, String keyword);

	//환불 승인 처리
	int refundAgree(SqlSessionTemplate sqlSession, int payNo);

	//환불 거절 처리
	int refundRefuse(SqlSessionTemplate sqlSession, int payNo);

	//카테고리별 조회(멤버쉽)
	List<Payment> membershipType(SqlSessionTemplate sqlSession, String keyword);

	//페이징처리(공지사항)
	int noticeListCount(SqlSessionTemplate sqlSession);

	//페이징처리(FAQ)
	int faqListCount(SqlSessionTemplate sqlSession);

	//페이징처리(QNA)
	int qnaListCount(SqlSessionTemplate sqlSession);

	//페이징처리(신고)
	int declListCount(SqlSessionTemplate sqlSession);




}
