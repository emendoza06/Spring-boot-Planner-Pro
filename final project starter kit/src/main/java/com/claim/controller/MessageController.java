package com.claim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MessageController {
	
	@RequestMapping("messageToBlog")
	public ModelAndView linkToBlog()
	{
		return new ModelAndView("blog");
	}

}
