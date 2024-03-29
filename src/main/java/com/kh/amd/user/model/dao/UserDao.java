package com.kh.amd.user.model.dao;

import java.util.HashMap;
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
import com.kh.amd.trainer.model.vo.TrainerReview;

public interface UserDao {
	
	List<Board> selectMyQnaList(SqlSessionTemplate sqlSession, int mno2, PageInfo pi);
	
	Board selectMyQnaDetail(SqlSessionTemplate sqlSession, int bno2);
	
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

	// 15. 매칭 요청 후  mprocess update (전효정)
	void updateMprocess3(SqlSessionTemplate sqlSession, String mno, String tno);
	
	// 16. 입금 확인 요청 후  mprocess update (전효정)
	void updateMprocess4(SqlSessionTemplate sqlSession, String mno, String tno);
	
	// 17. 받은 요청 내역 조회 (전효정)
	List<Member> selectRequestsReceivedList(SqlSessionTemplate sqlSession, String mno);
	
	// 18. 받은 견적서 확인 후 매칭 수락 시 mprocess update (전효정)
	void updateMprocessSend1(SqlSessionTemplate sqlSession, String mno, String tno);
	
	
	
	
	
	
	
	// 1. 리뷰작성하기 폼으로 회원정보 보여주기(김진환)
	Member trainerReviewForm(SqlSessionTemplate sqlSession, int tno);
	
	// 2. 트레이너 리뷰 작성 insert(김진환)
	int insertTrainerReview(SqlSessionTemplate sqlSession, String title, String starRating, String content, int tno, int uno, String name);

	// 3. 트레이너에게 리뷰작성했는지 체크(김진환)
	int trainerReviewCheck(SqlSessionTemplate sqlSession, int uno, int tno);

	// 4. 트레이너 리뷰를 유저에게 보여주기(김진환)
	List<TrainerReview> trainerReviewShow(SqlSessionTemplate sqlSession, String tno, String mno);
	
	// 5. 트레이너 평균 평점 보여주기(김진환)
	double reviewRating(SqlSessionTemplate sqlSession, String tno);
	
	// 6. 트레이너 리뷰 갯수 보여주기임 (김진환)
	int reviewCount(SqlSessionTemplate sqlSession, String tno);

	// 7. 마이 트레이너 등록 갯수 리턴(김진환)
	int myTrainerCount(SqlSessionTemplate sqlSession, String tno);



	


	
}
