package com.kh.amd.trainer.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Payment;
import com.kh.amd.trainer.model.vo.Profile;

public interface TrainerDao {
	
	
	
	// 진환 메소드 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
	// 1. 견적서 select(보기) 메소드(김진환)
	Estimate selectEstimate(SqlSessionTemplate sqlSession, int mno, int iestType);
	
	// 2. 견적서 insert 메소드(김진환)
	int insertEstimate(SqlSessionTemplate sqlSession, Estimate tEst);
	
	// 3. 견적서 update 메소드(김진환)
	int updateEstimate(SqlSessionTemplate sqlSession, Estimate estimate);
	
	// 4. 공개설정 업데이트 메소드(김진환)
	void updateTopen(SqlSessionTemplate sqlSession, String mno, String open);
	
	// 5. 멤버십 (김진환)
	String checkMemberShip(SqlSessionTemplate sqlSession, String mno);
	
	// 6. 멤버쉽 결제 인서트(김진환)
	int insertmemberShipPayment(SqlSessionTemplate sqlSession, String tno, int memberShipNo, String memberShipUsage);
	
	// 7. 내 결제내역 리스트 갯수 조회용 메소드(김진환)
	int getPaymentListCount(SqlSessionTemplate sqlSession, String tno);
	
	// 8. 내 결제내역 리스트 조회용 메소드(김진환)
	List<Payment> paymentList(SqlSessionTemplate sqlSession, String tno, PageInfo pi);
	
	// 9. 환불요청 메소드(김진환)
	int refundRequest(SqlSessionTemplate sqlSession, String refundId, String refundReason, int mno, int refundCountI);

	// 10. 회원찾기  - 회원리스트 갯수 확인 메소드(김진환)
	int getSearchUserListCount(SqlSessionTemplate sqlSession);
	
	// 11. 회원찾기 - 회원리스트 출력 메소드(김진환)
	List<Member> showUserList(SqlSessionTemplate sqlSession, PageInfo pi);
	
	// 12. 회원찾기 - 회원리스트 정렬 메소드(김진환)
	List<Member> userListSort(SqlSessionTemplate sqlSession, String sort, PageInfo pi);
	
	// 13. 견적서 전송 - 멤버쉽 차감(김진환)
	int memberShipDecrease(SqlSessionTemplate sqlSession, String tno);
	
	// 14. 견적서 전송 - 보낸요청 리스트에 담기(김진환)
	List<Member> sendEstList(SqlSessionTemplate sqlSession, String tno);
	
	// 15. 견적서 전송 - mprocess 테이블 insert(김진환)
	int insertMprocess(SqlSessionTemplate sqlSession, Mprocess mprocess);
	
	// 16. 회원찾기 - 이미 견적서를 보낸 회원인지 확인(김진환)
	int checkMprocess(SqlSessionTemplate sqlSession, String uno, String tno);
	
	// 17. 페이징 처리를 위한 오버라이딩을 한 sendList(보낸요청서) (김진환)
	List<Member> sendEstList(SqlSessionTemplate sqlSession, String tno, PageInfo pi);

	// 18. 보낸요청 페이징 처리를 위한 카운트(김진환)
	int getTrainerMyPageMatchingListCount(SqlSessionTemplate sqlSession, String tno);
	
	// 19. 받은요청 페이징 처리를 위한 카운트(김진환)
	int checkMyReceiveListCount(SqlSessionTemplate sqlSession, String tno);
	
	// 20. 받은 요청 리스트 확인 메소드(김진환)
	List<Member> myReciveList(SqlSessionTemplate sqlSession, String tno, PageInfo pi);
	
	// 21. 보낸 요청에서 회원에게 보낸 견적서 보여주기(김진환)
	Mprocess matchEstimateOpen(SqlSessionTemplate sqlSession, int tno, int uno);
	
	// 22. 보낸견적서 요청 철회(김진환)
	int matchEstCancel(SqlSessionTemplate sqlSession, int tno, int uno);
		
	// 23. 요청받은 내역 거절하기(트레이너, 김진환)
	int denyRequest(SqlSessionTemplate sqlSession, int tno, int uno);
	
	// 24. 받은요청에서 견적서를 보내기(김진환)
	int receivedReqAccept(SqlSessionTemplate sqlSession, Mprocess mprocess);

	// 25. 매칭 진행중인 회원 리스트 조회(김진환)
	List<Member> showMatchingProgressList(SqlSessionTemplate sqlSession, String tno, PageInfo pi);

	// 26. 매칭 완료된 회원 리스트 조회(김진환)
	List<Member> showMatchingCompleteList(SqlSessionTemplate sqlSession, String tno, PageInfo pi);
	
	// 27. 첫회원 가입자인지 확인(김진환)
	int checkFirstMembership(SqlSessionTemplate sqlSession, int mno);

	// 28. 첫 회원 가입자에 대한 보너스 지급(김진환)
	int welcomeCharge(SqlSessionTemplate sqlSession, int mno);
	
	// 29. 진행중인 회원 리스트 count(김진환)
	int checkProgressList(SqlSessionTemplate sqlSession, String tno);

	// 30. 완료 회원 리스트 count(김진환)
	int checkCompleteList(SqlSessionTemplate sqlSession, String tno);

	// 31. 매칭중인 회원 프로세스 상세보기(김진환)
	Member showMatchingProcessListView(SqlSessionTemplate sqlSession, String tno, String uno);




	
	
	
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

	// 16. 매칭 요청 거절하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
	void updateMprocess1(SqlSessionTemplate sqlSession, String uno, String tno);

	// 17. 매칭 요청 수락하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
	void updateMprocess2(SqlSessionTemplate sqlSession, String uno, String tno);



	


	
	
	
	

	



	
	

	

	

	

	





	
	
	
	
	
	
	





	

}
