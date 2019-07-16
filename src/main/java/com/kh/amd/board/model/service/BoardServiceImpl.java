package com.kh.amd.board.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.dao.BoardDao;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.member.model.vo.Member;


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
	public List<Board> noticeList(PageInfo pi) {
		return bd.noticeList(sqlSession, pi);
	}

	//공지사항 상세보기(김선아)
	@Override
	public Board noticeSelectOne(int bNo) {
		return bd.noticeSelectOne(sqlSession, bNo);
	}

	//조회수증가(김선아)
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

	//공지사항 글등록(김선아)
	@Override
	public void insertNotice(Board board) {
		bd.insertNotice(sqlSession, board);		
	}

	//공지사항 삭제(김선아)
	@Override
	public void deleteNotice(int bNo) {
		bd.deleteNotice(sqlSession, bNo);		
	}

	//공지사항 수정(김선아)
	@Override
	public int updateNotice(Board board) {
		return bd.updateNotice(sqlSession, board);
	}


	//공지사항/이벤트 리스트 출력(SR)
	@Override
	public List<Board> selectNotice(PageInfo pi) {

		return bd.selectNotice(sqlSession,pi);
	}


	//공지사항 CATEGORY만의 리스트 출력(SR)
	@Override
	public List<Board> selectNoticeCate(PageInfo pi) {
		return bd.selectNoticeCate(sqlSession,pi);
	}

	//이벤트 CATEGORY만의 리스트 출력(SR)
	@Override
	public List<Board> selectEventCate(PageInfo pi) {
		return bd.selectEventCate(sqlSession,pi);
	}

	//공지사항/이벤트 게시물 상세페이지(SR)
	@Override
	public Board selectOneNotice(int bNo) {
		Board b = bd.selectOneNotice(sqlSession, bNo);
		return b;
	}

	//FAQ게시판 아코디언 리스트 출력(SR)
	@Override
	public List<Board> selectFaq() {
		return bd.selectFaq(sqlSession);

	}

	//후기리뷰 게시판 리스트 출력(SR)
	//@Override
	//public List<Board> selectReview(Attachment a) {
	//	return bd.selectReview(sqlSession,a);
	//}

	//리뷰게시판 상세페이지 (SR)
	/*
	 * @Override public Object selectOneReview(int bNo) {
	 * 
	 * return bd.selectOneReview(sqlSession,bNo);
	 * 
	 * }
	 */


	//공지사항/이벤트 게시판 페이징 (SR)
	/*
	 * @Override public List<Map<String, Object>> selectBoardList(Criteria cri) {
	 * return bd.selectBoardList(cri); }
	 */

	//공지사항/이벤트 게시판 검색 !!!! (SR)
	/*@Override
	public List<Board> searchNotice(String searchCon) {
		System.out.println("Service: " + searchCon);
		return bd.searchNotice(sqlSession,searchCon);
	}*/

	//자주묻는질문 리스트(김선아)
	@Override
	public List<Board> FAQList(PageInfo pi) {
		return bd.FAQlist(sqlSession, pi);
	}

	//자주묻는질문 상세보기(김선아)
	@Override
	public Board FAQSelectOne(int bNo) {
		return bd.FAQSelectOne(sqlSession, bNo);
	}

	//공지사항 카테고리 게시물 상세페이지(SR)
	@Override
	public Board selectOneNoticeCate(int bNo) {
		Board b = bd.selectOneNoticeCate(sqlSession, bNo);
		return b;	
	}

	//★이벤트 카테고리 게시물 상세페이지(SR)
	@Override
	public Board selectOneEventCate(int bNo) {
		Board b = bd.selectOneEventCate(sqlSession, bNo);
		return b;
	}

	//자주 묻는 질문 글 등록(김선아)
	@Override
	public void insertFAQ(Board board) {
		bd.insertFAQ(sqlSession, board);		
	}

	//자주 묻는 질문 글 삭제(김선아)
	@Override
	public void deleteFAQ(int bNo) {
		bd.deleteFAQ(sqlSession, bNo);	
	}

	//자주 묻는 질문 수정(김선아)
	@Override
	public int updateFAQ(Board board) {
		return bd.updateFAQ(sqlSession, board);
	}

	//1:1문의 리스트(김선아)
	@Override
	public List<Board> QNAList(PageInfo pi) {
		return bd.QNAlist(sqlSession, pi);
	}

	//1:1 상세보기(김선아)
	@Override
	public Object QNASelectOne(int bNo) {
		return bd.QNASelectOne(sqlSession, bNo);
	}

	//1:1 글 삭제(김선아)
	@Override
	public void deleteQNA(int bNo) {
		bd.deleteQNA(sqlSession, bNo);
	}
	
	
	//공지사항/이벤트 게시판 검색 !!!! (SR)
	@Override
	public List<Board> searchResult(Board b) {
		
		return bd.searchResult(sqlSession, b);
		
	}

	//FAQ 게시판 카테고리별 클릭시 출력(AJAX)
	@Override
	public List<Board> cateResult(String bmCate) {
		return bd.cateResult(sqlSession, bmCate);
	}

	// FAQ 게시판 총 제목&내용으로 검색(SR)
	@Override
	public List<Board> searchResultFaq(Board b) {
		return bd.searchResultFaq(sqlSession,b);
	}

	//리뷰게시판 BNO조회(SR)
	@Override
	public int selectReviewBno() {
		System.out.println("selectReviewBno가 serviceimpl에 오는가?");
		return bd.selectReviewBno(sqlSession);
	}

	/*
	 * //리뷰게시판 이미지 insert(SR)
	 * 
	 * @Override public void insertReviewImg(int bno, String mno, String filePath,
	 * String originalFilename, String changeName, String ext, String bTitle, String
	 * bContent) { System.out.println("insertReviewImag in serviceimpl");
	 * bd.insertReviewImg(sqlSession,bno,mno,filePath,originalFilename,changeName,
	 * ext,bTitle,bContent); }
	 */

	//공지사항&이벤트 페이지 페이징(SR)
	@Override
	public int getSearchNoticeListCount() {
		return bd.getSearchNoticeListCount(sqlSession);
	}
	
	//공지사항 CATEGORY만의 리스트 페이징(SR)	
	public int getSearchNoticeCateListCount() {
		return bd.getSearchNoticeCateListCount(sqlSession);
	}

	//이벤트 CATEGORY만의 리스트 페이징(SR)
	@Override
	public int getSearchEventCateListCount() {
		return bd.getSearchEventCateListCount(sqlSession);
	}

	// 후기 이미지 insert
	@Override
	public void insertReviewImg(String mno, String filePath, String originalFilename, String ext, String changeName,int bno) {
		bd.insertReviewImg(sqlSession, mno,  filePath, originalFilename, changeName, ext,bno);
		
	}

	//리뷰게시판 상세페이지1 (SR)
	@Override
	public Board selectOneReview(int bNo) {
		return bd.selectOneReview(sqlSession,bNo);
	}

	//리뷰게시판 상세페이지 2(SR)
	@Override
	public Attachment selectOneAttachment(int bNo) {
		return bd.selectOneAttachment(sqlSession,bNo);
	}

	@Override
	public List<Board> selectReview2(Attachment a) {
	
		return bd.selectReview2(sqlSession,a);
	}

	 //리뷰 상세페이지 댓글입력(SR)
	@Override
	public int insertReply(Reply rep) {
		return bd.insertReply(sqlSession,rep);
	
	}

	//리뷰게시판 상세페이지 댓글 목록 SELECT(SR)
	@Override
	public List<Reply> replyList(int bNo) {
		return bd.replyList(sqlSession,bNo);
	}

	 //조회수 카운트 (SR)
	@Override
	public int updateCount(int bNo) {
		return bd.updateCount(sqlSession,bNo);
	}

	@Override
	public int likeCount(Board b) {
		return bd.likeCount(sqlSession,b);
	}

	@Override
	public int selectLikeCount(Board b) {
		return bd.selectLikeCount(sqlSession,b);
	}

	@Override
	public int likeWho(Board b) {
		return bd.likeWho(sqlSession,b);
	}

	@Override
	public int likeClick(Board b) {
		return bd.likeClick(sqlSession,b);
	}

	@Override
	public List<Board> bestReviewSelect() {
		return bd.bestReviewSelect(sqlSession);
	}

	@Override
	public List<Board> selectReview2() {
		return bd.selectReview2(sqlSession);
	}

	@Override
	public List<Board> selectOneReview2() {
		return bd.selectOneReview2(sqlSession);
	}

	@Override
	public int likeResultDelete(int bno2, int mno2) {
		
		return bd.likeResultDelete(sqlSession, bno2, mno2);
	}

	@Override
	public int likeCancel(int bno2, int mno2) {
		
		return bd.likeCancel(sqlSession, bno2, mno2);
	}







	//REVIEW 후기 페이지 (SR)
	/*
	 * @Override public int selectReview(Board b) { return
	 * bd.selectReview(sqlSession,b); }
	 */





}
