package com.kh.amd.board.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.member.model.vo.Member;


public interface BoardDao {

	//후기 입력 페이지 (SR)
	int insertReview(SqlSessionTemplate sqlSession, Board b);

	//질문 작성 페이지(SR)
	int insertQna(SqlSessionTemplate sqlSession, Board b);


	//공지사항 리스트(김선아)
	List<Board> noticeList(SqlSessionTemplate sqlSession, PageInfo pi);

	//공지사항 상세보기(김선아)
	Board noticeSelectOne(SqlSessionTemplate sqlSession, int bNo);

	//조회수증가(김선아)
	void increaseViewcnt(SqlSessionTemplate sqlSession, int bNo);
	
	
	//공지사항/이벤트 리스트 출력(SR)
	List<Board> selectNotice(SqlSessionTemplate sqlSession, PageInfo pi);

	 //공지사항 CATEGORY만의 리스트 출력(SR)
	List<Board> selectNoticeCate(SqlSessionTemplate sqlSession, PageInfo pi);

	//이벤트 CATEGORY만의 리스트 출력(SR)
	List<Board> selectEventCate(SqlSessionTemplate sqlSession, PageInfo pi);

	//공지사항/이벤트 게시물 상세페이지(SR)
	Board selectOneNotice(SqlSessionTemplate sqlSession, int bNo);

	//FAQ게시판 아코디언 리스트 출력(SR)
	List<Board> selectFaq(SqlSessionTemplate sqlSession);

	//후기리뷰 게시판 리스트 출력(SR)
	//List<Board> selectReview(SqlSessionTemplate sqlSession, Attachment a);

	//리뷰게시판 상세페이지 (SR)
	//Object selectOneReview(SqlSessionTemplate sqlSession, int bNo);

	

	//공지사항/이벤트 게시판 페이징 (SR)
	//List<Map<String, Object>> selectBoardList(Criteria cri);

	//공지사항/이벤트 게시판 검색 !!! (SR)
	//List<Board> searchNotice(SqlSessionTemplate sqlSession,String searchCon);


	//공지사항 글등록(김선아)
	void insertNotice(SqlSessionTemplate sqlSession, Board board);

	//공지사항 삭제(김선아)
	void deleteNotice(SqlSessionTemplate sqlSession, int bNo);

	//공지사항 수정(김선아)
	int updateNotice(SqlSessionTemplate sqlSession, Board board);

	//자주묻는질문 리스트(김선아)
	List<Board> FAQlist(SqlSessionTemplate sqlSession, PageInfo pi);

	//자주묻는질문 상세보기(김선아)
	Board FAQSelectOne(SqlSessionTemplate sqlSession, int bNo);

	//공지사항 카테고리 게시물 상세페이지(SR)
	Board selectOneNoticeCate(SqlSessionTemplate sqlSession, int bNo);

	//이벤트 카테고리 게시물 상세페이지(SR)
	Board selectOneEventCate(SqlSessionTemplate sqlSession, int bNo);

	//자주 묻는 질문 글 등록(김선아)
	void insertFAQ(SqlSessionTemplate sqlSession, Board board);

	//자주 묻는 질문 글 삭제(김선아)
	void deleteFAQ(SqlSessionTemplate sqlSession, int bNo);

	//자주 묻는 질문 글 수정(김선아)
	int updateFAQ(SqlSessionTemplate sqlSession, Board board);
	
	//1:1문의 리스트(김선아)
	List<Board> QNAlist(SqlSessionTemplate sqlSession, PageInfo pi);

	//1:1 상세보기(김선아)
	Object QNASelectOne(SqlSessionTemplate sqlSession, int bNo);

	//1:1 글 삭제(김선아)
	void deleteQNA(SqlSessionTemplate sqlSession, int bNo);

	//공지사항/이벤트 게시판 검색 !!! (SR)
	List<Board> searchResult(SqlSessionTemplate sqlSession, Board b);

	//FAQ 게시판 카테고리별 클릭시 출력(AJAX) (SR)
	List<Board> cateResult(SqlSessionTemplate sqlSession, String bmCate);

	// FAQ 게시판 총 제목&내용으로 검색(SR)
	List<Board> searchResultFaq(SqlSessionTemplate sqlSession, Board b);

	//리뷰게시판 BNO조회(SR)
	int selectReviewBno(SqlSessionTemplate sqlSession);

	//리뷰게시판 이미지 insert(SR)
	/*
	 * void insertReviewImg(SqlSessionTemplate sqlSession, int bno, String mno,
	 * String filePath, String originalFilename, String changeName, String ext,
	 * String bTitle, String bContent);
	 */

	//공지사항&이벤트 페이지 페이징(SR)
	int getSearchNoticeListCount(SqlSessionTemplate sqlSession);
	
	//공지사항 CATEGORY만의 리스트 페이징(SR)	
	int getSearchNoticeCateListCount(SqlSessionTemplate sqlSession);

	//이벤트 CATEGORY만의 리스트 페이징(SR)
	int getSearchEventCateListCount(SqlSessionTemplate sqlSession);

	// 후기 이미지 insert
	void insertReviewImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename,
			String changeName, String ext,int bno);

	//리뷰게시판 상세페이지 1(SR)
	Board selectOneReview(SqlSessionTemplate sqlSession, int bNo);

	//리뷰게시판 상세페이지 2(SR)
	Attachment selectOneAttachment(SqlSessionTemplate sqlSession, int bNo);

	List<Board> selectReview2(SqlSessionTemplate sqlSession, Attachment a);

	 //리뷰 상세페이지 댓글입력(SR)
	int insertReply(SqlSessionTemplate sqlSession, Reply rep);

	//리뷰게시판 상세페이지 댓글 목록 SELECT(SR)
	List<Reply> replyList(SqlSessionTemplate sqlSession, int bNo);

	 //조회수 카운트 (SR)
	int updateCount(SqlSessionTemplate sqlSession, int bNo);

	int likeCount(SqlSessionTemplate sqlSession, Board b);

	int selectLikeCount(SqlSessionTemplate sqlSession, Board b);

	int likeWho(SqlSessionTemplate sqlSession, Board b);

	int likeClick(SqlSessionTemplate sqlSession, Board b);

	//int insertQna(SqlSessionTemplate sqlSession, Board b, String mno);


	/* int selectReview(SqlSessionTemplate sqlSession, Board b); */



}
