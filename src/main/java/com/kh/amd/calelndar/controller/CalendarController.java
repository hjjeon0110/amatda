package com.kh.amd.calelndar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CalendarController {

@RequestMapping("calendar.ca")
	public String showCalendar() {
		return "calendar/calendar";
	}

@RequestMapping("missionRegister.ca")
	public String registerMission() {
		return "calendar/missionRegister";
	}
}

