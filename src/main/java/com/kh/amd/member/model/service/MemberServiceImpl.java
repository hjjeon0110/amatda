package com.kh.amd.member.model.service;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.security.auth.login.LoginException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.amd.member.model.dao.MemberDao;
import com.kh.amd.member.model.vo.Member;



@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	MemberDao md;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	
	//일반 사용자 회원가입
	@Override
	public int insertMember(Member m) {
		
		return md.insertMember(sqlSession,m);
		
		
	}

	//트레이너 회원가입
	@Override
	public int insertTrainer(Member m) {
		
		
		int result = 0;
		int result2 = 0;
		int result1 = md.insertTrainer(sqlSession, m);
		int mno = md.selectMno(sqlSession, m);
		m.setMno(mno);
		System.out.println("result1 mno: " + m.getMno());
		
		if(result1>0) {
			result2 = md.insertTrainerInfo(sqlSession,m);
			System.out.println("result2의 트레이너: "+m);
		}else {
			System.out.println("트레이너 추가정보 입력 실패!");
		}
		if(result1>0 && result2>0) {
			result = 1;
		}else {
			result = 0;
		}
		
		return result;
		
	}

	//아이디 중복체크
	@Override
	public int idCheck(String userId) {
		int result = md.idCheck(sqlSession,userId);
		System.out.println("MemberServiceImpl: "+result);
		return result;
	}
	
	//이메일 중복체크
	@Override
	public int emailCheck(String email) {
		int result = md.emailCheck(sqlSession,email);
		return result;
	}

	//로그인
	@Override
	public Member loginMember(Member m) throws LoginException {
		Member loginUser = null;

		// 아이디를 통해 비밀번호 조회
		String encPassword = md.selectEncPassword(sqlSession, m);
		System.out.println("encPassword: " + encPassword);
		
        if(!passwordEncoder.matches(m.getUserPwd(), encPassword)) {
            throw new LoginException("로그인 실패!");
        }else {
            loginUser = md.selectMember(sqlSession, m);
			System.out.println("서비스에서 조회 회원 정보 조회: " + loginUser);
        }
		return loginUser;
	}
	
	//아이디 찾기
	@Override
	public Member selectId(Member m) {
		Member loginUser = null;
		
		loginUser = md.selectId(sqlSession, m);
		
		return loginUser;
	}

	//비밀번호 찾기
	
	  @Override 
	  public int findPwd(Member m) throws LoginException {
	  
	  System.out.println("서비스로 넘어오긴함"); 
	  int result = 0;
	  
	 
	  result = md.findPassword(sqlSession,m);
	  System.out.println("result: "+result);
	  
	  
	  
	  
	 
	  
	  return result; 
	  
	  }
	 
	
	

	public String sendPassword(String email, String pwd) {
		
		
		String host = "smtp.gmail.com";

		String to1 = email;
		
		System.out.println("to1: " + to1);

		String from = "wln02036549@gmail.com";

	

		String from_name = "우리나 운영자";

		
		String content="회원님의  비밀번호는 : " + pwd;

		System.out.println("from: " + from);
		

		try {
			Properties props = new Properties();
			
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", host);
			props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.port", "465");
			props.put("mail.smtp.user", from);
			props.put("mail.smtp.auth", "true");

			Session mailSession = Session.getDefaultInstance(props, new javax.mail.Authenticator() { 
				protected PasswordAuthentication getPasswordAuthentication() { 
					return new PasswordAuthentication("wln02036549@gmail.com", "011flskdidchlrh"); 
					} 
				});

			
			MimeMessage msg = new MimeMessage(mailSession);
			System.out.println("msg가 뭔가요? "+msg);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(from_name, "UTF-8", "B")));
			
			InternetAddress[] address1= { new InternetAddress(to1)};
			System.out.println("address1: " + address1 );
			msg.setRecipients(Message.RecipientType.TO, address1); //받는사람
			msg.setSubject("아맞다에서 보낸 비밀번호입니다."); //제목
			msg.setSentDate(new java.util.Date());
			msg.setContent(content, "text/html;charset=euc-kr");
			
			
			
		
			System.out.println("date: "+msg.getSentDate());
			System.out.println("content: "+msg.getContent());
			System.out.println("subject: "+msg.getSubject());
			System.out.println("msg: " + msg);
			Transport.send(msg);

			System.out.println("성공");
			
		}catch(MessagingException e) {
			System.out.println("언제쯤");

		} catch (Exception e) {
			
			System.out.println("전송안됨");

		}
		return pwd;

	}

	

	//비밀번호 찾기
	@Override
	public Member selectPwd(Member m) {
		
		Member loginUser;
	    loginUser = md.selectPwd(sqlSession,m);
		
		return loginUser;
	}
	
	
	
	//비밀번호 변경
		@Override
		public int updateMyPwd(Member m) {
			int result = 0;
			result = md.updateMyPwd(sqlSession,m);
			
			return result;
		}
	
}
