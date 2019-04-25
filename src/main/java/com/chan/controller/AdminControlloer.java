package com.chan.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminControlloer {
	
	@RequestMapping(value = "/admin/main", method = RequestMethod.GET)
	public String adminMain(Locale locale, Model model) {
		
		return "admin/main";
	}
	
	@RequestMapping(value = "/admin/register", method = RequestMethod.GET)
	public String adminRegister(Locale locale, Model model) {
		
		return "admin/register";
	}
	
	@RequestMapping(value = "/admin/recipeRegister", method = RequestMethod.GET)
	public String adminRecipeRegister(Locale locale, Model model) {
		
		return "admin/recipeRegister";
	}
	
	@RequestMapping(value = "/admin/orderList", method = RequestMethod.GET)
	public String adminOrderList(Locale locale, Model model) {
		
		return "admin/orderList";
	}
	
	@RequestMapping(value = "/admin/commentList", method = RequestMethod.GET)
	public String adminCommentList(Locale locale, Model model) {
		
		return "admin/commentList";
	}
	
	@RequestMapping(value = "/admin/productQnaList", method = RequestMethod.GET)
	public String adminProductQnaList(Locale locale, Model model) {
		
		return "admin/productQnaList";
	}
	
	@RequestMapping(value = "/admin/qnaList", method = RequestMethod.GET)
	public String adminQnaList(Locale locale, Model model) {
		
		return "admin/qnaList";
	}
	
	@RequestMapping(value = "/admin/refundProductList", method = RequestMethod.GET)
	public String adminrefundProductList(Locale locale, Model model) {
		
		return "admin/refundProductList";
	}
	
	@RequestMapping(value = "/admin/info", method = RequestMethod.GET)
	public String adminInfo(Locale locale, Model model) {
		
		return "admin/info";
	}
	
	@RequestMapping(value = "/admin/coupon", method = RequestMethod.GET)
	public String adminCoupon(Locale locale, Model model) {
		
		return "admin/addCoupon";
	}

}

