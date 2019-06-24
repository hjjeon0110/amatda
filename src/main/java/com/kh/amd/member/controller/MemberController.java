package com.kh.amd.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.amd.member.model.service.MemberService;
import com.kh.amd.member.model.vo.Member;
@SessionAttributes("loginUser")
@Controller

public class MemberController {
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private MemberService ms;
	
	//아이디,비밀번호 찾기 뷰 페이지로 이동
	@RequestMapping("findIdPwd.me")
	public String find() {
		return "common/findIdPwd";
	}
	
	//아이디 찾기
	@RequestMapping("findId.me")
	public void find(Model model, Member m, HttpServletResponse response) {
		
		Member loginUser;
		loginUser  = ms.selectId(m);
		
		System.out.println("아이디 정보 조회를 위한 회원 조회: "+loginUser);
		
		
		PrintWriter out;
		try {
			out = response.getWriter();
			if(loginUser !=null) {
				
				//jsp(ajax)로 보낼값
				response.getWriter().print(loginUser.getUserId());
			}else {
				response.getWriter().print("FAIL");
			}
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	
	@RequestMapping("selectJoinType.me")
	public String joinType() {
		return "common/selectJoinType";
	}
	
	//사용자 약관동의
	@RequestMapping("agree.me")
	public String agree() {
		return "common/agree";
	}
	
	//트레이너 약관동의
	@RequestMapping("agree2.me")
	public String agree2() {
		return "common/agree2";
	}
	
	
	@RequestMapping("memberJoinView.me")
	public String showMemberJoinView() {
		return "common/memberJoin";
	}
	
	//로그인
	@RequestMapping("login.me")
	public String login(Model model,Member m) {
			Member loginUser;
			loginUser = ms.loginMember(m);
			model.addAttribute("loginUser", loginUser);
			
			System.out.println(loginUser);
			return "redirect:index.jsp";
		
	}
	
	//로그아웃
	@RequestMapping("logout.me")
	public String logout(SessionStatus status) {  //SessionStatus: 세션 상태 관리
		
		status.setComplete();
		
		return "redirect:index.jsp";
		
	}
	
	@RequestMapping("loginMember.me")
	public String loginMember() {
		return "common/login";
	}
	
	@RequestMapping("trainerJoinView.me")
	public String showTrainerJoinView() {
		return "common/trainerJoin";
	}
	
	@RequestMapping("insertMember.me")
	public String insertMember(Model model,Member m) {
		
		
		System.out.println("일반 회원가입: "+m);
		
		m.setUserPwd(passwordEncoder.encode(m.getUserPwd()));
		
		ms.insertMember(m);
		
		
		
		return "redirect:index.jsp";
	}
	
	@RequestMapping("insertTrainer.me")
	public String insertTrainer(Model model, Member m) {
		
		System.out.println("트레이너 회원가입 : " + m);
		m.setUserPwd(passwordEncoder.encode(m.getUserPwd()));
		ms.insertTrainer(m);
		
		return "redirect:index.jsp";
	}
	
	
	
	
	//HttpServletResponse를 적어준이유는 jsp(ajax)로 보낼 값이 있기 때문에
	@RequestMapping("checkId.me")
	public ModelAndView checkId(String userId, ModelAndView mv, HttpServletResponse response) {
		
		int result = ms.idCheck(userId);
		
		Member m = new Member();
		m.setUserId(userId);
		
		mv.addObject("member", m);
		mv.setViewName("jsonView");
		
		PrintWriter out;
		try {
			out = response.getWriter();
			if(result > 0) {
				
				//jsp(ajax)로 보낼값
				response.getWriter().print("FAIL");
			}else {
				response.getWriter().print("GOOD");
			}
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return mv;
	}
	
	
	
	  @RequestMapping("checkEmail.me") 
	  public ModelAndView checkEmail(String email, ModelAndView mv, HttpServletResponse response) { 
		 int result =ms.emailCheck(email);
		 
		 Member m = new Member();
			m.setEmail(email);
			
			mv.addObject("member", m);
			mv.setViewName("jsonView");
			
			PrintWriter out;
			try {
				out = response.getWriter();
				if(result > 0) {
					response.getWriter().print("FAIL");
				}else {
					response.getWriter().print("GOOD");
				}
				out.flush();
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 return mv;
	  }
	  
	  
	  // 인증번호 이메일 보내기

		@RequestMapping("emailCheckNumSend.me")
		
		public ModelAndView emailAuth(HttpServletResponse response, HttpServletRequest request) throws Exception{
			
			String email = request.getParameter("email");
			
			System.out.println("받아온 email: " + email);
			
			String authNum = "";
			authNum = RandomNum();
			
			sendEmail(email, authNum);
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/common/emailAuth");
			mv.addObject("email", email);
			mv.addObject("authNum", authNum);
			
			return mv;
		}
		

		private void sendEmail(String email, String authNum) {
			String host = "smtp.gmail.com";

			String to1 = email;
			
			System.out.println("to1: " + to1);

			String from = "wln02036549@gmail.com";

		

			String from_name = "우리나 운영자";

			
			String content="인증번호 [" + authNum+ "]";

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
				msg.setSubject("아맞다에서 보낸 인증번호입니다."); //제목
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
			
		}

		private String RandomNum() {
			StringBuffer buffer = new StringBuffer();
			for(int i=0; i<=6; i++) {
				int n=(int)(Math.random() * 10);
				buffer.append(n);
			}
			return buffer.toString();
		}
		
		

}
