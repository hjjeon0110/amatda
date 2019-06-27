package com.kh.amd.mission.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	@RequestMapping("matching.ms")
	public String goCalendar() {
		return "mission/mission";
	}
	
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
}
