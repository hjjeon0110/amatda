package com.kh.amd.trainer.model.service;

import java.util.List;
import java.util.Map;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Payment;
import com.kh.amd.trainer.model.vo.Profile;

public interface TrainerService {
	
	
	
	// 진환 메소드 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	// 1. 견적서 select(보기) 메소드(김진환)
	Estimate selectEstimate(int mno, int iestType);
	
	// 2. 견적서 insert 메소드(김진환)
	int insertEstimate(Estimate tEst);
	
	// 3. 견적서 update 메소드  (김진환)
	int updateEstimate(Estimate estimate);
	
	// 4. 트레이너 공개설정 메소드(김진환)
	void updateTopen(String mno, String open);

	// 5. 멤버십 체크(김진환)
	String checkMemberShip(String mno);
	
	// 6. 멤버십결제 인서트 (김진환)
	int insertmemberShipPayment(String tno, int memberShipNo, String memberShipUsage);
	
	// 7. 내결제내역 리스트 갯수 조회용 메소드 (김진환)
	int getPaymentListCount(String tno);
	
	// 8. 내결제내역 리스트 조회용 메소드 (김진환)
	List<Payment> paymentList(String tno, PageInfo pi);
	
	// 9. 환불요청 메소드(김진환)
	int refundRequest(String refundId, String refundReason, int mno, int refundCountI);
	
	// 10. 회원찾기 - 회원리스트 갯수 확인용 메소드(김진환)
	int getSearchUserListCount();
	
	// 11. 회원찾기 - 회원리스트 출력 메소드(김진환)
	List<Member> showUserList(PageInfo pi);

	// 12. 회원찾기 - 회원리스트 정렬 메소드(김진환)
	List<Member> userListSort(String sort, PageInfo pi);
	
	// 13. 견적서 보낸뒤, 멤버십 차감 / mProcess에 저장(김진환)
	List<Member> sendEstList(String tno, Mprocess mprocess);
	
	// 14. 메뉴바를 통해 매칭관리 - 보낸견적서 리스트 확인 메소드(김진환)
	List<Member> sendEstList(String tno, PageInfo pi);
	
	// 15. 회원찾기 - 견적서를 이미 보낸 것인지에 대한 확인(김진환)
	int checkMprocess(String uno, String tno);
	
	// 16. 보낸요청 페이징 처리를 위한 카운트(김진환)
	int getTrainerMyPageMatchingListCount(String tno);
	
	// 17. 받은요청 페이징 처리를 위한 카운트 세기 메소드(김진환)
	int checkMyReceiveListCount(String tno);
	
	// 18. 받은 요청 회원에 대한 리스트 확인 메소드 (김진환)
	List<Member> myReciveList(String tno, PageInfo pi);

	// 19. 보낸 요청에서 회원에게 보낸 견적서 보여주기(김진환)
	Mprocess matchEstimateOpen(int tno, int uno);
	
	// 20. 보낸견적서 요청 철회(김진환)
	int matchEstCancel(int tno, int uno);
	
	// 21. 요청받은 내역 거절하기(트레이너, 김진환)
	int denyRequest(int tno, int uno);
	
	// 22. 받은요청에서 견적서를 보내기(김진환)
	int receivedReqAccept(Mprocess mprocess);
	
	// 23. 매칭 진행중인 회원 리스트(김진환)
	List<Member> showMatchingProgressList(String tno, PageInfo pi);

	// 24. 매칭 완료 회원 리스트(김진환)
	List<Member> showMatchingCompleteList(String tno, PageInfo pi);
	
	// 25. 첫회원 가입자인지 확인(김진환)
	int checkFirstMembership(int mno);

	// 26. 첫 회원 가입자에 대한 보너스 지급
	int welcomeCharge(int mno);
	
	// 27. 진행중인 멤버 리스트 count 조회
	int checkProgressList(String tno);

	// 28. 완료된 회원 리스트 count 조회
	int checkCompleteList(String tno);

	// 29. 매칭중인 회원 프로세스 상세보기(김진환)
	Member showMatchingProcessListView(String tno, String uno);


	
	// 효정 메소드 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
	// 1. 프로필 작성 여부 확인 메소드 (전효정)
	Profile checkProfile(int mno);

	// 2. 프로필 이미지 존재 여부 확인 메소드 (전효정)
	Attachment checkProfileImg(int mno);
	
	// 3. 프로필 이미지 insert 메소드 (전효정)
	void insertProfileImg(String mno, String filePath, String originalFilename, String changeName, String ext);
	
	// 4. 프로필 이미지 수정 메소드 (전효정)
	void modifyProfileImg(String mno, String filePath, String originalFilename, String changeName, String ext);

	// 5. 프로필 - 내 정보 수정하기 insert 메소드 (전효정)
	void insertProfile1(String mno, String proTitle, String lineProfile);

	// 6. 프로필 - 내 정보 수정하기 update 메소드 (전효정)
	void updateProfile1(String mno, String proTitle, String lineProfile);
	
	// 7. 프로필 - 미디어 수정하기 insert 메소드 (전효정)
	void insertMediaImg(String mno, String filePath, String originalFilename, String changeName, String ext);

	// 8. 미디어 존재 여부 확인 메소드 (전효정)
	List<Attachment> checkMediaAttachment(int mno);

	// 9. 프로필 - 트레이너 소개 insert 메소드 (전효정)
	void insertProfile4(String mno, String intro);
	
	// 10. 프로필 - 트레이너 소개 update 메소드 (전효정)
	void updateProfile4(String mno, String intro);

	// 11. 프로필 - 서비스 키워드 insert 메소드 (전효정)
	void insertProfile3(String mno, String keyword);

	// 12. 프로필 - 서비스 키워드 update 메소드 (전효정)
	void updateProfile3(String mno, String keyword);

	// 13. 프로필 - 자격증 수정하기 insert 메소드 (전효정)
	void insertCertificationImg(String mno, String filePath, String originalFilename, String changeName, String ext);

	// 14. 자격증 존재 여부 확인 메소드 (전효정)
	List<Attachment> checkCertificationAttachment(int mno);

	// 15. 프로필 - 미디어/자격증 삭제하기 (전효정)
	void deleteMidea(String mno, String thisModiName);

	// 16. 매칭 요청 거절하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
	void updateMprocess1(String uno, String tno);

	// 17. 매칭 요청 수락하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
	void updateMprocess2(String uno, String tno);

	// 18. 입금 확인 요청 수락하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
	void updateMprocess3(String uno, String tno);
	

	


	

	

	

	
	



	

	


	

	
	
	

	



	
	

	

}
