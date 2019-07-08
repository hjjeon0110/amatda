package com.kh.amd.user.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.survey.model.vo.Survey;
import com.kh.amd.trainer.model.vo.Profile;

@Repository
public class UserDaoImpl implements UserDao {

	
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




}
