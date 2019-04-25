package com.chan.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		
		return "main";
	}
	
	@RequestMapping(value = "/recipes/recipedetail", method = RequestMethod.GET)
	public String recipesDetail(Locale locale, Model model) {
		
		return "recipes/recipeDetail";
	}
	
	@RequestMapping(value = "/event/coupon", method = RequestMethod.GET)
	public String eventCoupon(Locale locale, Model model) {
		
		return "event/coupon";
	}
	
}
