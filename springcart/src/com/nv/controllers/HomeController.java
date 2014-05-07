package com.nv.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nv.model.AdDataBean;
import com.nv.service.ad.AdDataService;




@Controller
public class HomeController {	
	@Autowired
	AdDataService adDataService;

//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public ModelAndView showHome() {
//		return new ModelAndView("home");
//	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView showItems() {		
		List<AdDataBean> li = adDataService.readAd();		
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("list", li);
		return mv; 
	}
}