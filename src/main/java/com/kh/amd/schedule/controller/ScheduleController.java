package com.kh.amd.schedule.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.amd.mission.model.service.MissionService;
import com.kh.amd.schedule.model.service.ScheduleService;

@Controller
public class ScheduleController {
	
	
	/*
	 * @Autowired private ScheduleService sc;
	 * 
	 * 
	 * @Autowired private MissionService ms;
	 */
	
	@RequestMapping("calendar.ca")
	public String showCalendar() {
		return "calendar/calendar";
	}

	@RequestMapping("missionRegister.ca")
	public String registerMission() {
		return "calendar/missionRegister";
	}
	
	/*
	 * @RequestMapping("insert.ca") public void insertMission(HttpServletRequest
	 * request, HttpServletResponse response) {
	 * 
	 * String mDate = request.getParameter("mDate"); String breakfast =
	 * request.getParameter("breakfast"); String lunch =
	 * request.getParameter("lunch"); String dinner =
	 * request.getParameter("dinner");
	 * 
	 * String breakEx = request.getParameter("breakEx"); String lunchEx =
	 * request.getParameter("lunchEx"); String dinnerEx =
	 * request.getParameter("dinnerEx");
	 * 
	 * String breakExLink = request.getParameter("breakExLink"); String lunchExLink
	 * = request.getParameter("lunchExLink"); String dinnerExLink =
	 * request.getParameter("dinnerExLink");
	 * 
	 * HashMap<String, Object> map = new HashMap<String, Object>();
	 * map.put("breakfast", breakfast); map.put("lunch", lunch); map.put("dinner",
	 * dinner); map.put("breakEx", breakEx); map.put("lunchEx", lunchEx);
	 * map.put("dinnerEx", dinnerEx); map.put("breakExLink", breakExLink);
	 * map.put("lunchExLink", lunchExLink); map.put("dinnerExLink", dinnerExLink);
	 * 
	 * int result = sc.insertMission(map);
	 * 
	 * if(result>0) { ms.insertBreakfast();
	 * 
	 * }
	 * 
	 * 
	 * 
	 * }
	 */
}

