package com.claim.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Plan;
import com.claim.service.PlanService;


@Controller
public class PlanController {
	
	@Autowired
	private PlanService planService;
	
	@RequestMapping(value="/createPlan", method=RequestMethod.POST)
	public ModelAndView createPlan(@ModelAttribute("plan") Plan plan) { 
		System.out.println(plan);
		planService.savePlan(plan);
		System.out.println("createPlan mapping is listening");
		return new ModelAndView("profile", "plan", plan);
	}
	
	
}


