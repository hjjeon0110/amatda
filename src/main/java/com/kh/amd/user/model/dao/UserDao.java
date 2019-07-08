package com.kh.amd.user.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;
import com.kh.amd.trainer.model.vo.Profile;

public interface UserDao {


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
	List<Mprocess> selectMyTrainerList(SqlSessionTemplate sqlSession, String mno);

	// 10. 마이트레이너 상세정보 조회 (전효정)
	List<Member> selectMyTrainerInfo(SqlSessionTemplate sqlSession, List<Mprocess> myTrainerList);
	
}
