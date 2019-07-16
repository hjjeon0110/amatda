package com.kh.amd.user.model.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;
import com.kh.amd.trainer.model.vo.Profile;
import com.kh.amd.user.model.dao.UserDao;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private UserDao ud;
	

	// 나의 문의 내역 select (우리나)
	@Override
	public List<Board> selectMyQnaList(int mno2, PageInfo pi) {
		return ud.selectMyQnaList(sqlSession,mno2,pi);
	}
	
	// 내글관리(QnaDetail) select (우리나)
	@Override
	public Board selectMyQnaDetail(int bno2) {
		return ud.selectMyQnaDetail(sqlSession,bno2);
	}
	
	// 내글관리(QnaReply) select (우리나)
	@Override
	public Reply selectQnaReply(int bno2) {
		return ud.selectQnaReply(sqlSession,bno2);
	}

	@Override
	public List<Board> selectMyBoardList(int mno2,PageInfo pi) {
		return ud.selectMyBoardList(sqlSession,mno2,pi);
	}
	
	@Override
	public Board selectOneReview(int bno2) {
		return ud.selectOneReview(sqlSession,bno2);
	}
	
	@Override
	public Attachment selectOneAttachment(int bno2) {
		return ud.selectOneAttachment(sqlSession, bno2);
	}

	@Override
	public int updateMyReview(Board b) {
		return ud.updateMyReview(sqlSession, b);
	}

	@Override
	public int updateMyReviewAttachment(Attachment a) {
		return ud.updateMyReviewAttachment(sqlSession, a);
	}

	@Override
	public int deleteMyReview(int bno2) {
		return ud.deleteMyReview(sqlSession,bno2);
	}

	@Override
	public int getQnaListCount(int mno2) {
		return ud.qnaListCount(sqlSession,mno2);
	}
	
	@Override
	public int getReviewListCount(int mno2) {
		return ud.reviewListCount(sqlSession,mno2);
	}
	
	
	// 효정 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	// 1. 맞춤 트레이너 리스트 조회 (전효정)
	@Override
	public List<Member> selectRecommendTrainerList(int mno, String hopeAge, String hopeGender, String hopePeriod, String hopeExercise, String[] hopeExerciseArr) {
		return ud.selectRecommendTrainerList(sqlSession, mno, hopeAge, hopeGender, hopePeriod, hopeExercise, hopeExerciseArr);
	}

	
	// 2. 설문조사/키워드 조회 (전효정)
	@Override
	public Survey selectSurvey(int mno) {
		return ud.selectSurvey(sqlSession, mno);
	}

	
	// 3. 셀프 트레이너 검색 리스트 조회 (전효정)
	@Override
	public List<Member> selectSearchTrainerList(String mno, String searchServiceKeyword, String searchTrainerAge, String searchTrainerGender, String searchTrainerName) {
		return ud.selectSearchTrainerList(sqlSession, mno, searchServiceKeyword, searchTrainerAge, searchTrainerGender, searchTrainerName);
	}

	
	// 4. 프로필 이미지 존재 여부 확인 메소드 (전효정)
	@Override
	public Attachment checkProfileImg(String tno) {
		return ud.checkProfileImg(sqlSession, tno);
	}

	
	// 5. 프로필 작성 여부 확인 (전효정)
	@Override
	public Profile checkProfile(String tno) {
		return ud.checkProfile(sqlSession, tno);
	}

	
	// 6. 미디어 존재 여부 확인 메소드 (전효정)
	@Override
	public List<Attachment> checkMediaAttachment(String tno) {
		return ud.checkMediaAttachment(sqlSession, tno);
	}

	
	// 7. 자격증 존재 여부 확인 메소드 (전효정)
	@Override
	public List<Attachment> checkCertificationAttachment(String tno) {
		return ud.checkCertificationAttachment(sqlSession, tno);
	}

	
	// 8. 마이트레이너 insert (전효정)
	@Override
	public void insertMyTrainer(String uno, String tno) {
		ud.insertMyTrainer(sqlSession, uno, tno);
	}


	// 9. 마이트레이너 리스트 조회 (전효정)
	@Override
	public List<Member> selectMyTrainerList(String mno) {
		return ud.selectMyTrainerList(sqlSession, mno);
	}


	// 10. 마이트레이너 존재 여부 확인 메소드 (전효정)
	@Override
	public Mprocess selectOneMyTrainer(String mno, String tno) {
		return ud.selectOneMyTrainer(sqlSession, mno, tno);
	}


	// 11. 마이트레이너 delete (전효정)
	@Override
	public void deleteMyTrainer(String uno, String tno) {
		ud.deleteMyTrainer(sqlSession, uno, tno);
	}
	
	
	// 12. 매칭 시작 트레이너 조회 (전효정)
	@Override
	public Member selectOneMatchingTrainer(String tno) {
		return ud.selectOneMatchingTrainer(sqlSession, tno);
	}
	
	
	// 13. 다이어트 정보 보내기 - 회원 설문조사 selectOne (전효정)
	@Override
	public Survey selectOneSurvey(String mno) {
		return ud.selectOneSurvey(sqlSession, mno);
	}
	
  
	// 14. 내 정보 보낸 후 mprocess update (전효정)
	@Override
	public void updateMprocess1(String mno, String tno) {
		ud.updateMprocess1(sqlSession, mno, tno);
	}
	
	
	// 15. 매칭 요청 후  mprocess update (전효정)
	@Override
	public void updateMprocess3(String mno, String tno) {
		ud.updateMprocess3(sqlSession, mno, tno);
	}
	
	// 16. 리뷰작성하기 폼으로 회원정보 보여주기(김진환)
	@Override
	public Member trainerReviewForm(int tno) {
		
		return ud.trainerReviewForm(sqlSession, tno);
	}
	
	// 17. 트레이너 리뷰 작성 insert(김진환)
	@Override
	public int insertTrainerReview(String title, String starRating, String content, int tno, int uno) {
	
		return ud.insertTrainerReview(sqlSession, title, starRating, content, tno, uno);
	}

	// 18. 트레이너에게 리뷰를 작성했었는지 체크(김진환)
	@Override
	public int trainerReviewCheck(int uno, int tno) {
		
		return ud.trainerReviewCheck(sqlSession, uno, tno);
	}

	// 19. 트레이너 리뷰 유저에게 보여주기(김진환)
	@Override
	public HashMap<String, Object> trainerReviewShow(String tno, String mno) {
		
		return ud.trainerReviewShow(sqlSession, tno, mno);
	}
	
	// 20. 리뷰 평점 평균 보여주기(김진환)
	@Override
	public int reviewRating(String tno) {
		
		return ud.reviewRating(sqlSession, tno);
	}
	
	// 21. 리뷰 갯수 리턴해주기(김진환)
	@Override
	public int reviewCount(String tno) {
	
		return ud.reviewCount(sqlSession, tno);
	}

	
	// 16. 입금 확인 요청 후  mprocess update (전효정)
	@Override
	public void updateMprocess4(String mno, String tno) {
		ud.updateMprocess4(sqlSession, mno, tno);
	}

	// 17. 받은 요청 내역 조회 (전효정)
	@Override
	public List<Member> selectRequestsReceivedList(String mno) {
		return ud.selectRequestsReceivedList(sqlSession, mno);
	}


	


}
