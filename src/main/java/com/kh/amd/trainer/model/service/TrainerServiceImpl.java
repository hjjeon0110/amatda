package com.kh.amd.trainer.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.dao.TrainerDao;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Payment;
import com.kh.amd.trainer.model.vo.Profile;

@Service
public class TrainerServiceImpl implements TrainerService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private TrainerDao td;
	
	// 진환 메소드 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
	// 1. 견적서 select(보기) 메소드 (김진환)
	@Override
	public Estimate selectEstimate(int mno, int iestType) {
		return td.selectEstimate(sqlSession, mno, iestType);
	}

	
	// 2. 견적서 insert 메소드(김진환)
	@Override
	public int insertEstimate(Estimate tEst) {
		return td.insertEstimate(sqlSession, tEst);
	}
	
	
	// 3. 견적서 update 메소드(김진환)
	@Override
	public int updateEstimate(Estimate estimate) {
		return td.updateEstimate(sqlSession, estimate);
	}
	
	
	// 4. 공개 설정 업데이트 메소드 (김진환)
	@Override
	public void updateTopen(String mno, String open) {
		td.updateTopen(sqlSession, mno, open);
	}
	
	
	// 5. 멤버십 체크(김진환)
	@Override
	public String checkMemberShip(String mno) {
		return td.checkMemberShip(sqlSession, mno);
	}
	
	// 6. 멤버십 결제 인서트 김진환(김진환)
	@Override
	public int insertmemberShipPayment(String tno, int memberShipNo, String memberShipUsage) {
		
		return td.insertmemberShipPayment(sqlSession, tno, memberShipNo, memberShipUsage);
	}
	
	// 7. 내 결제내역 리스트 갯수 조회용 메소드(김진환)
	@Override
	public int getPaymentListCount(String tno) {

		return td.getPaymentListCount(sqlSession, tno);
	}
	
	// 8. 내 결제내역 리스트 조회용 메소드(김진환)
	@Override
	public List<Payment> paymentList(String tno, PageInfo pi) {
		
		return td.paymentList(sqlSession, tno, pi);
	}
	
	// 9. 환불 요청 메소드(김진환)
	@Override
	public int refundRequest(String refundId, String refundReason, int mno, int refundCountI) {
	
		
		return td.refundRequest(sqlSession, refundId, refundReason, mno, refundCountI);
	}
	
	// 10. 회원찾기  - 회원리스트 갯수 확인 메소드(김진환)
	@Override
	public int getSearchUserListCount() {
		return td.getSearchUserListCount(sqlSession);
	}

	
	// 11. 회원찾기 - 회원리스트 출력 메소드(김진환)
	@Override
	public List<Member> showUserList(PageInfo pi) {
		
		return td.showUserList(sqlSession, pi);
	}
	
	// 12. 회원찾기 - 회원리스트 정렬 메소드(김진환)
	@Override
	public List<Member> userListSort(String sort, PageInfo pi) {
		
		return td.userListSort(sqlSession, sort, pi);
	}

	// 13. 견적서 보낸뒤, 멤버십 차감 / mProcess에 저장(김진환)
	@Override
	public List<Member> sendEstList(String tno, Mprocess mprocess) {
		
		//견적서 전송 - 멤버쉽 차감(김진환)
		int memberShipDecrease = td.memberShipDecrease(sqlSession, tno);

		//견적서 전송 - mprocess 테이블 insert(김진환)
		int insertMpocess = td.insertMprocess(sqlSession, mprocess);
		
		//List 객체 생성
		List<Member> sendEstList = null;
		sendEstList = td.sendEstList(sqlSession, tno);
		
		
		
		return sendEstList;
	}
	
	// 14. 메뉴바를 통해 매칭관리 - 보낸견적서 리스트 확인 메소드(김진환)
	@Override
	public List<Member> sendEstList(String tno, PageInfo pi) {
		List<Member> sendEstList = null;
		sendEstList = td.sendEstList(sqlSession, tno, pi);
		return sendEstList;
	}
	
	// 15. 회원찾기 - 견적서를 이미 보냈는지 확인(김진환)
	@Override
	public int checkMprocess(String uno, String tno) {
		
		return td.checkMprocess(sqlSession, uno, tno);
	}
	
	// 16. 보낸요청 페이징 처리를 위한 카운트(김진환)
	@Override
	public int getTrainerMyPageMatchingListCount(String tno) {
		
		return td.getTrainerMyPageMatchingListCount(sqlSession, tno);
	}
	
	// 17. 받은요청 페이징 처리를 위한 카운트(김진환)
	@Override
	public int checkMyReceiveListCount(String tno) {
			
		return td.checkMyReceiveListCount(sqlSession, tno);
	}
	
	// 18. 받은 요청 리스트 확인 메소드(김진환)
	@Override
	public List<Member> myReciveList(String tno, PageInfo pi) {
		
		
		return td.myReciveList(sqlSession, tno, pi);
	}
	
	// 19. 보낸 요청에서 회원에게 보낸 견적서 보여주기(김진환)
	@Override
	public Mprocess matchEstimateOpen(int tno, int uno) {
		
		return td.matchEstimateOpen(sqlSession, tno, uno);
	}
	
	// 20. 보낸견적서 요청 철회(김진환)
	@Override
	public int matchEstCancel(int tno, int uno) {
		
		return td.matchEstCancel(sqlSession, tno, uno);
	}
	
	// 21. 요청받은 내역 거절하기(트레이너, 김진환)
	@Override
	public int denyRequest(int tno, int uno) {
		
		return td.denyRequest(sqlSession, tno, uno);
	}
	
	// 22. 받은요청에서 견적서를 보내기(김진환)
	@Override
	public int receivedReqAccept(Mprocess mprocess) {
		
		String tno = "" + mprocess.getTno();
		
		//견적서 전송 - 멤버쉽 차감(김진환)
		int memberShipDecrease = td.memberShipDecrease(sqlSession, tno);
	
		
		return td.receivedReqAccept(sqlSession, mprocess);
	}
	
	// 23. 매칭 진행중인 회원 리스트(김진환)
	@Override
	public List<Member> showMatchingProgressList(String tno, PageInfo pi) {
		
		return td.showMatchingProgressList(sqlSession, tno, pi);
	}

	// 24. 매칭 완료 회원 리스트(김진환)
	@Override
	public List<Member> showMatchingCompleteList(String tno, PageInfo pi) {
		
		
		return td.showMatchingCompleteList(sqlSession, tno, pi);
	}
	
	// 25. 첫회원 가입자인지 확인(김진환)
	@Override
	public int checkFirstMembership(int mno) {
		
		return td.checkFirstMembership(sqlSession, mno);
	}


	// 26. 첫 회원 가입자에 대한 보너스 지급
	@Override
	public int welcomeCharge(int mno) {
		
		return td.welcomeCharge(sqlSession, mno);
	}
	

	// 27. 진행중인 회원 리스트 count(김진환)
	@Override
	public int checkProgressList(String tno) {
		
		return td.checkProgressList(sqlSession, tno);
	}

	// 28. 완료 회원 리스트 count(김진환)
	@Override
	public int checkCompleteList(String tno) {
		
		return td.checkCompleteList(sqlSession, tno);
	}
	
	// 29. 매칭중인 회원 프로세스 상세보기(김진환)
	@Override
	public Member showMatchingProcessListView(String tno, String uno) {
		
		return td.showMatchingProcessListView(sqlSession, tno, uno);
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


	// 16. 매칭 요청 거절하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
	@Override
	public void updateMprocess1(String uno, String tno) {
		td.updateMprocess1(sqlSession, uno, tno);
	}


	// 17. 매칭 요청 수락하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
	@Override
	public void updateMprocess2(String uno, String tno) {
		td.updateMprocess2(sqlSession, uno, tno);
	}

	
	// 18. 입금 확인 요청 수락하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
	@Override
	public void updateMprocess3(String uno, String tno) {
		td.updateMprocess3(sqlSession, uno, tno);
	}





	


	



	






	








	

	

	

	


	


	

	


	
	

	
}
