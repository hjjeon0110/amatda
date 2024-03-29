package com.kh.amd.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.amd.board.model.service.BoardService;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.common.CommonUtils;
import com.kh.amd.member.model.service.MemberService;
import com.kh.amd.member.model.vo.Member;
@SessionAttributes("loginUser")
@Controller

public class MemberController {
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private MemberService ms;
	
	@Autowired
	private BoardService bs;
	
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
				String id = loginUser.getUserId();
				String realId = id.substring(0,1) + "**" + id.substring(2,3) + "*" +id.substring(4,5) + "*" +  id.substring(6,id.length());
				response.getWriter().print(realId);
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
	
	
	//비밀번호 찾기
	@RequestMapping("findPwd.me")
	public void findPwd(String email,Model model, Member m, HttpServletResponse response, HttpServletRequest request ) {
		 
		
		String random = "1234567890abcdefghijklmnopqrstuvwxyz";
		
		
		String randomCode = "";
		for(int i = 0; i <= 10; i++) {
			int num = (int)(Math.random() * random.length()) + 1;
			randomCode += random.substring((num-1), num);
		}
		
		String password =randomCode;
		System.out.println("password가 뭐니: " + password);
		
		
		m.setUserPwd(password);
		m.setEmail(email);
		
		sendEmail2(email, password);
		
		int randomPwd = ms.updateRandomPwd(m);
		
		 System.out.println("randonPwd결과: " + randomPwd);
		 password = passwordEncoder.encode(password);
		 m.setUserPwd(password);
		 int encodeRandomPwd = ms.updateRandomPwd(m);
		 System.out.println("encodeRanomPwd결과: " + encodeRandomPwd);
		 System.out.println("서비스로 넘어가볼까");
		 System.out.println("input창에서 입력한 정보들: " + m);
		 
		
		 
		 if(encodeRandomPwd !=0) {
				try {
					response.getWriter().print("ok");
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			}else {
				try {
					response.getWriter().print("fail");
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			}
	}
	
	
	
	//비밀번호찾기 -임시비밀번호 보내기
	private void sendEmail2(String email, String password) {
		String host = "smtp.gmail.com";

		String to1 = email;
		
		System.out.println("to1: " + to1);

		String from = "wln02036549@gmail.com";

	

		String from_name = "우리나 운영자";

		
		String content="임시비밀번호 [" + password+ "]";

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
			msg.setSubject("아맞다에서 보낸 임시비밀번호입니다."); //제목
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
	
	
	
	//임시비밀번호 폼 기능
	@RequestMapping("updatePwd.me")
	public void updatePwd(String userPwd, HttpServletResponse response) {
		
		 System.out.println("비밀번호 변경폼으로 가기전 userPwd: "+userPwd); 
		
		 try {
			response.getWriter().print("success");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	
	@RequestMapping("updatePwd2.me")
	public String updatePwd2(String userPwd) {
		
		System.out.println(userPwd); 
		
		 
		return "common/updatePwd";
		
	}
	
	//비밀번호 변경
	@RequestMapping("updateMyPwd.me")
	public void updateMyPwd(Model model, String userPwd, HttpServletResponse response,HttpServletRequest request) {
		
		
		System.out.println("받아온 userPwd" + userPwd);
		String updateEncPwd = passwordEncoder.encode(userPwd);
		System.out.println(updateEncPwd);
		System.out.println("서비스로 왔어요");
		
		Member m = new Member();
		m.setUserPwd(updateEncPwd);
		
		int result = ms.updateMyPwd(m);
		
		
		
	
		
		  if(result !=0) { 
			  try { 
				 
				  response.getWriter().print("ok"); 
		  } catch (IOException e) {
		  
		  e.printStackTrace(); } 
			  
		  }else { 
			  try { 
				  response.getWriter().print("fail"); 
				  }
		  catch (IOException e) {
		  
			  e.printStackTrace(); 
		   } 
	}
		 
		 
	}
	
	@RequestMapping("selectJoinType.me")
	public String joinType() {
		return "common/selectJoinType";
	}
	
	// 메인 페이지 이동 추천 신입, 추천 회원 리스트 추가(김진환)
	@RequestMapping("showMain.me")
	public String showMain(HttpServletResponse response,Model model) {
		 System.out.println("bestReviewSelect in Con 확인 ");
		 
		 List<Board> list = bs.bestReviewSelect();
		 
		 List<Member> bestTrList = ms.bestTrainer();
		 
		 List<Member> newTrList = ms.newComerTrainerList();
		 
		 //System.out.println(bestTrList);
		 
		/*
		 * System.out.println("Member에서 list조회: " + list);
		 * 
		 * response.setContentType("application/json");
		 * response.setCharacterEncoding("UTF-8");
		 * 
		 * try { new Gson().toJson(list,response.getWriter()); } catch (JsonIOException
		 * e) { // TODO Auto-generated catch block e.printStackTrace(); } catch
		 * (IOException e) { // TODO Auto-generated catch block e.printStackTrace(); }
		 * 
		 * 
		 */
		 Member m1 = bestTrList.get(0);
		 Member m2 = bestTrList.get(1);
		 Member m3 = bestTrList.get(2);
		 
		 model.addAttribute("m1", m1);
		 model.addAttribute("m2", m2);
		 model.addAttribute("m3", m3);
		 
		 Member n1 = newTrList.get(0);
		 Member n2 = newTrList.get(1);
		 Member n3 = newTrList.get(2);
		 
		 model.addAttribute("n1", n1);
		 model.addAttribute("n2", n2);
		 model.addAttribute("n3", n3);

		 
		 
		 model.addAttribute("list",list);
		return "main/main";
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
			try {
				loginUser = ms.loginMember(m);
				model.addAttribute("loginUser", loginUser);
				System.out.println(loginUser);
				return "redirect:index.jsp";
				
			} catch (LoginException e) {
				model.addAttribute("msg", e.getMessage());
				return "common/errorPage";
			}	
			
	}
	
	
	
	@RequestMapping("gotoRandomPwdWrite.ms")
	public String gotoRandomPwdWrite() {
		return "common/gotoRandomPwdWrite";
	}
	
	
	
	//로그아웃
	@RequestMapping("logout.me")
	public String logout(SessionStatus status) {  //SessionStatus: 세션 상태 관리
		
		status.setComplete();
		
		return "redirect:index.jsp";
		
	}
	
	//로그인 뷰
	@RequestMapping("loginMember.me")
	public String loginMember() {
		return "common/login";
	}
	
	@RequestMapping("trainerJoinView.me")
	public String showTrainerJoinView() {
		return "common/trainerJoin";
	}
	
	@RequestMapping("insertMember.me")
	public void insertMember(Member m, HttpServletResponse response) {
		
		
		System.out.println("일반 회원가입: "+m);
		
		m.setUserPwd(passwordEncoder.encode(m.getUserPwd()));
		
		int result = ms.insertMember(m);
		
		
		int dummyImgInsert = ms.dummyImgInsert();
		
		
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
	  
	  
	  //인증번호 이메일 보내기
	  @RequestMapping("emailCheckNumSend.me")
	  public ModelAndView emailAuth(HttpServletResponse response, HttpServletRequest request) throws Exception{
			
			String email = request.getParameter("email");
			
			String authNum = "";
			authNum = RandomNum();
			
			//이메일 전송
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
		
		
		//개인정보 수정전 정보 불러오기
		@RequestMapping("selectMyInfo.ms")
		public void selectMyInfo(String mno, HttpServletResponse response) {
			
			System.out.println("ajax에서 받아온 mno: " + mno);
			
		
			
			Member result =  ms.selectMyInfo(mno);
			
			if(result!=null) {
				System.out.println("db잘감");
				System.out.println(result);
				try {
					
					response.setContentType("application/json");
					response.setCharacterEncoding("UTF-8");
					
					new Gson().toJson(result, response.getWriter());
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else {
				System.out.println("db못감");
			
			}
		}
		
		
		
		@RequestMapping("updateMyInfo.ms")
		public void updateMyInfo(HttpServletResponse response,String mno, String name, String userId, String userPwd, String phone, String gender) {
			
			System.out.println("수정서블릿오니");
			System.out.println("mno: " + mno);
			System.out.println("name: " + name);
			System.out.println("userPwd: " + userPwd);
			System.out.println("phone: " + phone);
			System.out.println("gender: " + gender);
			
			Member m = new Member();
			int mno2 = Integer.parseInt(mno);
			m.setMno(mno2);
			m.setName(name);
			m.setPhone(phone);
			m.setGender(gender);
			m.setUserId(userId);
			m.setUserPwd(passwordEncoder.encode(userPwd));
			int result = ms.updateMyInfo(m);
			
			if(result>0) {
				System.out.println("result값이 1이 나옴");
				try {
					response.getWriter().print("success");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}else {
				try {
					response.getWriter().print("fail");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		
		//마이페이지에서 이미지 등록
		@RequestMapping("updateMyImg.me")
		public String updateMyImg(HttpServletRequest request, String mno, @RequestParam(name="modifypicture", required=false) MultipartFile modifypicture){
		
			System.out.println("mno: " + mno);
			System.out.println("modifypicture: " + modifypicture);
			String root = request.getSession().getServletContext().getRealPath("resources");
			
			String filePath = root + "\\uploadFiles";		
			String originalFilename = modifypicture.getOriginalFilename();
			String ext = originalFilename.substring(originalFilename.lastIndexOf(".")); 
		
			String changeName = CommonUtils.getRandomString();
			try {
				modifypicture.transferTo(new File(filePath + "\\" + changeName + ext));
				
				ms.updateMyImg(mno, filePath, originalFilename,ext, changeName);
				System.out.println("사진 업데이트 성공");
				 	
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return "redirect:showMyPagePrivacy.us?mno=" + mno;
			
			
		}
		
		
		

}