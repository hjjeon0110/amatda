package com.kh.amd.admin.model.service;

import java.util.List;

import com.kh.amd.board.model.vo.Board;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Payment;

public interface AdminService {

	//결제 내역 리스트
	List<Payment> paymentList();

	//환불 내역 리스트
	List<Payment> refundList();

	//회원 정보 조회
	List<Member> userList();

	//트레이너 조회
	List<Member> trainerList();

	//아이디 검색 
	List<Member> searchUser(String userId);

	//카테고리별 검색(회원)
	List<Member> filteringList(String category, String keyword);

	//카테고리별 검색(트레이너)
	List<Member> T_filteringList(String category, String keyword);

	//카테고리별 검색(환불상태)
	List<Payment> refundStatus(String keyword);

	//환불 승인 처리
	int refundAgree(int payNo);

	



}
