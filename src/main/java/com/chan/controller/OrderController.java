package com.chan.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OrderController {
	

	@RequestMapping(value = "/order/delivery", method = RequestMethod.GET)
	public String delivery(Locale locale, Model model) {
		
		return "order/delivery";
	}
	
	@RequestMapping(value = "/order/payment", method = RequestMethod.GET)
	public String payment(Locale locale, Model model) {
		
		return "order/payment";
	}

}
