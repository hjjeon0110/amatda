package com.kh.amd.mission.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.amd.mission.model.service.MissionService;
import com.kh.amd.mission.model.vo.Mission;
@SessionAttributes("loginUser")
@Controller
public class MissionController {

	@Autowired
	private MissionService ms;
	
	
	//사용자용 캘린더 폼으로 이동
	@RequestMapping("matching.ms")
	public String goCalendar(Model model, String mno) {
		

		return "mission/mission";
	}
	
	
	//트레이너용 미션등록 or 미션수정 선택 폼으로 이동
	@RequestMapping("trainerMatching.ms")
	public String goTrainerCalendar() {
		return "mission/selectTCalendarType";
	}
	
	
	//트레이너용 미션수정하기 폼으로 이동
	@RequestMapping("goUpdateMission.ms")
	public String goUpdateMission() {
		return "mission/tmissionUpdate";
	}
	
	
	//트레이너용 미션등록하기 폼으로 이동
	@RequestMapping("goInsertMission.ms")
	public String goInsertMission() {
		return "mission/tmissionInsert";
	}
	
	//미션수정 - 아침 식단 내용
	@RequestMapping("updateBreakEat.ms")
	public void updateBreakEat(HttpServletRequest request, HttpServletResponse response) {
		String mno = request.getParameter("mno");
		int mno2 = Integer.parseInt(mno);
		String mDate2 = request.getParameter("mDate2");
		String breakfast2 = request.getParameter("breakfast2");
		String eating = request.getParameter("eating");  //식단
		String breakf = request.getParameter("breakf");  //아침
		
		Mission m = new Mission();
		m.setTno(mno2);
		m.setmDate(mDate2);
		m.setmContent(breakfast2);
		m.setmType(eating);
		m.setmTime(breakf);
		
		System.out.println("진짜 미션 수정 (아침 식단 내용) : " + m);
		
		int result = ms.updateBreakEat(m);
		
		System.out.println("미션수정 db갔다옴: " + result);
		
		
		PrintWriter out;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	
	
	//진짜 스프링을 이용한 ajax & controller
	//미션수정 - 점심 식단 내용
	@RequestMapping("updateLunchEat.ms")
	public void updateLunchEat(String mno, String mDate2, String lunch2, String eating, String lun, HttpServletResponse response) {
		/*
		 * String mno = request.getParameter("mno"); int mno2 = Integer.parseInt(mno);
		 * String mDate2 = request.getParameter("mDate2"); String lunch2 =
		 * request.getParameter("lunch2"); String eating =
		 * request.getParameter("eating"); //식단 String lun =
		 * request.getParameter("lun"); //아침
		 */		
		int mno2 = Integer.parseInt(mno);
		Mission m = new Mission();
		m.setTno(mno2);
		m.setmDate(mDate2);
		m.setmContent(lunch2);
		m.setmType(eating);
		m.setmTime(lun);
			
		System.out.println("진짜 미션 수정 (점심 식단 내용) : " + m);
			
		int result = ms.updateLunchEat(m);
		
		if(result>0) {
			try {
				response.getWriter().print("success");
			} catch (IOException e) {
				try {
					response.getWriter().print("fail");
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			
		}
			
		System.out.println("미션수정 db갔다옴: " + result);
	}
	
	
	//미션수정 - 저녁 식단 내용
	@RequestMapping("updateDinnerEat.ms")
	public void updateDinnerEat(String mno, String mDate2, String dinner2, String eating, String din, HttpServletResponse response) {
		
		int mno2 = Integer.parseInt(mno);
		Mission m = new Mission();
		m.setTno(mno2);
		m.setmDate(mDate2);
		m.setmContent(dinner2);
		m.setmType(eating);
		m.setmTime(din);
			
		System.out.println("진짜 미션 수정 (저녁 식단 내용) : " + m);
			
		int result = ms.updateDinnerEat(m);
			
		System.out.println("미션수정 db갔다옴: " + result);
			
		if(result>0) {
			try {
				response.getWriter().print("success");
			} catch (IOException e) {
				try {
					response.getWriter().print("fail");
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			
		}
		
	}
	
	
	
	
	//미션수정 - 아침운동 내용 & 아침운동 링크
	@RequestMapping("updateBreakEx.ms")
	public void updateBreakEx(String mno, String mDate2, String breakE, String breakEx2, String exercise, String breakExLink2, HttpServletResponse response) {
		
		int mno2 = Integer.parseInt(mno);
		Mission m = new Mission();
		m.setTno(mno2);
		m.setmDate(mDate2);
		m.setmContent(breakEx2);
		m.setmType(exercise);
		m.setmTime(breakE);
		m.setmLink(breakExLink2);
			
		System.out.println("진짜 미션 수정 (아침 운동 내용 & 링크) : " + m);
			
		int result = ms.updateBreakEx(m);
			
		System.out.println("미션수정 db갔다옴: " + result);
			
		if(result>0) {
			try {
				response.getWriter().print("success");
			} catch (IOException e) {
				try {
					response.getWriter().print("fail");
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			
		}
		
	}
	
	
	
	
	
	//미션수정 - 점심운동 내용 & 점심운동 링크
		@RequestMapping("updateLunchEx.ms")
		public void updateLunchEx(String mno, String mDate2, String lunE, String lunchEx2,String exercise, String lunchExLink2, HttpServletResponse response) {
			
			int mno2 = Integer.parseInt(mno);
			Mission m = new Mission();
			m.setTno(mno2);
			m.setmDate(mDate2);
			m.setmContent(lunchEx2);
			m.setmType(exercise);
			m.setmTime(lunE);
			m.setmLink(lunchExLink2);
				
			System.out.println("진짜 미션 수정 (점심 운동 내용 & 링크) : " + m);
				
			int result = ms.updateLunchEx(m);
				
			System.out.println("미션수정 db갔다옴: " + result);
				
			if(result>0) {
				try {
					response.getWriter().print("success");
				} catch (IOException e) {
					try {
						response.getWriter().print("fail");
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				}
				
			}
			
		}
		
	
	
	
		//미션수정 - 저녁운동 내용 & 저녁운동 링크
				@RequestMapping("updateDinnerEx.ms")
				public void updateDinnerEx(String mno, String mDate2, String dinE, String dinnerEx2, String exercise, String dinnerExLink2, HttpServletResponse response) {
					
					int mno2 = Integer.parseInt(mno);
					Mission m = new Mission();
					m.setTno(mno2);
					m.setmDate(mDate2);
					m.setmContent(dinnerEx2);
					m.setmType(exercise);
					m.setmTime(dinE);
					m.setmLink(dinnerExLink2);
						
					System.out.println("진짜 미션 수정 (저녁 운동 내용 & 링크) : " + m);
						
					int result = ms.updateDinnerEx(m);
						
					System.out.println("미션수정 db갔다옴: " + result);
						
					if(result>0) {
						try {
							response.getWriter().print("success");
						} catch (IOException e) {
							try {
								response.getWriter().print("fail");
							} catch (IOException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
						}
						
					}
					
				}
				
	
	
	
	
	//트레이너용 미션수정하기 컨트롤러
	//아침운동링크
	@RequestMapping("updateMission.ms")
	public void updateMission(HttpServletRequest request, HttpServletResponse response) {
		String mno = request.getParameter("mno");
		int mno2 = Integer.parseInt(mno);
		String mDate2 = request.getParameter("mDate2");
		String breakfast2 = request.getParameter("breakfast2");
		String lunch2 = request.getParameter("lunch2");
		String dinner2 = request.getParameter("dinner2");
		String breakEx2 = request.getParameter("breakEx2");
		String lunchEx2 = request.getParameter("lunchEx2");
		String dinnerEx2 = request.getParameter("dinnerEx2");
		String breakExLink2 = request.getParameter("breakExLink2");
		String lunchExLink2 = request.getParameter("lunchExLink2");
		String dinnerExLink2 = request.getParameter("dinnerExLink2");
		String eating = request.getParameter("eating");
		String exercise = request.getParameter("exercise");
		
		String breakf = request.getParameter("breakf");
		String lun = request.getParameter("lun");
		String din = request.getParameter("din");
		
		String breakE = request.getParameter("breakE");
		String lunE = request.getParameter("lunE");
		String dinE = request.getParameter("dinE");
		
		System.out.println("mno2: " + mno);
		System.out.println("mDate2: " + mDate2);
		System.out.println("breakfast2: " + breakfast2);
		System.out.println("lunch2: " + lunch2);
		System.out.println("eating: " + eating);
		System.out.println("exercise: " + exercise);
		System.out.println("breakf: " + breakf);
		System.out.println("dinE: " + dinE);
		
		Mission m = new Mission();
		m.setTno(mno2);
		m.setmDate(mDate2);
		m.setmType(exercise);
		m.setmTime(breakE);
		m.setmLink(breakExLink2);
		System.out.println("Controller Mission m : " + m);
		int result = ms.updateBreakExLink(m);
		System.out.println("DB에서 잘 update했니: " + result);
		
		
		PrintWriter out;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	//점심운동링크
		@RequestMapping("updateLunchExLink.ms")
		public void updateLunchExLink(HttpServletRequest request, HttpServletResponse response) {
			String mno = request.getParameter("mno");
			int mno2 = Integer.parseInt(mno);
			String mDate2 = request.getParameter("mDate2");
			String breakfast2 = request.getParameter("breakfast2");
			String lunch2 = request.getParameter("lunch2");
			String dinner2 = request.getParameter("dinner2");
			String breakEx2 = request.getParameter("breakEx2");
			String lunchEx2 = request.getParameter("lunchEx2");
			String dinnerEx2 = request.getParameter("dinnerEx2");
			String breakExLink2 = request.getParameter("breakExLink2");
			String lunchExLink2 = request.getParameter("lunchExLink2");
			String dinnerExLink2 = request.getParameter("dinnerExLink2");
			String eating = request.getParameter("eating");
			String exercise = request.getParameter("exercise");
			
			String breakf = request.getParameter("breakf");
			String lun = request.getParameter("lun");
			String din = request.getParameter("din");
			
			String breakE = request.getParameter("breakE");
			String lunE = request.getParameter("lunE");
			String dinE = request.getParameter("dinE");
			
			System.out.println("mno2: " + mno);
			System.out.println("mDate2: " + mDate2);
			System.out.println("breakfast2: " + breakfast2);
			System.out.println("lunch2: " + lunch2);
			System.out.println("eating: " + eating);
			System.out.println("exercise: " + exercise);
			System.out.println("breakf: " + breakf);
			System.out.println("dinE: " + dinE);
			
			Mission m = new Mission();
			m.setTno(mno2);
			m.setmDate(mDate2);
			m.setmType(exercise);
			m.setmTime(lunE);
			m.setmLink(lunchExLink2);
			System.out.println("Controller Mission m : " + m);
			int result = ms.updateBreakExLink(m);
			System.out.println("DB에서 잘 update했니: " + result);
			
			
			PrintWriter out;
			try {
				out = response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	

	//미션수정전, 아침식단 내용 조회
	@RequestMapping("selectMissionList.ms")
	public void selectMissionList(HttpServletRequest request, HttpServletResponse response) {
		String mno = request.getParameter("mno"); 
		int mno2 = Integer.parseInt(mno);
		String mDate0 = request.getParameter("mDate0");
	
		response.setContentType("text/html; charset=utf-8");
		
		//System.out.println("select에서 mDate2: " + mDate0);
	
		Mission m = new Mission();
		m.setmDate(mDate0);
		m.setTno(mno2);
		//System.out.println("미션수정전 아침식단 내용 조회 m : " + m);
		m = ms.selectMissionList(m);
		//System.out.println("미션수정전 아침식단 내용 조회 후  m : " + m);
		
		
		try {
			String mContent = URLEncoder.encode(m.getmContent(), "UTF-8");
			mContent = mContent.replaceAll("\\+", "%20");
			//System.out.println("인코딩된 : "+mContent);
			
			
			
			JSONObject estiMateJson = new JSONObject();
			estiMateJson.put("mContent", mContent);

			
			response.setContentType("application/json");
			
			
			try {
			
					new Gson().toJson(estiMateJson,response.getWriter());
			
			} catch (JsonIOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	//미션수정전, 점심식단 조회
	@RequestMapping("selectMissionLunchList.ms")
	public void selectMissionLunchList(HttpServletRequest request, HttpServletResponse response) {
		
		String mno = request.getParameter("mno"); 
		int mno2 = Integer.parseInt(mno);
		String mDate0 = request.getParameter("mDate0");
		
		response.setContentType("text/html; charset=utf-8");
		
		System.out.println("select에서 mDate2: " + mDate0);
	
		Mission m = new Mission();
		m.setmDate(mDate0);
		m.setTno(mno2);
		//System.out.println("미션수정전 점심식단 내용 조회 m : " + m);
		m = ms.selectMissionLunchList(m);
		//System.out.println("미션수정전 점심식단 내용  조회 후  m : " + m);
		
		
		try {
			String mContent = URLEncoder.encode(m.getmContent(), "UTF-8");
			mContent = mContent.replaceAll("\\+", "%20");
			//System.out.println("인코딩된 : "+mContent);
			
			
			
			JSONObject estiMateJson = new JSONObject();
			estiMateJson.put("mContent", mContent);

			
			response.setContentType("application/json");
			
			
			try {
				new Gson().toJson(estiMateJson,response.getWriter());
			} catch (JsonIOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	
	
	
	
	//미션수정전, 저녁식단 조회
		@RequestMapping("selectMissionDinnerList.ms")
		public void selectMissionDinnerList(HttpServletRequest request, HttpServletResponse response) {
			String mno = request.getParameter("mno"); 
			int mno2 = Integer.parseInt(mno);
			String mDate0 = request.getParameter("mDate0");
			
			response.setContentType("text/html; charset=utf-8");
			
			//System.out.println("select에서 mDate2: " + mDate0);
		
			Mission m = new Mission();
			m.setmDate(mDate0);
			m.setTno(mno2);
			//System.out.println("미션수정전 저녁 식단 내용  조회 m : " + m);
			m = ms.selectMissionDinnerList(m);
			//System.out.println("미션수정전 저녁 식단 내용 조회 후  m : " + m);
			
			
			try {
				String mContent = URLEncoder.encode(m.getmContent(), "UTF-8");
				mContent = mContent.replaceAll("\\+", "%20");
				//System.out.println("인코딩된 : "+mContent);
				
				
				
				JSONObject estiMateJson = new JSONObject();
				estiMateJson.put("mContent", mContent);

				
				response.setContentType("application/json");
				
				
				try {
					new Gson().toJson(estiMateJson,response.getWriter());
				} catch (JsonIOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
	
	
	//미션수정전, 아침운동 내용 조회
	@RequestMapping("selectBreakEx.ms")	
	public void selectBreakEx(HttpServletRequest request, HttpServletResponse response) {
		String mno = request.getParameter("mno"); 
		int mno2 = Integer.parseInt(mno);
		String mDate0 = request.getParameter("mDate0");
		response.setContentType("text/html; charset=utf-8");
		
		//System.out.println("select에서 mDate2: " + mDate0);
	
		Mission m = new Mission();
		m.setmDate(mDate0);
		m.setTno(mno2);
		//System.out.println("미션수정전 아침운동 내용 조회 m : " + m);
		m = ms.selectBreakEx(m);
		//System.out.println("미션수정전 아침운동 내용 조회 후  m : " + m);
		
		
		try {
			String mContent = URLEncoder.encode(m.getmContent(), "UTF-8");
			mContent = mContent.replaceAll("\\+", "%20");
			//System.out.println("인코딩된 : "+mContent);
			
			
			
			JSONObject estiMateJson = new JSONObject();
			estiMateJson.put("mContent", mContent);

			
			response.setContentType("application/json");
			
			
			try {
				new Gson().toJson(estiMateJson,response.getWriter());
			} catch (JsonIOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	//미션수정전, 점심운동 내용 조회
	
	  @RequestMapping("selectLunchEx.ms") 
	  public void selectLunchEx(HttpServletRequest request, HttpServletResponse response) {
	  String mno = request.getParameter("mno"); 
	  int mno2 = Integer.parseInt(mno);
	  String mDate0 = request.getParameter("mDate0");
	  response.setContentType("text/html; charset=utf-8");
	  
	  System.out.println("받아온  mDate0: " + mDate0);
	  
	  Mission m = new Mission(); 
	  m.setmDate(mDate0); 
	  m.setTno(mno2);
	  System.out.println("미션수정전 점심운동 내용 조회 m : " + m);
	  
	  
	  m = ms.selectLunchEx(m);
	  
	  System.out.println("미션수정전 점심운동 내용 조회 후 m : " + m);
	  
	  try {
			String mContent = URLEncoder.encode(m.getmContent(), "UTF-8");
			mContent = mContent.replaceAll("\\+", "%20");
			//System.out.println("인코딩된 : "+mContent);
			
			
			
			JSONObject estiMateJson = new JSONObject();
			estiMateJson.put("mContent", mContent);

			
			response.setContentType("application/json");
			
			
			try {
				new Gson().toJson(estiMateJson,response.getWriter());
			} catch (JsonIOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	  }
	
	  
	//미션수정전, 저녁운동 내용 조회
	    @RequestMapping("selectDinnerEx.ms") 
	    public void selectDinnerEx(HttpServletRequest request, HttpServletResponse response) {
	  	  String mno = request.getParameter("mno"); 
	  	  int mno2 = Integer.parseInt(mno);
	  	  String mDate0 = request.getParameter("mDate0");
	  	  response.setContentType("text/html; charset=utf-8");
	  	  
	  	  System.out.println("받아온  mDate0: " + mDate0);
	  	  
	  	  Mission m = new Mission(); 
	  	  m.setmDate(mDate0); 
	  	  m.setTno(mno2);
	  	  System.out.println("미션수정전 점심운동 내용 조회 m : " + m);
	  	  
	  	  
	  	  m = ms.selectDinnerEx(m);
	  	  
	  	  System.out.println("미션수정전 점심운동 내용 조회 후 m : " + m);
	  	  
	  	  try {
	  			String mContent = URLEncoder.encode(m.getmContent(), "UTF-8");
	  			mContent = mContent.replaceAll("\\+", "%20");
	  			//System.out.println("인코딩된 : "+mContent);
	  			
	  			
	  			
	  			JSONObject estiMateJson = new JSONObject();
	  			estiMateJson.put("mContent", mContent);

	  			
	  			response.setContentType("application/json");
	  			
	  			
	  			try {
	  				new Gson().toJson(estiMateJson,response.getWriter());
	  			} catch (JsonIOException e1) {
	  				// TODO Auto-generated catch block
	  				e1.printStackTrace();
	  			} catch (IOException e1) {
	  				// TODO Auto-generated catch block
	  				e1.printStackTrace();
	  			}
	  			
	  		} catch (UnsupportedEncodingException e) {
	  			// TODO Auto-generated catch block
	  			e.printStackTrace();
	  		}
	  	
	  	  }
	  
	//미션수정전, 아침운동 링크 조회
		@RequestMapping("selectMissionExList.ms")
		public void selectMissionExList(HttpServletRequest request, HttpServletResponse response) {
			String mno = request.getParameter("mno"); 
			int mno2 = Integer.parseInt(mno);
			String mDate0 = request.getParameter("mDate0");
			
			response.setContentType("text/html; charset=utf-8");
			
			//System.out.println("select에서 mDate2: " + mDate0);
		
			Mission m = new Mission();
			m.setmDate(mDate0);
			m.setTno(mno2);
			//System.out.println("미션수정전 아침운동 링크 조회 m : " + m);
			m = ms.selectMissionExList(m);
			//System.out.println("미션수정전 아침운동 링크 조회 후  m : " + m);
			
			
			try {
				String mLink = URLEncoder.encode(m.getmLink(), "UTF-8");
				mLink = mLink.replaceAll("\\+", "%20");
				//System.out.println("인코딩된 Link : "+mLink);
				
				
				
				JSONObject estiMateJson = new JSONObject();
				estiMateJson.put("mLink", mLink);

				
				response.setContentType("application/json");
				
				
				try {
					new Gson().toJson(estiMateJson,response.getWriter());
				} catch (JsonIOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		//미션수정전, 점심운동 링크 조회
		@RequestMapping("selectMissionExLunchList.ms")
		public void selectMissionExLunchList(HttpServletRequest request, HttpServletResponse response) {
			String mno = request.getParameter("mno"); 
			int mno2 = Integer.parseInt(mno);
			String mDate0 = request.getParameter("mDate0");
			
			
					
			//System.out.println("select에서 mDate2: " + mDate0);
				
			Mission m = new Mission();
			m.setmDate(mDate0);
			m.setTno(mno2);
			//System.out.println("미션수정전 점심운동 링크  조회 m : " + m);
			m = ms.selectMissionExLunchList(m);
			//System.out.println("미션수정전   점심운동 링크 조회 후  m : " + m);
					
				
					try {
						String mLink = URLEncoder.encode(m.getmLink(), "UTF-8");
						mLink = mLink.replaceAll("\\+", "%20");
						//System.out.println("인코딩된 Link : "+mLink);
						
						
						
						JSONObject estiMateJson = new JSONObject();
						estiMateJson.put("mLink", mLink);

						
						response.setContentType("application/json");
						
						
						try {
							new Gson().toJson(estiMateJson,response.getWriter());
						} catch (JsonIOException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						} catch (IOException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
						
					} catch (UnsupportedEncodingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
	
		
		
		
		
	
	//미션수정전, 저녁운동 링크 조회
			@RequestMapping("selectMissionExDinnerList.ms")
			public void selectMissionExDinnerList(HttpServletRequest request, HttpServletResponse response) {
				String mno = request.getParameter("mno"); 
				int mno2 = Integer.parseInt(mno);
				String mDate0 = request.getParameter("mDate0");
				
				
						
				//System.out.println("select에서 mDate2: " + mDate0);
					
				Mission m = new Mission();
				m.setmDate(mDate0);
				m.setTno(mno2);
				//System.out.println("미션수정전  저녁운동 링크 조회 m : " + m);
				m = ms.selectMissionExDinnerList(m);
				//System.out.println("미션수정전 저녁운동 링크 조회 후  m : " + m);
				
				
						
						try {
							String mLink = URLEncoder.encode(m.getmLink(), "UTF-8");
							mLink = mLink.replaceAll("\\+", "%20");
							//System.out.println("인코딩된 Link : "+mLink);
							
							
							
							JSONObject estiMateJson = new JSONObject();
							estiMateJson.put("mLink", mLink);

							
							response.setContentType("application/json");
							
							
							try {
								new Gson().toJson(estiMateJson,response.getWriter());
							} catch (JsonIOException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (IOException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
							
						} catch (UnsupportedEncodingException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
					}
	
			
			
			
	
	
		
	@RequestMapping("updateMissionPage.ms")
	public String updateMissionPage() {
		return "mission/missionUpdate";
	}
	
	
	 
	
	//사용자-> 미션수행여부 체크
	//아침식단
	@RequestMapping("checkBreak.ms")
	public void checkBreak(Model model,String breakCheck, int mno, String month, String morning, String selbreakfast, String eating, HttpServletResponse response) {
		System.out.println("오니");
		
		System.out.println("breakCheck: "+breakCheck);
		System.out.println("mno: " + mno);
		Mission m = new Mission();
		m.setUno(mno);
		m.setmDate(month);
		m.setmTime(morning);
		m.setmType(eating);
		m.setmContent(selbreakfast);
		m.setCompleteYN(breakCheck);
		
		System.out.println("아침미션수행체크: " +  m);
		int result = ms.insertCheckBreak(m); 
		
		
		if(result>0) {
			try {
				response.getWriter().print("success");
				
				
			} catch (IOException e) {
				try {
					response.getWriter().print("fail");
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			
		}
	}
	
	
	
	
	
	//점심식단
		@RequestMapping("checkLunch.ms")
		public void checkLunch(String lunchCheck, int mno, String month, String lunch, String sellunch, String eating, HttpServletResponse response) {
			System.out.println("오니");
			
			System.out.println("lunchCheck: "+lunchCheck);
			System.out.println("mno: " + mno);
			Mission m = new Mission();
			m.setUno(mno);
			m.setmDate(month);
			m.setmTime(lunch);
			m.setmType(eating);
			m.setmContent(sellunch);
			m.setCompleteYN(lunchCheck);
			
			System.out.println("점심미션수행체크: " +  m);
			int result = ms.insertCheckLunch(m); 
			
			
			if(result>0) {
				try {
					response.getWriter().print("success");
					
				} catch (IOException e) {
					try {
						response.getWriter().print("fail");
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				}
				
			}
		}
	
		
		
		
		//저녁식단
				@RequestMapping("checkDinner.ms")
				public void checkDinner(String dinnerCheck, int mno, String month, String dinner, String seldinner, String eating, HttpServletResponse response) {
					System.out.println("오니");
					
					System.out.println("dinnerCheck: "+ dinnerCheck);
					System.out.println("mno: " + mno);
					Mission m = new Mission();
					m.setUno(mno);
					m.setmDate(month);
					m.setmTime(dinner);
					m.setmType(eating);
					m.setmContent(seldinner);
					m.setCompleteYN(dinnerCheck);
					
					System.out.println("저녁미션수행체크: " +  m);
					int result = ms.insertCheckDinner(m); 
					
					
					if(result>0) {
						try {
							response.getWriter().print("success");
							
						} catch (IOException e) {
							try {
								response.getWriter().print("fail");
							} catch (IOException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
						}
						
					}
				}
	
	
		
		//아침운동
				@RequestMapping("checkBreakEx.ms")
				public void checkBreakEx(String breakExCheck, int mno, String month, String morning2, String selbreakEx, String exercising, String selbreakExLink, HttpServletResponse response) {
					System.out.println("오니");
					
					System.out.println("dinnerCheck: "+ breakExCheck);
					System.out.println("mno: " + mno);
					Mission m = new Mission();
					m.setUno(mno);
					m.setmDate(month);
					m.setmTime(morning2);
					m.setmType(exercising);
					m.setmContent(selbreakEx);
					m.setCompleteYN(breakExCheck);
					m.setmLink(selbreakExLink);
					
					System.out.println("아침운동 체크: " +  m);
					int result = ms.insertCheckBreakEx(m); 
					
					
					if(result>0) {
						try {
							response.getWriter().print("success");
							
						} catch (IOException e) {
							try {
								response.getWriter().print("fail");
							} catch (IOException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
						}
						
					}
				}			
				
	
				
				
		//점심운동
				@RequestMapping("checkLunchEx.ms")
				public void checkLunchEx(String lunchExCheck, int mno, String month, String lunch2, String sellunchEx, String exercising, String sellunchExLink, HttpServletResponse response) {
					System.out.println("오니");
					
					System.out.println("lunchCheck: "+ lunchExCheck);
					System.out.println("mno: " + mno);
					Mission m = new Mission();
					m.setUno(mno);
					m.setmDate(month);
					m.setmTime(lunch2);
					m.setmType(exercising);
					m.setmContent(sellunchEx);
					m.setCompleteYN(lunchExCheck);
					m.setmLink(sellunchExLink);
					
					System.out.println("점심운동 체크: " +  m);
					int result = ms.insertCheckLunchEx(m); 
					
					
					if(result>0) {
						try {
							response.getWriter().print("success");
							
						} catch (IOException e) {
							try {
								response.getWriter().print("fail");
							} catch (IOException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
						}
						
					}
				}			
								

				//점심운동
				@RequestMapping("checkDinnerEx.ms")
				public void checkDinnerEx(String dinnerExCheck, int mno, String month, String dinner2, String seldinnerEx, String exercising, String seldinnerExLink, HttpServletResponse response) {
					System.out.println("오니");
					
					System.out.println("lunchCheck: "+ dinnerExCheck);
					System.out.println("mno: " + mno);
					Mission m = new Mission();
					m.setUno(mno);
					m.setmDate(month);
					m.setmTime(dinner2);
					m.setmType(exercising);
					m.setmContent(seldinnerEx);
					m.setCompleteYN(dinnerExCheck);
					m.setmLink(seldinnerExLink);
					
					System.out.println("저녁운동 체크: " +  m);
					int result = ms.insertCheckDinnerEx(m); 
					
					
					if(result>0) {
						try {
							response.getWriter().print("success");
							
						} catch (IOException e) {
							try {
								response.getWriter().print("fail");
							} catch (IOException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
						}
						
					}
				}
				
				
				
				
	
	//트레이너 ->  미션등록
	@RequestMapping("insert.ms")
	public void insertBreakfast(HttpServletRequest request, HttpServletResponse response, int mno) {
		
		String mDate = request.getParameter("mDate");
		String breakfast = request.getParameter("breakfast");
		String lunch = request.getParameter("lunch");
		String dinner = request.getParameter("dinner");
		String breakEx = request.getParameter("breakEx");
		String lunchEx = request.getParameter("lunchEx");
		String dinnerEx = request.getParameter("dinnerEx");
		String breakExLink = request.getParameter("breakExLink");
		String lunchExLink = request.getParameter("lunchExLink");
		String dinnerExLink = request.getParameter("dinnerExLink");
		System.out.println("mno: "+mno);
		System.out.println("breakfast: " + breakfast);
		Mission mis = new Mission();
		mis.setmDate(mDate);
		mis.setTno(mno);
		mis.setmContent(breakfast);
		
		
		int result1 = ms.insertBreakfast(mis);
		
		if(result1>0) {
			mis.setmDate(mDate);
			mis.setTno(mno);
			mis.setmContent(lunch);
			
			int result2 = ms.insertLunch(mis);
			
			if(result2>0) {
				mis.setmDate(mDate);
				mis.setTno(mno);
				mis.setmContent(dinner);
				int result3 = ms.insertDinner(mis);
				
				if(result3>0) {
					mis.setmDate(mDate);
					mis.setTno(mno);
					mis.setmContent(breakEx);
					mis.setmLink(breakExLink);
					
					int result4 = ms.insertBreakEx(mis);
					
					if(result4>0) {
						mis.setmDate(mDate);
						mis.setTno(mno);
						mis.setmContent(lunchEx);
						mis.setmLink(lunchExLink);
						
						int result5 = ms.insertLunchEx(mis);
						
						if(result5>0) {
							mis.setmDate(mDate);
							mis.setTno(mno);
							mis.setmContent(lunchEx);
							mis.setmLink(dinnerExLink);
							
							int result6 = ms.insertDinnerEx(mis);
						}
					}
				}
			}
		}
		
		
	}
	
	//아침운동 조회
	@RequestMapping("select.ms")
	public void selectMission(HttpServletRequest request, HttpServletResponse response) {
		String today = request.getParameter("today");
		Mission m = new Mission();
		m.setmDate(today);
		System.out.println("controller m: " + m);
		Mission lm = ms.selectMission(m);
		System.out.println(lm);
		
		
		try {
			String  mContent = URLEncoder.encode(lm.getmContent(), "UTF-8");
			mContent = mContent.replaceAll("\\+", "%20");
			System.out.println(mContent);
			
			
			 String mLink = lm.getmLink();

			 System.out.println(mLink);
			
			
			JSONObject estiMateJson = new JSONObject();
			estiMateJson.put("mContent", mContent);
			estiMateJson.put("mLink", lm.getmLink());
			
			response.setContentType("application/json");
			
			
			try {
				new Gson().toJson(estiMateJson,response.getWriter());
			} catch (JsonIOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
         
          	
		
	}
	
	//점심운동 조회
	@RequestMapping("selectLunch.ms")
	public void selectLunchMission(HttpServletRequest request, HttpServletResponse response) {
		String today = request.getParameter("today");
		Mission m = new Mission();
		m.setmDate(today);
		System.out.println("controller m: " + m);
		Mission lm = ms.selectLunchMission(m);
		System.out.println(lm);
		
		
		try {
			String  mContent = URLEncoder.encode(lm.getmContent(), "UTF-8");
			mContent = mContent.replaceAll("\\+", "%20");
			System.out.println(mContent);
			
			
			 String mLink = lm.getmLink();

			 System.out.println(mLink);
			
			
			JSONObject estiMateJson = new JSONObject();
			estiMateJson.put("mContent", mContent);
			estiMateJson.put("mLink", lm.getmLink());
			
			response.setContentType("application/json");
			
			
			try {
				new Gson().toJson(estiMateJson,response.getWriter());
			} catch (JsonIOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
	}
	
	
	//저녁운동 조회
	@RequestMapping("selectDinner.ms")
	public void selectDinnerMission(HttpServletRequest request, HttpServletResponse response) {
		String today = request.getParameter("today");
		Mission m = new Mission();
		m.setmDate(today);
		System.out.println("controller m: " + m);
		Mission lm = ms.selectDinnerMission(m);
		System.out.println(lm);
		
		
		try {
			String  mContent = URLEncoder.encode(lm.getmContent(), "UTF-8");
			mContent = mContent.replaceAll("\\+", "%20");
			System.out.println(mContent);
			
			
			 String mLink = lm.getmLink();

			 System.out.println(mLink);
			
			
			JSONObject estiMateJson = new JSONObject();
			estiMateJson.put("mContent", mContent);
			estiMateJson.put("mLink", lm.getmLink());
			
			response.setContentType("application/json");
			
			
			try {
				new Gson().toJson(estiMateJson,response.getWriter());
			} catch (JsonIOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
	}
	
	
	
	@RequestMapping("selectEatBreak.ms")
	public void selectEatBreakMission(HttpServletRequest request, HttpServletResponse response) {
		String today = request.getParameter("today");
		Mission m = new Mission();
		m.setmDate(today);
		System.out.println("controller m: " + m);
		Mission lm = ms.selectEatBreakMission(m);
		System.out.println(lm);
		
		
		try {
			String  mContent = URLEncoder.encode(lm.getmContent(), "UTF-8");
			mContent = mContent.replaceAll("\\+", "%20");
			System.out.println(mContent);
			
			
			 String mLink = lm.getmLink();

			 System.out.println(mLink);
			
			
			JSONObject estiMateJson = new JSONObject();
			estiMateJson.put("mContent", mContent);

			
			response.setContentType("application/json");
			
			
			try {
				new Gson().toJson(estiMateJson,response.getWriter());
			} catch (JsonIOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
	}
	
	
	
	@RequestMapping("selectEatLunch.ms")
	public void selectEatLunchMission(HttpServletRequest request, HttpServletResponse response) {
		String today = request.getParameter("today");
		Mission m = new Mission();
		m.setmDate(today);
		System.out.println("controller m: " + m);
		Mission lm = ms.selectEatLunchMission(m);
		System.out.println(lm);
		
		
		try {
			String  mContent = URLEncoder.encode(lm.getmContent(), "UTF-8");
			mContent = mContent.replaceAll("\\+", "%20");
			System.out.println(mContent);
			
			
			 String mLink = lm.getmLink();

			 System.out.println(mLink);
			
			
			JSONObject estiMateJson = new JSONObject();
			estiMateJson.put("mContent", mContent);

			
			response.setContentType("application/json");
			
			
			try {
				new Gson().toJson(estiMateJson,response.getWriter());
			} catch (JsonIOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
	}
	
	
	
	
	@RequestMapping("selectEatDinner.ms")
	public void selectEatDinnerMission(HttpServletRequest request, HttpServletResponse response) {
		String today = request.getParameter("today");
		Mission m = new Mission();
		m.setmDate(today);
		System.out.println("controller m: " + m);
		Mission lm = ms.selectEatDinnerMission(m);
		System.out.println(lm);
		
		
		try {
			String  mContent = URLEncoder.encode(lm.getmContent(), "UTF-8");
			mContent = mContent.replaceAll("\\+", "%20");
			System.out.println(mContent);
			
			
			 String mLink = lm.getmLink();

			 System.out.println(mLink);
			
			
			JSONObject estiMateJson = new JSONObject();
			estiMateJson.put("mContent", mContent);

			
			response.setContentType("application/json");
			
			
			try {
				new Gson().toJson(estiMateJson,response.getWriter());
			} catch (JsonIOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
	}
	
}
