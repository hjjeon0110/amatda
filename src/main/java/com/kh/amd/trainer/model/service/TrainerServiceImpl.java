package com.kh.amd.trainer.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.dao.TrainerDao;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Profile;

@Service
public class TrainerServiceImpl implements TrainerService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private TrainerDao td;
	
	// 진환 메소드 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
	// 견적서 select(보기) 메소드 (김진환)
	@Override
	public Estimate selectEstimate(int mno, int iestType) {
		return td.selectEstimate(sqlSession, mno, iestType);
	}

	
	// 견적서 insert 메소드(김진환)
	@Override
	public int insertEstimate(Estimate tEst) {
		return td.insertEstimate(sqlSession, tEst);
	}
	
	
	// 견적서 update 메소드(김진환)
	@Override
	public int updateEstimate(Estimate estimate) {
		return td.updateEstimate(sqlSession, estimate);
	}
	
	
	// 공개 설정 업데이트 메소드 (김진환)
	@Override
	public void updateTopen(String mno, String open) {
		td.updateTopen(sqlSession, mno, open);
	}
	
	
	// 멤버십 (김진환)
	@Override
	public String checkMemberShip(String mno) {
		return td.checkMemberShip(sqlSession, mno);
	}
	
	// 멤버십 결제 인서트 서블릿(김진환)
	@Override
	public int insertmemberShipPayment(String tno, int memberShipNo, String memberShipUsage) {
		
		return td.insertmemberShipPayment(sqlSession, tno, memberShipNo, memberShipUsage);
	}

	
	
	// 효정 메소드 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
	// 1. 프로필 작성 여부 확인 메소드  (전효정)
	@Override
	public Profile checkProfile(int mno) {
		return td.checkProfile(sqlSession, mno);
	}
	
	
	// 2. 프로필 이미지 존재 여부 확인 메소드 (전효정)
	@Override
	public Attachment checkProfileImg(int mno) {
		return td.checkProfileImg(sqlSession, mno);
	}
	
	
	// 3. 프로필 이미지 insert 메소드 (전효정)
	@Override
	public void insertProfileImg(String mno, String filePath, String originalFilename, String changeName, String ext) {
		td.insertProfileImg(sqlSession, mno, filePath, originalFilename, changeName, ext);
	}
	
	
	// 4. 프로필 이미지 수정 메소드 (전효정)
	@Override
	public void modifyProfileImg(String mno, String filePath, String originalFilename, String changeName, String ext) {
		td.modifyProfileImg(sqlSession, mno, filePath, originalFilename, changeName, ext);
	}
	

	// 5. 프로필 - 내 정보 수정하기 insert 메소드 (전효정)
	@Override
	public void insertProfile1(String mno, String proTitle, String lineProfile) {
		td.insertProfile1(sqlSession, mno, proTitle, lineProfile);
	}
	
	
	// 6. 프로필 - 내 정보 수정하기 update 메소드 (전효정)
	@Override
	public void updateProfile1(String mno, String proTitle, String lineProfile) {
		td.updateProfile1(sqlSession, mno, proTitle, lineProfile);
	}
	
	
	// 7. 프로필 - 미디어 수정하기 insert 메소드 (전효정)
	@Override
	public void insertMediaImg(String mno, String filePath, String originalFilename, String changeName, String ext) {
		td.insertMediaImg(sqlSession, mno, filePath, originalFilename, changeName, ext);
	}


	// 8. 미디어 존재 여부 확인 메소드 (전효정)
	@Override
	public List<Attachment> checkMediaAttachment(int mno) {
		return td.checkMediaAttachment(sqlSession, mno);
	}

	
	// 9. 프로필 - 트레이너 소개 insert 메소드 (전효정)
	@Override
	public void insertProfile4(String mno, String intro) {
		td.insertProfile4(sqlSession, mno, intro);
	}

	
	// 10. 프로필 - 트레이너 소개 update 메소드 (전효정)
	@Override
	public void updateProfile4(String mno, String intro) {
		td.updateProfile4(sqlSession, mno, intro);
	}

	
	// 11. 프로필 - 서비스 키워드 insert 메소드 (전효정)
	@Override
	public void insertProfile3(String mno, String keyword) {
		td.insertProfile3(sqlSession, mno, keyword);
	}

	
	// 12. 프로필 - 서비스 키워드 update 메소드 (전효정)
	@Override
	public void updateProfile3(String mno, String keyword) {
		td.updateProfile3(sqlSession, mno, keyword);
	}

	
	// 13. 프로필 - 자격증 수정하기 insert 메소드 (전효정)
	@Override
	public void insertCertificationImg(String mno, String filePath, String originalFilename, String changeName, String ext) {
		td.insertCertificationImg(sqlSession, mno, filePath, originalFilename, changeName, ext);
	}

	
	// 14. 자격증 존재 여부 확인 메소드 (전효정)
	@Override
	public List<Attachment> checkCertificationAttachment(int mno) {
		return td.checkCertificationAttachment(sqlSession, mno);
	}


	// 15. 프로필 - 미디어/자격증 삭제하기 (전효정)
	@Override
	public void deleteMidea(String mno, String thisModiName) {
		td.deleteMidea(sqlSession, mno, thisModiName);
	}


	

	


	
	

	
}
