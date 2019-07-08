package com.kh.amd.diary.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.attachment.model.vo.Attachment;
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
	public List<Diary> diaryList(SqlSessionTemplate sqlSession, int mno) {
		
		System.out.println("dao mno: " + mno);
		
		return sqlSession.selectList("Diary.diaryList", mno);
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
	public void insertReply(SqlSessionTemplate sqlSession, Reply reply) {
		sqlSession.insert("Diary.insertReply",reply);
		
	}
	
	//gallery
//	@Override
//	public List<Diary> galleryList(SqlSessionTemplate sqlSession, int mno) {
//		
//		
//		return sqlSession.selectList("Diary.galleryList", mno);
//	}


	
	


}
