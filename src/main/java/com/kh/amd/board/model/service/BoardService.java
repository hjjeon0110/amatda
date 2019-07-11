package com.kh.amd.board.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.member.model.vo.Member;

public interface BoardService {




	//질문작성 입력(SR)
	int insertQna(Board b);

	//공지사항 리스트(김선아)
	List<Board> noticeList(PageInfo pi);

	//공지사항 상세보기(김선아)
	Board noticeSelectOne(int bNo);

	//조회수 증가(김선아)
	void increaseViewcnt(int bNo, HttpSession session);

	//공지사항/이벤트 리스트 출력(SR)
	List<Board> selectNotice();

	//공지사항 CATEGORY만의 리스트 출력(SR)
	List<Board> selectNoticeCate();

	//이벤트 CATEGORY만의 리스트 출력(SR)
	List<Board> selectEventCate();

	//공지사항/이벤트 게시물 상세페이지(SR)
	Board selectOneNotice(int bNo);

	//공지사항 카테고리 게시물 상세페이지(SR)
	Board selectOneNoticeCate(int bNo);

	//FAQ게시판 아코디언 리스트 출력(SR)
	List<Board> selectFaq();

	//후기리뷰 출력(SR)
	List<Board> selectReview();

	//후기리뷰 입력(SR)
	int insertReview(Board b);

	//리뷰게시판 상세페이지 (SR)
	Object selectOneReview(int bNo);

	//★이벤트 카테고리 게시물 상세페이지(SR)
	Board selectOneEventCate(int bNo);

	//공지사항 글 등록(김선아)
	void insertNotice(Board board);

	//공지사항 삭제(김선아)
	void deleteNotice(int bNo);

	//공지사항 수정(김선아)
	int updateNotice(Board board);

	//자주 묻는 질문 리스트(김선아)
	List<Board> FAQList(PageInfo pi);

	//자주 묻는 질문 상세보기(김선아)
	Board FAQSelectOne(int bNo);

	//자주 묻는 질문 글 등록(김선아)
	void insertFAQ(Board board);

	//자주 묻는 질문 글 삭제(김선아)
	void deleteFAQ(int bNo);

	//자주 묻는 질문 수정(김선아)
	int updateFAQ(Board board);

	//1:1문의 리스트(김선아)
	List<Board> QNAList(PageInfo pi);

	//1:1문의 상세보기(김선아)
	Object QNASelectOne(int bNo);

	//1:1문의 글 삭제(김선아)
	void deleteQNA(int bNo);







	//공지사항/이벤트 게시판 페이징 (SR)
	//List<Map<String, Object>> selectBoardList(Criteria cri);

	//공지사항/이벤트 게시판 검색  !! (SR)
	//List<Board> searchNotice(String searchCon);
	List<Board> searchResult(Board b);

	//FAQ 게시판 카테고리별 클릭시 출력(AJAX)(SR)
	List<Board> cateResult(String bmCate);
	
	// FAQ 게시판 총 제목&내용으로 검색(SR)
	List<Board> searchResultFaq(Board b);

	////리뷰게시판 BNO조회(SR)
	int selectReviewBno();
	
	//리뷰게시판 이미지 insert(SR)
	void insertReviewImg(int bno,String mno,String filePath,String originalFilename,String changeName,String ext,String bTitle,String bContent);
	
	




}
