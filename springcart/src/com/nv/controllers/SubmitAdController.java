package com.nv.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nv.model.AdDataBean;
import com.nv.service.ad.AdDataService;

@Controller
public class SubmitAdController {
	@Autowired
	AdDataService adDataService;
	
	@RequestMapping(value = "/postad", method = RequestMethod.GET)
	public ModelAndView showform() {
		return new ModelAndView("postad");
	}
	
	@RequestMapping(value = "/submitAd", method = RequestMethod.POST)
	public ModelAndView showItems(HttpServletRequest req) {
		AdDataBean bean = new AdDataBean();
		bean.setCategory(Integer.valueOf(req.getParameter("category")).intValue());		
		bean.setGroup(Integer.valueOf(req.getParameter("group")).intValue());
		bean.setTitle(req.getParameter("title"));
		bean.setDetails(req.getParameter("details"));
		//System.out.println(bean);
		
		int result = adDataService.insertNewAd(bean);
		//System.out.println("result: " +result);
		
		//TODO show home page using redirect
		List<AdDataBean> li = adDataService.readAd();		
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("list", li);
		return mv;
	}

}
