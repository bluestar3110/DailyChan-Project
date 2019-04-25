package com.chan.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JoinController {

	@RequestMapping(value = "/join/login", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		
		return "join/login";
	}
	
	@RequestMapping(value = "/join/signUp", method = RequestMethod.GET)
	public String signUp(Locale locale, Model model) {
		
		return "join/signUp";
	}
	@RequestMapping(value = "/join/list", method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		
		return "join/list";
	}
	@RequestMapping(value = "/join/complete", method = RequestMethod.GET)
	public String complete(Locale locale, Model model) {
		
		return "join/complete";
	}
	
	@RequestMapping(value = "/join/findUserIdForm", method = RequestMethod.GET)
	public String findUserIdForm(Locale locale, Model model) {
		
		return "join/findUserIdForm";
	}
	
	
	@RequestMapping(value = "/join/findPasswordForm", method = RequestMethod.GET)
	public String findPasswordForm(Locale locale, Model model) {
		
		return "join/findPasswordForm";
	}
}
