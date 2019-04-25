package com.chan.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageController {

	@RequestMapping(value = "/myPage/main", method = RequestMethod.GET)
	public String mypageMain(Locale locale, Model model) {
		
		return "mypage/main";
	}
	
	@RequestMapping(value = "/myPage/orderList", method = RequestMethod.GET)
	public String mypageOrderList(Locale locale, Model model) {
		
		return "mypage/orderList";
	}
	
	@RequestMapping(value = "/myPage/pointList", method = RequestMethod.GET)
	public String mypagePointList(Locale locale, Model model) {
		
		return "mypage/pointList";
	}
	
	@RequestMapping(value = "/myPage/productQnaList", method = RequestMethod.GET)
	public String mypageProductQnaList(Locale locale, Model model) {
		
		return "mypage/productQnaList";
	}
	
	@RequestMapping(value = "/myPage/qnaList", method = RequestMethod.GET)
	public String mypageQnaList(Locale locale, Model model) {
		
		return "mypage/qnaList";
	}
	
	@RequestMapping(value = "/myPage/refundList", method = RequestMethod.GET)
	public String mypageRefundList(Locale locale, Model model) {
		
		return "mypage/refundList";
	}
	
	@RequestMapping(value = "/myPage/refundProductList", method = RequestMethod.GET)
	public String mypageRefundproductList(Locale locale, Model model) {
		
		return "mypage/refundProductList";
	}
	
	@RequestMapping(value = "/myPage/wishList", method = RequestMethod.GET)
	public String mypageWishList(Locale locale, Model model) {
		
		return "mypage/wishList";
	}
	
	@RequestMapping(value = "/myPage/cancelList", method = RequestMethod.GET)
	public String mypageCancelList(Locale locale, Model model) {
		
		return "mypage/cancelList";
	}
	
	@RequestMapping(value = "/myPage/changePassword", method = RequestMethod.GET)
	public String mypageChangePassword(Locale locale, Model model) {
		
		return "mypage/changePassword";
	}
	
	@RequestMapping(value = "/myPage/commentList", method = RequestMethod.GET)
	public String mypageCommentList(Locale locale, Model model) {
		
		return "mypage/commentList";
	}
	
	@RequestMapping(value = "/myPage/frequencyList", method = RequestMethod.GET)
	public String mypageFrequencyList(Locale locale, Model model) {
		
		return "mypage/frequencyList";
	}
	
	@RequestMapping(value = "/myPage/info", method = RequestMethod.GET)
	public String mypageInfo(Locale locale, Model model) {
		
		return "mypage/info";
	}
	
	@RequestMapping(value = "/myPage/invite", method = RequestMethod.GET)
	public String mypageInvite(Locale locale, Model model) {
		
		return "mypage/invite";
	}
	
	@RequestMapping(value = "/myPage/couponList", method = RequestMethod.GET)
	public String mypageCouponList(Locale locale, Model model) {
		
		return "mypage/couponList";
	}
	
}
