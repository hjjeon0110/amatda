package com.kh.amd.board.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.member.model.vo.Member;

@Repository
public class BoardDaoImpl implements BoardDao {

	//사용자페이지 리뷰후기 게시판 입력(SR)
	@Override
	public int insertReview(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("Board.insertReview",b);
	}

	//사용자페이지 Q&A 질문게시판 입력(SR)
	@Override
	public int insertQna(SqlSessionTemplate sqlSession, Board b) {
			return sqlSession.insert("Board.insertQna", b);
	}

	//공지사항 리스트(김선아)
	@Override
	public List<Board> noticeList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();	      
	    RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
	    
	    List<Board> list = null;
	    list = (List)sqlSession.selectList("Board.noticeList", null, rowBounds);
		System.out.println("리스트 : " + list);
		
		return list;
	    //return sqlSession.selectList("Board.noticeList", pi);
	}
	
	//공지사항 상세보기(김선아)
	@Override
	public Board noticeSelectOne(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.noticeSelectOne", bNo);
	}

	//공지사항 조회수 증가(김선아)
	@Override
	public void increaseViewcnt(SqlSessionTemplate sqlSession, int bNo) {
		sqlSession.update("Board.increaseViewcnt", bNo);
	}

	//공지사항 글등록(김선아)
	@Override
	public void insertNotice(SqlSessionTemplate sqlSession, Board board) {
		sqlSession.insert("Board.insertNotice", board);		
	}

	//공지사항 삭제(김선아)
	@Override
	public void deleteNotice(SqlSessionTemplate sqlSession, int bNo) {
		sqlSession.delete("Board.delete", bNo);	
	}

	//공지사항 수정(김선아)
	@Override
	public int updateNotice(SqlSessionTemplate sqlSession, Board board) {
		return sqlSession.update("Board.updateNotice", board);
	}

	//자주묻는질문 리스트(김선아)
	@Override
	public List<Board> FAQlist(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();	      
	    RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
	    
	    List<Board> list = null;
	    list = (List)sqlSession.selectList("Board.FAQlist", null, rowBounds);
		System.out.println("리스트 : " + list);
		
		return list;
	    
		//return sqlSession.selectList("Board.FAQlist", pi);
	}
	


	//자주묻는질문 상세보기(김선아)
	@Override
	public Board FAQSelectOne(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.FAQSelectOne", bNo);
	}
	

	//공지사항/이벤트 리스트 출력(SR)
	@Override
	public List<Board> selectNotice(SqlSessionTemplate sqlSession,PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
	     RowBounds rowBounds = new RowBounds(offset, pi.getLimit()); //알려고 하지마라.
		
	     List<Board> list=null;
	     
		list = (List) sqlSession.selectList("Board.selectNotice", null, rowBounds);
		System.out.println("list : " + list);
		
		return list;
	}

	//공지사항 CATEGORY만의 리스트 출력(SR)
	@Override
	public List<Board> selectNoticeCate(SqlSessionTemplate sqlSession,PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit()); //알려고 하지마라.
		List<Board> list=null;
		list = (List) sqlSession.selectList("Board.selectNoticeCate",null,rowBounds);
		return list;
	}

	//이벤트 CATEGORY만의 리스트 출력(SR)
	@Override
	public List<Board> selectEventCate(SqlSessionTemplate sqlSession,PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit()); //알려고 하지마라.
		List<Board> list=null;
		list = (List) sqlSession.selectList("Board.selectEventCate",null,rowBounds);
		return list;
	}

	//공지사항/이벤트 게시물 상세페이지(SR)
	@Override
	public Board selectOneNotice(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.selectOneNotice", bNo);
	}
	
	//공지사항 카테고리 게시물 상세페이지(SR)
	@Override
	public Board selectOneNoticeCate(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.selectOneNoticeCate", bNo);
	}

	//FAQ게시판 아코디언 리스트 출력(SR)
	@Override
	public List<Board> selectFaq(SqlSessionTemplate sqlSession) {
		List<Board> list = (List) sqlSession.selectList("Board.selectFaq");
		return sqlSession.selectList("Board.selectFaq");
	
	}

	//후기리뷰 게시판 리스트 출력(SR)
	//@Override
	//public List<Board> selectReview(SqlSessionTemplate sqlSession,Attachment a) {
	//	List<Board> list = (List) sqlSession.selectList("Board.selectReview",a);
	//	return list;
	//}

	//리뷰게시판 상세페이지 (SR)
	/*
	 * @Override public Object selectOneReview(SqlSessionTemplate sqlSession,int
	 * bNo) { return sqlSession.selectOne("Board.selectOneReview",bNo); }
	 */

	//이벤트 카테고리 게시물 상세페이지(SR)
	@Override
	public Board selectOneEventCate(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.selectOneEventCate", bNo);
	}

	//자주묻는질문 글 등록(김선아)
	@Override
	public void insertFAQ(SqlSessionTemplate sqlSession, Board board) {
		sqlSession.insert("Board.insertFAQ", board);	
	}

	//자주묻는질문 글 삭제(김선아)
	@Override
	public void deleteFAQ(SqlSessionTemplate sqlSession, int bNo) {
		sqlSession.delete("Board.delete", bNo);
	}

	//자주묻는질문 글 수정(김선아)
	@Override
	public int updateFAQ(SqlSessionTemplate sqlSession, Board board) {
		return sqlSession.update("Board.updateFAQ", board);
	}

	//1:1문의 리스트(김선아)
	@Override
	public List<Board> QNAlist(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();	      
	    RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
	    
	    List<Board> list = null;
	    
	    list = (List)sqlSession.selectList("Board.QNAlist", null, rowBounds);
		System.out.println("리스트 : " + list);
		
		return list;
	    
		//return sqlSession.selectList("Board.QNAlist", pi);
	}
	
	
	//1:1 상세보기(김선아)
	@Override
	public Object QNASelectOne(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.QNASelectOne", bNo);
	}

	//1:1 글 삭제(김선아)
	@Override
	public void deleteQNA(SqlSessionTemplate sqlSession, int bNo) {
		sqlSession.delete("Board.delete", bNo);
	}

	

	//공지사항/이벤트 게시판 검색  !!! (SR)
	@Override
	public List<Board> searchResult(SqlSessionTemplate sqlSession, Board b) {
		
		return sqlSession.selectList("Board.searchResult", b);
	}

	//FAQ 게시판 카테고리별 클릭시 출력(AJAX)(SR)
	@Override
	public List<Board> cateResult(SqlSessionTemplate sqlSession, String bmCate) {
		return sqlSession.selectList("Board.cateResult", bmCate);
	}

	// FAQ 게시판 총 제목&내용으로 검색(SR)
	@Override
	public List<Board> searchResultFaq(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectList("Board.searchResultFaq",b);
	}

	//리뷰게시판 BNO조회(SR)
	@Override
	public int selectReviewBno(SqlSessionTemplate sqlSession) {
		System.out.println("selectReviewBno가 daoimpl에 오는가?");
		return sqlSession.selectOne("Board.selectReviewBno");
	}

	//리뷰게시판 이미지 insert(SR)
	/*
	 * @Override public void insertReviewImg(SqlSessionTemplate sqlSession, int bno,
	 * String mno, String filePath, String originalFilename, String changeName,
	 * String ext, String bTitle, String bContent) {
	 * 
	 * HashMap<String,Object> map = new HashMap<String,Object>(); map.put("bno",
	 * bno); map.put("mno", mno); map.put("filePath", filePath);
	 * map.put("originalFilename", originalFilename); map.put("changeName",
	 * changeName); map.put("ext", ext); map.put("bTitle", bTitle);
	 * map.put("bContent", bContent);
	 * 
	 * sqlSession.insert("Board.insertImg",map);
	 * 
	 * System.out.println("daoimpl에서의 map이나오려나?" + map);
	 * 
	 * }
	 */

	//공지사항&이벤트 페이지 페이징(SR)
	@Override
	public int getSearchNoticeListCount(SqlSessionTemplate sqlSession) {
		//int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
	    //RowBounds rowBounds = new RowBounds(offset, pi.getLimit());   
		return sqlSession.selectOne("Board.getSearchNoticeListCount");
		
	}
	//공지사항 CATEGORY만의 리스트 페이징(SR)	
	@Override
	public int getSearchNoticeCateListCount(SqlSessionTemplate sqlSession) {
		//int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
	    //RowBounds rowBounds = new RowBounds(offset, pi.getLimit());   
		return sqlSession.selectOne("Board.getSearchNoticeCateListCount");
	}

	//이벤트 CATEGORY만의 리스트 페이징(SR)
	@Override
	public int getSearchEventCateListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("Board.getSearchEventCateListCount");
	}

	// 후기 이미지 insert
	@Override
	public void insertReviewImg(SqlSessionTemplate sqlSession, String mno, String filePath,
			String originalFilename, String changeName, String ext,int bno) {
		
		//int bno = b.getbNo();
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		map.put("mno", mno);
		map.put("bno", bno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		map.put("ext", ext);
		
		System.out.println(map);
		
		sqlSession.insert("Board.insertReviewImg", map);
		
	}

	//리뷰게시판 상세페이지 1 (SR)
	@Override
	public Board selectOneReview(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.selectOneReview2",bNo);
	}

	//리뷰게시판 상세페이지 2(SR)
	@Override
	public Attachment selectOneAttachment(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.selectOneAttachment",bNo);
	}

	@Override
	public List<Board> selectReview2(SqlSessionTemplate sqlSession, Attachment a) {
		 
		return sqlSession.selectList("Board.selectReview2",a);
	}

	 //리뷰 상세페이지 댓글입력 (SR)
	@Override
	public int insertReply(SqlSessionTemplate sqlSession, Reply rep) {
		return sqlSession.insert("Board.insertReply",rep);
	}

	//리뷰게시판 상세페이지 댓글 목록 SELECT (SR)
	@Override
	public List<Reply> replyList(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectList("Board.replyList",bNo);
	}

	 //조회수 카운트 (SR)
	@Override
	public int updateCount(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.update("Board.updateCount",bNo);
	}

	@Override
	public int likeCount(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("Board.likeCount", b);
	}

	@Override
	public int selectLikeCount(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectOne("Board.selectLikeCount",b);
	}

	@Override
	public int likeWho(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("Board.likeWho",b);
	}

	@Override
	public int likeClick(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectOne("Board.likeClick",b);
	}

	@Override
	public List<Board> bestReviewSelect(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("Board.bestReviewSelect");
	}

	@Override
	public List<Board> selectReview2(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("Board.selectReview2");
	}

	@Override
	public List<Board> selectOneReview2(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("Board.selectOneReview2");
	}

	@Override
	public int likeResultDelete(SqlSessionTemplate sqlSession, int bno2, int mno2) {
		Board board = new Board();
		board.setbNo(bno2);
		board.setbWriter(mno2);
		
		return sqlSession.delete("Board.likeResultDelete", board);
	}

	@Override
	public int likeCancel(SqlSessionTemplate sqlSession, int bno2, int mno2) {
		Board board = new Board();
		board.setbNo(bno2);
		board.setbWriter(mno2);
		
		return sqlSession.update("Board.likeCancel", board);
	}

	




	
}
