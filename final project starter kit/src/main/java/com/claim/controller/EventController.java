package com.claim.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Invite;
import com.claim.repository.PlanRepository;
import com.claim.service.EventService;
import com.claim.service.InviteService;
import com.claim.service.PlanService;
import com.claim.service.SendMail;

@Controller
public class EventController {
	
	@Autowired
	public EventService eventService;
	@Autowired
	public PlanService planService;
	@Autowired
	public InviteService inviteService;
	@Autowired
	public PlanRepository planRepository;
	
	@Autowired 
	private SendMail sendMail;

	@RequestMapping("/calendar")
	public ModelAndView displayCalendar(@RequestParam("dest")String destination,@RequestParam("budget")int budget, ModelMap model, HttpSession session) {
		/*ArrayList<Event> events = eventService.getAll();*/ 
		System.out.println("Select destination: "+destination +" Select budget: " + budget);
		
		model.addAttribute("events", eventService.findEventsByDestinationAndBudget(destination, budget));
		session.setAttribute("dest", destination);
		session.setAttribute("budget", budget);
		return new ModelAndView("calendar", "invite", new Invite());
	}
	
	@RequestMapping(value="/sendInvite", method=RequestMethod.POST)
	public ModelAndView sendInvite(@ModelAttribute("invite") Invite invite, HttpSession session,ModelMap model) { 
		System.out.println("Invite has been sent to " + invite.toString());
		inviteService.sendInvite(invite);
		inviteService.saveInvite(invite);
		model.addAttribute("invited", inviteService.getAllInvited());
		
		String dest = (String) session.getAttribute("dest");
		int budget = (Integer) session.getAttribute("budget");
		sendMail.sendMail(invite.getEmail(), "View Calendar", "http://localhost:8080/calendar?dest="+dest+"&budget="+budget);
		
		
		
		model.addAttribute("events", eventService.findEventsByDestinationAndBudget(dest, budget));
		
		return new ModelAndView("calendar", "invite", new Invite());
	}
	
	
	
}

