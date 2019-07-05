package com.kh.amd.trainer.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Payment;
import com.kh.amd.trainer.model.vo.Profile;

public interface TrainerDao {
	
	
	
	// 진환 메소드 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
	// 견적서 select(보기) 메소드(김진환)
	Estimate selectEstimate(SqlSessionTemplate sqlSession, int mno, int iestType);
	
	// 견적서 insert 메소드(김진환)
	int insertEstimate(SqlSessionTemplate sqlSession, Estimate tEst);
	
	// 견적서 update 메소드(김진환)
	int updateEstimate(SqlSessionTemplate sqlSession, Estimate estimate);
	
	// 공개설정 업데이트 메소드(김진환)
	void updateTopen(SqlSessionTemplate sqlSession, String mno, String open);
	
	// 멤버십 (김진환)
	String checkMemberShip(SqlSessionTemplate sqlSession, String mno);
	
	// 멤버쉽 결제 인서트(김진환)
	int insertmemberShipPayment(SqlSessionTemplate sqlSession, String tno, int memberShipNo, String memberShipUsage);
	
	// 내 결제내역 리스트 갯수 조회용 메소드(김진환)
	int getPaymentListCount(SqlSessionTemplate sqlSession, String tno);
	
	// 내 결제내역 리스트 조회용 메소드(김진환)
	List<Payment> paymentList(SqlSessionTemplate sqlSession, String tno, PageInfo pi);
	
	// 환불요청 메소드(김진환)
	int refundRequest(SqlSessionTemplate sqlSession, String refundId, String refundReason, int mno, int refundCountI);

	//회원찾기  - 회원리스트 갯수 확인 메소드(김진환)
	int getSearchUserListCount(SqlSessionTemplate sqlSession);
	
	//회원찾기 - 회원리스트 출력 메소드(김진환)
	List<Member> showUserList(SqlSessionTemplate sqlSession, PageInfo pi);



	
	
	
	// 효정 메소드 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	// 1. 프로필 작성 여부 확인 메소드  (전효정)
	Profile checkProfile(SqlSessionTemplate sqlSession, int mno);

	// 2. 프로필 이미지 존재 여부 확인 메소드 (전효정)
	Attachment checkProfileImg(SqlSessionTemplate sqlSession, int mno);
	
	// 3. 프로필 이미지 insert 메소드 (전효정)
	void insertProfileImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext);
	
	// 4. 프로필 이미지 수정 메소드 (전효정)
	void modifyProfileImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext);

	// 5. 프로필 - 내 정보 수정하기 insert 메소드 (전효정)
	void insertProfile1(SqlSessionTemplate sqlSession, String mno, String proTitle, String lineProfile);
	
	// 6. 프로필 - 내 정보 수정하기 update 메소드 (전효정)
	void updateProfile1(SqlSessionTemplate sqlSession, String mno, String proTitle, String lineProfile);
	
	// 7. 프로필 - 미디어 수정하기 insert 메소드 (전효정)
	void insertMediaImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext);

	// 8. 미디어 존재 여부 확인 메소드 (전효정)
	List<Attachment> checkMediaAttachment(SqlSessionTemplate sqlSession, int mno);

	// 9. 프로필 - 트레이너 소개 insert 메소드 (전효정)
	void insertProfile4(SqlSessionTemplate sqlSession, String mno, String intro);

	// 10. 프로필 - 트레이너 소개 update 메소드 (전효정)
	void updateProfile4(SqlSessionTemplate sqlSession, String mno, String intro);

	// 11. 프로필 - 서비스 키워드 insert 메소드 (전효정)
	void insertProfile3(SqlSessionTemplate sqlSession, String mno, String keyword);

	// 12. 프로필 - 서비스 키워드 update 메소드 (전효정)
	void updateProfile3(SqlSessionTemplate sqlSession, String mno, String keyword);

	// 13. 프로필 - 자격증 수정하기 insert 메소드 (전효정)
	void insertCertificationImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext);

	// 14. 자격증 존재 여부 확인 메소드 (전효정)
	List<Attachment> checkCertificationAttachment(SqlSessionTemplate sqlSession, int mno);

	// 15. 프로필 - 미디어/자격증 삭제하기 (전효정)
	void deleteMidea(SqlSessionTemplate sqlSession, String mno, String thisModiName);





	
	
	
	
	
	
	





	

}
