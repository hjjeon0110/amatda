package com.kh.amd.user.model.service;

import java.util.List;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;
import com.kh.amd.trainer.model.vo.Profile;

public interface UserService {

	// 1. 맞춤 트레이너 리스트 조회 (전효정)
	List<Member> selectRecommendTrainerList(int mno, String hopeAge, String hopeGender, String hopePeriod, String hopeExercise, String[] hopeExerciseArr);

	// 2. 설문조사/키워드 조회 (전효정)
	Survey selectSurvey(int mno);

	// 3. 셀프 트레이너 검색 리스트 조회 (전효정)
	List<Member> selectSearchTrainerList(String mno, String searchServiceKeyword, String searchTrainerAge, String searchTrainerGender, String searchTrainerName);

	// 4. 프로필 이미지 존재 여부 확인 메소드 (전효정)
	Attachment checkProfileImg(String tno);

	// 5. 프로필 작성 여부 확인 (전효정)
	Profile checkProfile(String tno);
	
	// 6. 미디어 존재 여부 확인 메소드 (전효정)
	List<Attachment> checkMediaAttachment(String tno);
	
	// 7. 자격증 존재 여부 확인 메소드 (전효정)
	List<Attachment> checkCertificationAttachment(String tno);

	// 8. 마이트레이너 insert (전효정)
	void insertMyTrainer(String uno, String tno);

	// 9. 마이트레이너 리스트 조회 (전효정)
	List<Member> selectMyTrainerList(String mno);

	// 10. 마이트레이너 존재 여부 확인 메소드 (전효정)
	Mprocess selectOneMyTrainer(String mno, String tno);
	
	// 11. 마이트레이너 delete (전효정)
	void deleteMyTrainer(String uno, String tno);
	
	//12. 내글관리(Qna) select (우리나)
	List<Board> selectMyQnaList(int mno2);
	
	//13. 내글관리(QnaDetail) select (우리나)
	Board selectMyQnaDetail(int bno2);
	
	//14. 내글관리(QnaReply) select (우리나)
	Reply selectQnaReply(int bno2);

	List<Board> selectMyBoardList(int mno2);
	


}
