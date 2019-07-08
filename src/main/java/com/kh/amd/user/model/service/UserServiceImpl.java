package com.kh.amd.user.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.attachment.model.vo.Attachment;
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
	public List<Mprocess> selectMyTrainerList(String mno) {
		return ud.selectMyTrainerList(sqlSession, mno);
	}

	
	// 10. 마이트레이너 상세정보 조회 (전효정)
	@Override
	public List<Member> selectMyTrainerInfoList(List<Mprocess> myTrainerList) {
		return ud.selectMyTrainerInfo(sqlSession, myTrainerList);
	}

}
