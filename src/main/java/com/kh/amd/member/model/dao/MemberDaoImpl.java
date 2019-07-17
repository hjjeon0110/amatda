package com.kh.amd.member.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.context.annotation.SessionScope;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.member.model.vo.Member;
@SessionScope
@Repository
public class MemberDaoImpl implements MemberDao{

	
	//일반 사용자 회원가입
	@Override
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("Member.insertMember",m);
	}
	
	//일반회원가입시에 dummyImg추가
	@Override
	public int dummyImgInsert(SqlSessionTemplate sqlSession) {

		return sqlSession.insert("Member.dummyImgInsert");
	}

	
	//트레이너 회원가입
	@Override
	public int insertTrainer(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("Member.insertTrainer", m);
	}
	
	
	//MNO조회
	@Override
	public int selectMno(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.selectMno",m);
	}
	
	
	
	//트레이너 정보 추가 회원가입
	@Override
	public int insertTrainerInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("Trainer.insertTrainerInfo", m);
		
	}

	//아이디 중복체크
	@Override
	public int idCheck(SqlSessionTemplate sqlSession, String userId) {
		return sqlSession.selectOne("Member.idCheck", userId);
	}

	//이메일 중복체크
	@Override
	public int emailCheck(SqlSessionTemplate sqlSession, String email) {
		return sqlSession.selectOne("Member.emailCheck", email);
	}

	//암호화된 비밀번호 조회
	@Override
	public String selectEncPassword(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.selectSecPwd", m.getUserId());
	}

	
	//로그인 정보 조회
	@Override
	public Member selectMember(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.selectLoginUser", m);
	}

	
	//아이디 찾기
	@Override
	public Member selectId(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.selectId", m);
	}


	//아이디, 비밀번호 찾기에서 비밀번호 찾기
	@Override
	public int findPassword(SqlSessionTemplate sqlSession,Member m) {
		System.out.println("dao까지는 왔어..");
		return sqlSession.selectOne("Member.selectMyPwd",m);
	
	}


	

	//진짜 비밀번호 찾기
	@Override
	public Member selectPwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.selectPwd",m);
	}


	


	//비밀번호 수정
		@Override
		public int updateMyPwd(SqlSessionTemplate sqlSession, Member m) {
			System.out.println("비밀번호 수정 Dao");
			return sqlSession.update("Member.updateMyPwd",m);
		}


		@Override
		public Member loginUserReturn(SqlSessionTemplate sqlSession, String mno) {
			int mno2 = Integer.parseInt(mno);
			
			return sqlSession.selectOne("Member.loginUserReturn", mno2);
		}


		@Override
		public Member selectMyInfo(SqlSessionTemplate sqlSession, String mno) {
			int mno2 = Integer.parseInt(mno);
			
			System.out.println("int로 바꾼 mno2: " + mno2);
			return sqlSession.selectOne("Member.selectMyInfo", mno2);
		}


		@Override
		public int updateMyInfo(SqlSessionTemplate sqlSession, Member m) {
			return sqlSession.update("Member.updateMyInfo", m);
		}


		@Override
		public int updateRandomPwd(SqlSessionTemplate sqlSession, Member m) {
			return sqlSession.update("Member.updateRandomPwd", m);
		}


		@Override
		public void updateMyImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename,
				String ext, String changeName) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("mno", mno);
			map.put("filePath", filePath);
			map.put("originalFilename", originalFilename);
			map.put("changeName", changeName);
			map.put("ext", ext);
			
			sqlSession.insert("Member.updateMyImg",map);
		}

		@Override
		public Attachment selectMyImg(SqlSessionTemplate sqlSession, int mno2) {
			return sqlSession.selectOne("Member.selectMyImg", mno2);
		}

		
		@Override
		public List<Member> bestTrainer(SqlSessionTemplate sqlSession) {
		
			return sqlSession.selectList("Member.bestTrainer");
		}

		@Override
		public List<Member> newComerTrainerList(SqlSessionTemplate sqlSession) {
			
			return sqlSession.selectList("Member.newComerTrainerList");
		}


		

	


	

}
