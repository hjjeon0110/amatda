package com.kh.amd.user.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;
import com.kh.amd.trainer.model.vo.Payment;
import com.kh.amd.trainer.model.vo.Profile;
import com.kh.amd.trainer.model.vo.TrainerReview;

@Repository
public class UserDaoImpl implements UserDao {
	

	// 나의 문의 내역 select (우리나)
	@Override
	public List<Board> selectMyQnaList(SqlSessionTemplate sqlSession, int mno2, PageInfo pi) {
		System.out.println("dao에서 mno2: " + mno2);
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<Board> list = null;
		list = (List) sqlSession.selectList("User.selectMyQnaList", mno2, rowBounds);
		
		return list;
	}

	//13. 내글관리(QnaDetail) select (우리나)
	@Override
	public Board selectMyQnaDetail(SqlSessionTemplate sqlSession, int bno2) {
		return sqlSession.selectOne("User.selectMyQnaDetail", bno2);
	}

	//14. 내글관리(QnaReply) select (우리나)

	@Override
	public List<Board> selectMyBoardList(SqlSessionTemplate sqlSession, int mno2,PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<Board> list = null;
		list = (List) sqlSession.selectList("User.selectMyBoardList",mno2,rowBounds);
		return list;
	}
	
	
	@Override
	public Board selectOneReview(SqlSessionTemplate sqlSession, int bno2) {
		return sqlSession.selectOne("User.selectOneReview", bno2);
	}


	@Override
	public Attachment selectOneAttachment(SqlSessionTemplate sqlSession, int bno2) {
		return sqlSession.selectOne("User.selectOneAttachment", bno2);
	}


	@Override
	public int updateMyReview(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("User.updateMyReview", b);
	}


	@Override
	public int updateMyReviewAttachment(SqlSessionTemplate sqlSession, Attachment a) {
		return sqlSession.update("User.updateMyReviewAttachment", a);
	}


	@Override
	public int deleteMyReview(SqlSessionTemplate sqlSession, int bno2) {
		return sqlSession.delete("User.deleteMyReview", bno2);
	}

	// 내글관리(QnaReply) select (우리나)
	@Override
	public Reply selectQnaReply(SqlSessionTemplate sqlSession, int bno2) {
		return sqlSession.selectOne("User.selectQnaReply", bno2);
	}

	@Override
	public int reviewListCount(SqlSessionTemplate sqlSession, int mno2) {
		return sqlSession.selectOne("User.reviewListCount", mno2);
	}

	@Override
	public int qnaListCount(SqlSessionTemplate sqlSession, int mno2) {
		return sqlSession.selectOne("User.qnaListCount", mno2);
				
	}
		
		
	// 효정 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
	// 1. 맞춤 트레이너 리스트 조회 (전효정)
	@Override
	public List<Member> selectRecommendTrainerList(SqlSessionTemplate sqlSession, int mno, String hopeAge, String hopeGender, String hopePeriod, String hopeExercise, String[] hopeExerciseArr) {
		
		int num = 0;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("hopeAge", hopeAge);
		map.put("hopeGender", hopeGender);
		map.put("hopePeriod", hopePeriod);
		map.put("hopeExercise", hopeExercise);
		map.put("hopeExerciseArr", hopeExerciseArr);
		
		for(int i = 0; i < hopeExerciseArr.length; i++) {
			num++;
			String key = "hopeExercise" + String.valueOf(num);
			map.put(key, hopeExerciseArr[i]);
		}
				
		return sqlSession.selectList("User.selectRecommendTrainerList", map);
		
	}

	
	// 2. 설문조사/키워드 조회 (전효정)
	@Override
	public Survey selectSurvey(SqlSessionTemplate sqlSession, int mno) {
		return sqlSession.selectOne("User.selectSurvey", mno);
	}


	// 3. 셀프 트레이너 검색 리스트 조회 (전효정)
	@Override
	public List<Member> selectSearchTrainerList(SqlSessionTemplate sqlSession, String mno, String searchServiceKeyword, String searchTrainerAge, String searchTrainerGender, String searchTrainerName) {
		
		System.out.println(searchServiceKeyword);
		System.out.println(searchTrainerAge);
		System.out.println(searchTrainerGender);
		System.out.println(searchTrainerName);
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("searchServiceKeyword", searchServiceKeyword);
		map.put("searchTrainerAge", searchTrainerAge);
		map.put("searchTrainerGender", searchTrainerGender);
		map.put("searchTrainerName", searchTrainerName);
		
		return sqlSession.selectList("User.selectSearchTrainerList", map);
	}

	
	// 4. 프로필 이미지 존재 여부 확인 메소드 (전효정)
	@Override
	public Attachment checkProfileImg(SqlSessionTemplate sqlSession, String tno) {
		return sqlSession.selectOne("User.checkProfileImg", tno);
	}

	
	// 5. 프로필 작성 여부 확인 (전효정)
	@Override
	public Profile checkProfile(SqlSessionTemplate sqlSession, String tno) {
		return sqlSession.selectOne("User.checkProfile", tno);
	}

	
	// 6. 미디어 존재 여부 확인 메소드 (전효정)
	@Override
	public List<Attachment> checkMediaAttachment(SqlSessionTemplate sqlSession, String tno) {
		return sqlSession.selectList("User.checkMediaAttachment", tno);
	}

	
	// 7. 자격증 존재 여부 확인 메소드 (전효정)
	@Override
	public List<Attachment> checkCertificationAttachment(SqlSessionTemplate sqlSession, String tno) {
		return sqlSession.selectList("User.checkCertificationAttachment", tno);
	}


	// 8. 마이트레이너 insert (전효정)
	@Override
	public void insertMyTrainer(SqlSessionTemplate sqlSession, String uno, String tno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", uno);
		map.put("tno", tno);
		
		sqlSession.insert("User.insertMyTrainer", map);
	}


	// 9. 마이트레이너 리스트 조회 (전효정)
	@Override
	public List<Member> selectMyTrainerList(SqlSessionTemplate sqlSession, String mno) {
		return sqlSession.selectList("User.selectMyTrainer", mno);
	}


	// 10. 마이트레이너 존재 여부 확인 메소드 (전효정)
	@Override
	public Mprocess selectOneMyTrainer(SqlSessionTemplate sqlSession, String mno, String tno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("tno", tno);
		
		return sqlSession.selectOne("User.selectOneMyTrainer", map);
	}


	// 11. 마이트레이너 delete (전효정)
	@Override
	public void deleteMyTrainer(SqlSessionTemplate sqlSession, String uno, String tno) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", uno);
		map.put("tno", tno);
		
		sqlSession.delete("User.deleteMyTrainer", map);
		
	}
	
	
	// 12. 매칭 시작 트레이너 조회 (전효정)
	@Override
	public Member selectOneMatchingTrainer(SqlSessionTemplate sqlSession, String tno) {
		return sqlSession.selectOne("User.selectOneMatchingTrainer", tno);
	}
	
	
	// 13. 다이어트 정보 보내기 - 회원 설문조사 selectOne (전효정)
	@Override
	public Survey selectOneSurvey(SqlSessionTemplate sqlSession, String mno) {
		return sqlSession.selectOne("User.selectOneSurvey", mno);
	}

	
	// 14. 내 정보 보낸 후 mprocess update (전효정)
	@Override
	public void updateMprocess1(SqlSessionTemplate sqlSession, String mno, String tno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("tno", tno);
		
		sqlSession.update("User.updateMprocess1", map);
	}

	
	// 15. 매칭 요청 후  mprocess update (전효정)
	@Override
	public void updateMprocess3(SqlSessionTemplate sqlSession, String mno, String tno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("tno", tno);
		
		sqlSession.update("User.updateMprocess3", map);
	}
	
	
	// 16. 입금 확인 요청 후  mprocess update (전효정)
	@Override
	public void updateMprocess4(SqlSessionTemplate sqlSession, String mno, String tno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("tno", tno);
		
		sqlSession.update("User.updateMprocess4", map);
	}

	
	// 17. 받은 요청 내역 조회 (전효정)
	@Override
	public List<Member> selectRequestsReceivedList(SqlSessionTemplate sqlSession, String mno) {
		return sqlSession.selectList("User.selectRequestsReceivedList", mno);
	}

	
	// 18. 받은 견적서 확인 후 매칭 수락 시 mprocess update (전효정)
	@Override
	public void updateMprocessSend1(SqlSessionTemplate sqlSession, String mno, String tno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("tno", tno);
		
		sqlSession.update("User.updateMprocessSend1", map);
		
	}
		
		
		
		
		
		
		
		
		
		
		
	
	// 16. 리뷰작성하기 폼으로 회원정보 보여주기(김진환)
	@Override
	public Member trainerReviewForm(SqlSessionTemplate sqlSession, int tno) {
		
		
		return sqlSession.selectOne("User.trainerReviewForm", tno);
	}
	
	// 17. 트레이너 리뷰 작성 insert(김진환)
	@Override
	public int insertTrainerReview(SqlSessionTemplate sqlSession, String title, String starRating, String content,
			int tno, int uno, String name) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", uno);
		map.put("tno", tno);
		map.put("starRating", starRating);
		map.put("content", content);
		map.put("title", title);
		map.put("name", name);
		
		return sqlSession.insert("User.insertTrainerReview", map);
	}

	@Override
	public int trainerReviewCheck(SqlSessionTemplate sqlSession, int uno, int tno) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", uno);
		map.put("tno", tno);
		
		return sqlSession.selectOne("User.trainerReviewCheck", map);
	}

	@Override
	public List<TrainerReview> trainerReviewShow(SqlSessionTemplate sqlSession, String tno, String mno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", mno);
		map.put("tno", tno);
		
		
		List<TrainerReview> list = null;
		
		list = (List)sqlSession.selectList("User.trainerReviewShow", map);
		
		return list;
	}

	@Override
	public double reviewRating(SqlSessionTemplate sqlSession, String tno) {
		
		double result = 0;
		if(sqlSession.selectOne("User.reviewRating", tno) != null) {
			
			result = sqlSession.selectOne("User.reviewRating", tno);
		}
		
		return result;
	}
	
	//리뷰보여주기 
	@Override
	public int reviewCount(SqlSessionTemplate sqlSession, String tno) {
		
		int result = 0;
		if(sqlSession.selectOne("User.reviewCount", tno) != null){
			result = sqlSession.selectOne("User.reviewCount", tno);
		}
		
		return result;
	}

	//마이트레이너 갯수 리턴
	@Override
	public int myTrainerCount(SqlSessionTemplate sqlSession, String tno) {
		
		int result = 0;
		
		if(sqlSession.selectOne("User.myTrainerCount", tno) != null) {
			result = sqlSession.selectOne("User.myTrainerCount", tno);
		}
		
		return result;
	}

	
	

	


	




}
