package com.claim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalendarController {

	@RequestMapping("/calendar")
	public ModelAndView displayCalendar() {
		return new ModelAndView("calendar");
	}
}
