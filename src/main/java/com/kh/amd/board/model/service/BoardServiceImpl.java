package com.kh.amd.board.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.board.model.dao.BoardDao;
import com.kh.amd.board.model.vo.Board;


@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	SqlSessionTemplate sqlSession;
	@Autowired
	BoardDao bd;

	//사용자페이지 리뷰후기 입력페이지(sr)
	@Override
	public int insertReview(Board b) {
		return bd.insertReview(sqlSession,b);
	
	}

	@Override
	public int insertQna(Board b) {
		
		return bd.insertQna(sqlSession, b);
	}

	//공지사항 리스트(김선아)
	@Override
	public List<Board> noticeList() {
		return bd.noticeList(sqlSession);
	}

	//공지사항 상세보기(김선아)
	@Override
	public Object noticeSelectOne(int bNo) {
		return bd.noticeSelectOne(sqlSession, bNo);
	}

	//공지사항 조회수증가(김선아)
	@Override
	public void increaseViewcnt(int bNo, HttpSession session) {
		
		long update_time = 0;
		//세션에 저장된 조회시간 검색
		//최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문 실행하지 않음
		if(session.getAttribute("update_time_"+bNo) != null) {
			update_time=(long)session.getAttribute("update_time_"+bNo);
		}
		
		//시스템의 현재시간을 current_time에 저장
		long current_time = System.currentTimeMillis();
		//일정시간이 경과 후 조회수 증가 처리 24*60*60*1000(24시간)
		//시스템 현재시간-열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간)
		if(current_time - update_time>5*1000) {
			bd.increaseViewcnt(sqlSession, bNo);
			//세션에 시간 저장
			session.setAttribute("update_time_" + bNo, current_time);
		}
		
		
	}
	//공지사항/이벤트 리스트 출력(SR)
	@Override
	public List<Board> selectNotice() {

		return bd.selectNotice(sqlSession);
	}

	
	 //공지사항 CATEGORY만의 리스트 출력(SR)
	@Override
	public List<Board> selectNoticeCate() {
		return bd.selectNoticeCate(sqlSession);
	}

	//이벤트 CATEGORY만의 리스트 출력(SR)
	@Override
	public List<Board> selectEventCate() {
		return bd.selectEventCate(sqlSession);
	}

	

	//REVIEW 후기 페이지 (SR)
	/*
	 * @Override public int selectReview(Board b) { return
	 * bd.selectReview(sqlSession,b); }
	 */
	
	
	
}
