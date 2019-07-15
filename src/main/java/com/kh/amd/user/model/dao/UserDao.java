package com.kh.amd.user.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;
import com.kh.amd.trainer.model.vo.Profile;

public interface UserDao {
	

	// 나의 문의 내역 select (우리나)
	List<Board> selectMyQnaList(SqlSessionTemplate sqlSession, int mno2, PageInfo pi);
	
	// 내글관리(QnaDetail) select (우리나)
	Board selectMyQnaDetail(SqlSessionTemplate sqlSession, int bno2);
	
	// 내글관리(QnaReply) select (우리나)
	Reply selectQnaReply(SqlSessionTemplate sqlSession, int bno2);
  
	List<Board> selectMyBoardList(SqlSessionTemplate sqlSession, int mno2, PageInfo pi);

	Board selectOneReview(SqlSessionTemplate sqlSession, int bno2);

	Attachment selectOneAttachment(SqlSessionTemplate sqlSession, int bno2);

	int updateMyReview(SqlSessionTemplate sqlSession, Board b);

	int updateMyReviewAttachment(SqlSessionTemplate sqlSession, Attachment a);

	int deleteMyReview(SqlSessionTemplate sqlSession, int bno2);

	int qnaListCount(SqlSessionTemplate sqlSession, int mno2);
	
	int reviewListCount(SqlSessionTemplate sqlSession, int mno2);
	
	
	
	
	
	// 효정 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	// 1. 맞춤 트레이너 리스트 조회 (전효정)
	List<Member> selectRecommendTrainerList(SqlSessionTemplate sqlSession, int mno, String hopeAge, String hopeGender, String hopePeriod, String hopeExercise, String[] hopeExerciseArr);

	// 2. 설문조사/키워드 조회 (전효정)
	Survey selectSurvey(SqlSessionTemplate sqlSession, int mno);

	// 3. 셀프 트레이너 검색 리스트 조회 (전효정)
	List<Member> selectSearchTrainerList(SqlSessionTemplate sqlSession, String mno, String searchServiceKeyword, String searchTrainerAge, String searchTrainerGender, String searchTrainerName);

	// 4. 프로필 이미지 존재 여부 확인 메소드 (전효정)
	Attachment checkProfileImg(SqlSessionTemplate sqlSession, String tno);

	// 5. 프로필 작성 여부 확인 (전효정)
	Profile checkProfile(SqlSessionTemplate sqlSession, String tno);

	// 6. 미디어 존재 여부 확인 메소드 (전효정)
	List<Attachment> checkMediaAttachment(SqlSessionTemplate sqlSession, String tno);

	// 7. 자격증 존재 여부 확인 메소드 (전효정)
	List<Attachment> checkCertificationAttachment(SqlSessionTemplate sqlSession, String tno);

	// 8. 마이트레이너 insert (전효정)
	void insertMyTrainer(SqlSessionTemplate sqlSession, String uno, String tno);

	// 9. 마이트레이너 리스트 조회 (전효정)
	List<Member> selectMyTrainerList(SqlSessionTemplate sqlSession, String mno);

	// 10. 마이트레이너 존재 여부 확인 메소드 (전효정)
	Mprocess selectOneMyTrainer(SqlSessionTemplate sqlSession, String mno, String tno);

	// 11. 마이트레이너 delete (전효정)
	void deleteMyTrainer(SqlSessionTemplate sqlSession, String uno, String tno);
	
	// 12. 매칭 시작 트레이너 조회 (전효정)
	Member selectOneMatchingTrainer(SqlSessionTemplate sqlSession, String tno);
	
	// 13. 다이어트 정보 보내기 - 회원 설문조사 selectOne (전효정)
	Survey selectOneSurvey(SqlSessionTemplate sqlSession, String mno);
  
  // 14. 내 정보 보낸 후 mprocess update (전효정)
	void updateMprocess1(SqlSessionTemplate sqlSession, String mno, String tno);


	


	
}
