package com.kh.amd.admin.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Payment;

@Repository
public class AdminDaoImpl implements AdminDao{

	//결제 내역 리스트
	@Override
	public List<Payment> paymentList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("Admin.paymentList");
	}

	//환불 요청 리스트
	@Override
	public List<Payment> refundList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("Admin.refundList");
	}

	//회원 정보 조회
	@Override
	public List<Member> userList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("Admin.userList");
	}

	//트레이너 조회
	@Override
	public List<Member> trainerList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("Admin.trainerList");
	}

	//아이디 검색
	@Override
	public List<Member> searchUser(SqlSessionTemplate sqlSession, String userId) {
		return sqlSession.selectList("Admin.searchUser", userId);
	}

	//카테고리별 조회(회원)
	@Override
	public List<Member> filteringList(SqlSessionTemplate sqlSession, String category, String keyword) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("category", category);
		map.put("keyword", keyword);
		return sqlSession.selectList("Admin.filteringList", map);
	}

	//카테고리별 조회(트레이너)
	@Override
	public List<Member> T_filteringList(SqlSessionTemplate sqlSession, String category, String keyword) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("category", category);
		map.put("keyword", keyword);
		return sqlSession.selectList("Admin.T_filteringList", map);
	}

	//카테고리별 조회(환불상태)
	@Override
	public List<Payment> refundStatus(SqlSessionTemplate sqlSession, String keyword) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("keyword", keyword);
		return sqlSession.selectList("Admin.refundStatus", map);
	}

	//환불 승인 처리
	@Override
	public int refundAgree(SqlSessionTemplate sqlSession, int payNo) {
		return sqlSession.update("Admin.refundAgree", payNo);
	}
	
	//환불 거절 처리
	@Override
	public int refundRefuse(SqlSessionTemplate sqlSession, int payNo) {
		return sqlSession.update("Admin.refundRefuse", payNo);
	}



}
