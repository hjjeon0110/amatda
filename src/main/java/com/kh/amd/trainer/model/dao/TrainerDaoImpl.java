package com.kh.amd.trainer.model.dao;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.matching.model.vo.Mprocess;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Payment;
import com.kh.amd.trainer.model.vo.Profile;

@Repository
public class TrainerDaoImpl implements TrainerDao {
	
	
	
	// 진환 메소드 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
	// 1. 견적서  보기 select 메소드 (김진환)
	@Override
	public Estimate selectEstimate(SqlSessionTemplate sqlSession, int mno, int iestType) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("MNO", mno);
		map.put("iestType", iestType);
		
		return sqlSession.selectOne("Trainer.selectEstimate", map);
	}
	
	
	// 2. 견적서 insert 메소드 (김진환)
	@Override
	public int insertEstimate(SqlSessionTemplate sqlSession, Estimate tEst) {
		return sqlSession.insert("Trainer.insertEstimate", tEst);
	}
	
	
	// 3. 견적서 update 메소드 (김진환)
	@Override
	public int updateEstimate(SqlSessionTemplate sqlSession, Estimate estimate) {
		return sqlSession.update("Trainer.updateEstimate", estimate);
	}
	
	
	// 4. 트레이너 공개설정 update 메소드 (김진환)
	@Override
	public void updateTopen(SqlSessionTemplate sqlSession, String mno, String open) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("open", open);
		
		sqlSession.update("Trainer.updateTopen", map);
	}
	
	
	// 5. 멤버십 체크 (김진환)
	@Override
	public String checkMemberShip(SqlSessionTemplate sqlSession, String mno) {
		return sqlSession.selectOne("Trainer.checkRemainNum", mno);
	}
	
	// 6. 멤버쉽 결제 인서트 서블릿(김진환)
	@Override
	public int insertmemberShipPayment(SqlSessionTemplate sqlSession, String tno, int memberShipNo, String memberShipUsage) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		int mno = Integer.parseInt(tno);
		int iMemberShipUsage =  Integer.parseInt(memberShipUsage);
		
		
		map.put("mno", mno);
		map.put("memberShipNo", memberShipNo);
		map.put("iMemberShipUsage", iMemberShipUsage);
		
		System.out.println(map);
			
		sqlSession.update("Trainer.updateRemainNum", map);
		
		return sqlSession.insert("Trainer.insertmemberShipPayment", map);
	}
	
	// 7. 내 결제내역 리스트 갯수 조회용 메소드(김진환)
	@Override
	public int getPaymentListCount(SqlSessionTemplate sqlSession, String tno) {
		
		
		return sqlSession.selectOne("Trainer.getPaymentListCount", tno);
	}
	
	// 8. 내 결제내역 리스트 조회용 메소드(김진환)
	@Override
	public List<Payment> paymentList(SqlSessionTemplate sqlSession, String tno, PageInfo pi) {
		
		int tno2 = Integer.parseInt(tno);
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		List<Payment> list = null;
		list = (List) sqlSession.selectList("Trainer.paymentList", tno2, rowBounds);
		
		return list;
	}
	
	// 9. 환불요청 메소드 (김진환)
	@Override
	public int refundRequest(SqlSessionTemplate sqlSession, String refundId, String refundReason, int mno, int refundCountI) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("refundId", refundId);
		map.put("refundReason", refundReason);
		map.put("refundCountI", refundCountI);
		map.put("mno", mno);
		
		sqlSession.update("Trainer.minusRemainNum", map);
		return sqlSession.update("Trainer.refundRequest", map);
	}
	
	// 10. 회원찾기  - 회원리스트 갯수 확인 메소드(김진환)
	@Override
	public int getSearchUserListCount(SqlSessionTemplate sqlSession) {		
		
		return sqlSession.selectOne("Trainer.searchUserListCount");
	}

	
	
	// 11. 회원찾기 - 회원리스트 출력 메소드(김진환)
	@Override
	public List<Member> showUserList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());	
		
		List<Member> list = null;
		
		
		list = (List) sqlSession.selectList("Trainer.showUserList", null, rowBounds);
		System.out.println("Dao에서 list : " + list);
		
		return list;
	}
	
	// 12. 회원찾기 - 회원리스트 정렬 메소드(김진환)
	@Override
	public List<Member> userListSort(SqlSessionTemplate sqlSession, String sort, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());	
		
		
		List<Member> list = null;
		
		System.out.println("Dao에서 sort : " + sort);
		
		list = (List) sqlSession.selectList("Trainer.userListSort", sort, rowBounds);
		
		return list;
	}
	
	// 13. 견적서 전송 - 멤버쉽 차감(김진환)
		@Override
		public int memberShipDecrease(SqlSessionTemplate sqlSession, String tno) {
			int mno = Integer.parseInt(tno);
			
			return sqlSession.update("Trainer.memberShipDecrease", mno);
		}
		
	
	// 14. 견적서 전송 - mprocess 테이블 insert(김진환)
	@Override
	public int insertMprocess(SqlSessionTemplate sqlSession, Mprocess mprocess) {
		
		return sqlSession.insert("Trainer.insertMprocess", mprocess);
	}

	// 15. 견적서 전송 - 보낸요청 리스트에 담기(김진환)
	@Override
	public List<Member> sendEstList(SqlSessionTemplate sqlSession, String tno) {
		
		return sqlSession.selectList("Trainer.sendEstList", tno);
	}
	
	// 16. 회원 찾기 - 견적서 전송 이미 보내는것인지 확인(김진환)
	@Override
	public int checkMprocess(SqlSessionTemplate sqlSession, String uno, String tno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", uno);
		map.put("tno", tno);
		
		return sqlSession.selectOne("Trainer.checkMprocess", map);
		
	}
	
	// 17. 페이징 처리를 위한 오버라이딩을 한 sendList(보낸요청서) (김진환)
	@Override
	public List<Member> sendEstList(SqlSessionTemplate sqlSession, String tno, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());		
		
		return (List) sqlSession.selectList("Trainer.sendEstListPaging", tno, rowBounds);
	}

	// 18. 보낸요청 페이징 처리를 위한 카운트(김진환)
	@Override
	public int getTrainerMyPageMatchingListCount(SqlSessionTemplate sqlSession, String tno) {
		
		return sqlSession.selectOne("Trainer.getTrainerMyPageMatchingListCount", tno);
	}

	// 19. 받은요청 페이징 처리를 위한 카운트(김진환)
	@Override
	public int checkMyReceiveListCount(SqlSessionTemplate sqlSession, String tno) {
		
		int result = 0;
		result = sqlSession.selectOne("Trainer.checkMyReceiveListCount", tno);
		return result;
	}
	
	// 20. 받은요청 리스트 확인 메소드(김진환)
	@Override
	public List<Member> myReciveList(SqlSessionTemplate sqlSession, String tno, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());		
		
		return (List) sqlSession.selectList("Trainer.myReciveList", tno, rowBounds);
	}
	
	// 21. 보낸 요청에서 회원에게 보낸 견적서 보여주기(김진환)
	@Override
	public Mprocess matchEstimateOpen(SqlSessionTemplate sqlSession, int tno, int uno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", uno);
		map.put("tno", tno);
	
		return sqlSession.selectOne("Trainer.matchEstimateOpen", map);
	}
	
	// 22. 보낸견적서 요청 철회(김진환)
	@Override
	public int matchEstCancel(SqlSessionTemplate sqlSession, int tno, int uno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", uno);
		map.put("tno", tno);
		
		return sqlSession.delete("Trainer.matchEstCancel", map);
	}
	
	// 23. 요청받은 내역 거절하기(트레이너, 김진환)
	@Override
	public int denyRequest(SqlSessionTemplate sqlSession, int tno, int uno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", uno);
		map.put("tno", tno);
	
		return sqlSession.update("Trainer.denyRequest", map);
	}
	
	// 24. 요청받은 내역에서 견적서 보내기(트레이너, 김진환)
	@Override
	public int receivedReqAccept(SqlSessionTemplate sqlSession, Mprocess mprocess) {
		
		System.out.println("Dao에서 mprocess : " + mprocess);
		
		return sqlSession.update("Trainer.receivedReqAccept", mprocess);
	}
	
	// 25. 매칭 진행중인 회원 리스트 조회(김진환)
	@Override
	public List<Member> showMatchingProgressList(SqlSessionTemplate sqlSession, String tno, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());	
		
		List<Member> list = null;
		
		list = (List) sqlSession.selectList("Trainer.showMatchingProgressList", tno, rowBounds);
		
		return list;
	}

	// 26. 매칭 완료 회원 리스트 조회(김진환)
	@Override
	public List<Member> showMatchingCompleteList(SqlSessionTemplate sqlSession, String tno, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());	
		
		List<Member> list = null;
		list = (List)sqlSession.selectList("Trainer.showMatchingCompleteList", tno, rowBounds);
		
		return list;
	}
	
	// 27. 첫회원 가입자인지 확인(김진환)
	@Override
	public int checkFirstMembership(SqlSessionTemplate sqlSession, int mno) {

		return sqlSession.selectOne("Trainer.checkFirstMembership", mno);
	}

	// 28. 첫 회원 가입자에 대한 보너스 지급(김진환)
	@Override
	public int welcomeCharge(SqlSessionTemplate sqlSession, int mno) {

		return sqlSession.update("Trainer.welcomeCharge", mno);
	}
	
	// 29. 진행중인 회원 리스트 count(김진환)
	@Override
	public int checkProgressList(SqlSessionTemplate sqlSession, String tno) {
		
		
		return sqlSession.selectOne("Trainer.checkProgressList", tno);
	}

	// 30. 완료 회원 리스트 count(김진환)
	@Override
	public int checkCompleteList(SqlSessionTemplate sqlSession, String tno) {
		
		
		return sqlSession.selectOne("Trainer.checkCompleteList", tno);
	}
	
	// 31.매칭중인 회원 프로세스 상세보기(김진환)

	@Override
	public Member showMatchingProcessListView(SqlSessionTemplate sqlSession, String tno, String uno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", uno);
		map.put("tno", tno);
	
		
		return sqlSession.selectOne("Trainer.showMatchingProcessListView", map);
	}






	
	




	





	
	
	
	// 효정 메소드 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	// 1. 프로필 작성 여부 확인 메소드  (전효정)
	@Override
	public Profile checkProfile(SqlSessionTemplate sqlSession, int mno) {
		return sqlSession.selectOne("Trainer.checkProfile", mno);
	}

	
	// 2. 프로필 이미지 존재 여부 확인 메소드 (전효정)
	@Override
	public Attachment checkProfileImg(SqlSessionTemplate sqlSession, int mno) {
		return sqlSession.selectOne("Trainer.checkProfileImg", mno);
	}
	
	
	// 3. 프로필 이미지 insert 메소드 (전효정)
	@Override
	public void insertProfileImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		map.put("ext", ext);
		
		sqlSession.insert("Trainer.insertProfileImg", map);
	}

	
	// 4. 프로필 이미지 수정 메소드 (전효정)
	@Override
	public void modifyProfileImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		map.put("ext", ext);
		
		sqlSession.update("Trainer.modifyProfileImg", map);
	}
	

	// 5. 프로필 - 내 정보 수정하기 insert 메소드 (전효정)
	@Override
	public void insertProfile1(SqlSessionTemplate sqlSession, String mno, String proTitle, String lineProfile) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("proTitle", proTitle);
		map.put("lineProfile", lineProfile);
		
		sqlSession.insert("Trainer.insertProfile1", map);
	}
	
	
	// 6. 프로필 - 내 정보 수정하기 update 메소드 (전효정)
	@Override
	public void updateProfile1(SqlSessionTemplate sqlSession, String mno, String proTitle, String lineProfile) {
	
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("proTitle", proTitle);
		map.put("lineProfile", lineProfile);
		
		sqlSession.update("Trainer.updateProfile1", map);

	}
	
	
	// 7. 프로필 - 미디어 수정하기 insert 메소드 (전효정)
	@Override
	public void insertMediaImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		map.put("ext", ext);
		
		sqlSession.insert("Trainer.insertMediaImg", map);
	}


	// 8. 미디어 존재 여부 확인 메소드 (전효정)
	@Override
	public List<Attachment> checkMediaAttachment(SqlSessionTemplate sqlSession, int mno) {
		return sqlSession.selectList("Trainer.checkMediaAttachment", mno);
	}

	
	// 9. 프로필 - 트레이너 소개 insert 메소드 (전효정)
	@Override
	public void insertProfile4(SqlSessionTemplate sqlSession, String mno, String intro) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("intro", intro);
		
		sqlSession.insert("Trainer.insertProfile4", map);
	}

	
	// 10. 프로필 - 트레이너 소개 update 메소드 (전효정)
	@Override
	public void updateProfile4(SqlSessionTemplate sqlSession, String mno, String intro) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("intro", intro);
		
		sqlSession.update("Trainer.updateProfile4", map);
	}

	
	// 11. 프로필 - 서비스 키워드 insert 메소드 (전효정)
	@Override
	public void insertProfile3(SqlSessionTemplate sqlSession, String mno, String keyword) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("keyword", keyword);
		
		sqlSession.insert("Trainer.insertProfile3", map);
	}

	
	// 12. 프로필 - 서비스 키워드 update 메소드 (전효정)
	@Override
	public void updateProfile3(SqlSessionTemplate sqlSession, String mno, String keyword) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("keyword", keyword);
		
		sqlSession.update("Trainer.updateProfile3", map);
	}

	
	// 13. 프로필 - 자격증 수정하기 insert 메소드 (전효정)
	@Override
	public void insertCertificationImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		map.put("ext", ext);
		
		sqlSession.insert("Trainer.insertCertificationImg", map);
	}


	// 14. 자격증 존재 여부 확인 메소드 (전효정)
	@Override
	public List<Attachment> checkCertificationAttachment(SqlSessionTemplate sqlSession, int mno) {
		return sqlSession.selectList("Trainer.checkCertificationAttachment", mno);
	}


	// 15. 프로필 - 미디어/자격증 삭제하기 (전효정)
	@Override
	public void deleteMidea(SqlSessionTemplate sqlSession, String mno, String thisModiName) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("thisModiName", thisModiName);
		
		sqlSession.update("Trainer.deleteMedia", map);
	}


	// 16. 매칭 요청 거절하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
	@Override
	public void updateMprocess1(SqlSessionTemplate sqlSession, String uno, String tno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", uno);
		map.put("tno", tno);
		
		sqlSession.update("Trainer.updateMprocess1", map);
	}


	// 17. 매칭 요청 수락하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
	@Override
	public void updateMprocess2(SqlSessionTemplate sqlSession, String uno, String tno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", uno);
		map.put("tno", tno);
		
		sqlSession.update("Trainer.updateMprocess2", map);
	}


	// 18. 입금 확인 요청 수락하기 버튼 클릭 시 MPROCESS UPDATE (전효정)
	@Override
	public void updateMprocess3(SqlSessionTemplate sqlSession, String uno, String tno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("uno", uno);
		map.put("tno", tno);
		
		sqlSession.update("Trainer.updateMprocess3", map);
	}











	

	
	



	
	
	
	

	






	




	

	
	



}
