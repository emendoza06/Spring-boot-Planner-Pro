package com.claim.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.claim.entity.Plan;
import com.claim.service.EventService;
import com.claim.service.PlanService;


@Controller
public class PlanController {
	
	@Autowired
	private PlanService planService;
	private EventService eventService;
	
	
	@RequestMapping(value="/createPlan", method=RequestMethod.POST)
	public ModelAndView savePlan(@ModelAttribute("plan") Plan plan, ModelMap model) { 
		planService.savePlan(plan);
		model.addAttribute("plans", planService.getAllPlans());
		return new ModelAndView("profile", "plan", plan);
	}
	
	
}


