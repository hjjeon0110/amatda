package com.kh.amd.diary.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.diary.model.vo.Diary;

@Repository
public class DiaryDaoImpl implements DiaryDao{

	
	//다이어리 내용 insert
	@Override
	public void insertDiary(SqlSessionTemplate sqlSession, Diary d, String mno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("d", d);
		map.put("mno", mno);
		
		sqlSession.insert("Diary.insertDiary", map);
	}
	
	
	//board bno curval
		@Override
		public int selectDiaryBno(SqlSessionTemplate sqlSession) {
			return sqlSession.selectOne("Diary.selectDiaryBno");
			
		}
		

	//다이어리 이미지 insert
	@Override
	public void insertDiaryImg(SqlSessionTemplate sqlSession, int bno, String mno, String filePath, String originalFilename,
			String changeName, String ext) {
		
		System.out.println("디에이오 bno : " + bno);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("bno", bno);
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		map.put("ext", ext);
		
		sqlSession.insert("Diary.insertDiaryImg", map);
		
	}


	//다이어리 list
	@Override
	public List<Diary> diaryList(SqlSessionTemplate sqlSession, int mno, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
	      
	    RowBounds rowBounds = new RowBounds(offset, pi.getLimit());   
		
		System.out.println("dao mno: " + mno + pi);
		
		List<Diary> list = null;
		
		list = (List) sqlSession.selectList("Diary.diaryList", mno, rowBounds);
		System.out.println("list를 받아오나? " + list);
		
		return list;
		
		/* return sqlSession.selectList("Diary.diaryList", mno, pi); */
	}

	
	//다이어리 상세보기
	@Override
	public Diary selectDetailDiary(SqlSessionTemplate sqlSession, int bno) {
		
		return sqlSession.selectOne("Diary.selectDetailDiary", bno);
	}

	
	//다이어리 이미지 상세
	@Override
	public Attachment selectAttachmentOne(SqlSessionTemplate sqlSession, int bno) {
		
		return sqlSession.selectOne("Diary.selectAttachmentOne",bno);
	}

	

	//diary update
	@Override
	public void updateDiary(SqlSessionTemplate sqlSession, Diary d, String mno, String bno) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("d", d);
		map.put("mno", mno);
		map.put("bno", bno);
		sqlSession.update("Diary.updateDiary", map);
		
		System.out.println("mno나오냐: " + mno);
		System.out.println("bno나오냐: " + bno);
	}

	
	//diary Img update
	@Override
	public void updateDiaryImg(SqlSessionTemplate sqlSession, String bno, String mno, String filePath,
			String originalFilename, String changeName, String ext) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("bno", bno);
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		map.put("ext", ext);
		
		sqlSession.update("Diary.updateDiaryImg", map);
		
	}


	//갤러리 리스트
	@Override
	public List<Object> selectGallery(SqlSessionTemplate sqlSession, Attachment a) {
		
//		ArrayList<Attachment> list = null;
//		
//		list = (ArrayList) sqlSession.selectList("Diary.selectGallery",a);
		
//		return list;
		return sqlSession.selectList("Diary.selectGallery", a);
	}


	//댓글 select
	@Override
	public List<Reply> replyList(SqlSessionTemplate sqlSession, int bno) {
		
		return sqlSession.selectList("Diary.replyList", bno);
	}


	//댓글 insert
	@Override
	public int insertReply(SqlSessionTemplate sqlSession, Reply rep) {
		
		/*
		 * HashMap<String, Object> map = new HashMap<String, Object>(); map.put("bno",
		 * bno); map.put("mno", mno); map.put("reply", reply);
		 */
	
		System.out.println("가만있어보자: " + rep);
		return sqlSession.insert("Diary.insertReply",rep);
		
	}


	//페이징
	@Override
	public int diaryListCount(SqlSessionTemplate sqlSession, int mno) {
		
		return sqlSession.selectOne("Diary.selectDiaryListCount", mno);
	}


	//다이어리 delete
	@Override
	public int deleteDiary(SqlSessionTemplate sqlSession, String bno) {
		
		return sqlSession.update("Diary.deleteDiary", bno);
	}


	//갤러리 delete
	@Override
	public int deleteGallery(SqlSessionTemplate sqlSession, String bno) {
		
		return sqlSession.update("Diary.deleteGallery", bno);
	}
	


}
