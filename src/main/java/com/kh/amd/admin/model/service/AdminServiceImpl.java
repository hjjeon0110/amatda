package com.kh.amd.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.admin.model.dao.AdminDao;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Payment;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	AdminDao ad;
	

	//결제 내역 리스트
	@Override
	public List<Payment> paymentList() {
		return ad.paymentList(sqlSession); 
	}

	//환불 내역 리스트
	@Override
	public List<Payment> refundList() {
		return ad.refundList(sqlSession); 
	}

	//회원 정보 조회
	@Override
	public List<Member> userList() {
		return ad.userList(sqlSession); 
	}

	//트레이너 조회
	@Override
	public List<Member> trainerList() {
		return ad.trainerList(sqlSession);
	}

	//아이디 검색
	@Override
	public List<Member> searchUser(String userId) {
		return ad.searchUser(sqlSession, userId);
	}

	//카테고리별 조회
	@Override
	public List<Member> filteringList(String category, String keyword) {
		return ad.filteringList(sqlSession, category, keyword);
	}




}
