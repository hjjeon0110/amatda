package com.kh.amd.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.admin.model.dao.AdminDao;
import com.kh.amd.admin.model.vo.Statistics;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;
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

	//카테고리별 조회(회원)
	@Override
	public List<Member> filteringList(String category, String keyword) {
		return ad.filteringList(sqlSession, category, keyword);
	}

	//카테고리별 조회(트레이너)
	@Override
	public List<Member> T_filteringList(String category, String keyword) {
		return ad.T_filteringList(sqlSession, category, keyword);
	}

	//카테고리별 조회(환불상태)
	@Override
	public List<Payment> refundStatus(String keyword) {
		return ad.refundStatus(sqlSession, keyword);
	}

	//환불 승인 처리
	@Override
	public int refundAgree(int payNo) {
		return ad.refundAgree(sqlSession, payNo);
	}

	//환불 거절 처리
	@Override
	public int refundRefuse(int payNo) {
		return ad.refundRefuse(sqlSession, payNo);
	}

	//카테고리별 검색(멤버쉽)
	@Override
	public List<Payment> membershipType(String keyword) {
		return ad.membershipType(sqlSession, keyword);
	}

	//페이징 처리(공지사항)
	@Override
	public int noticeListCount() {
		return ad.noticeListCount(sqlSession);
	}

	//페이징 처리(FAQ)
	@Override
	public int faqListCount() {
		return ad.faqListCount(sqlSession);
	}

	//페이징 처리(QNA)
	@Override
	public int qnaListCount() {
		return ad.qnaListCount(sqlSession);
	}
	
	//페이징 처리(신고)
	@Override
	public int declListCount() {
		return ad.declListCount(sqlSession);
	}

	//매칭 조회
	@Override
	public List<Mprocess> matchingList() {
		return ad.matchingList(sqlSession); 
	}

	//매칭 아이디 검색
	@Override
	public List<Mprocess> searchId(String userId) {
		return ad.searchId(sqlSession, userId);
	}

	//매칭 종료
	@Override
	public int matchingEnd(int No) {
		System.out.println("service : " + No);
		return ad.matchingEnd(sqlSession, No);
	}

	//통계
	@Override
	public List<Member> userCount() {
		return ad.userCount(sqlSession);
	}

	@Override
	public List<Member> trainerCount() {
		return ad.trainerCount(sqlSession);
	}

	@Override
	public List<Member> userAge() {
		return ad.userAge(sqlSession);
	}

	@Override
	public List<Member> preferenceAge() {
		return ad.preferenceAge(sqlSession);
	}

	@Override
	public List<Statistics> Exercise() {
		return ad.Exercise(sqlSession);
	}

	@Override
	public List<Member> membershipCount() {
		return ad.membershipCount(sqlSession);
	}





}
