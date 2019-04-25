package com.chan.dto;

public class MyPageDTO {

	//===================join=================
	private String join_id;
	private String join_password;
	private String join_name;
	private String join_phone;
	private String join_email;
	private String join_recommender;
	private String join_smsagree;
	private String join_emailagree;
	private int join_point;
	private String join_addrNum;
	private String join_addr1;
	private String join_addr2;

	//===================product===============
	private int product_id;
	private String product_subject;
	private int product_price;
	
	//===================review================
	private int review_id;
	private String review_subject;
	private String review_content;
	private String review_created;
	private int review_grade;
	private String review_saveFileName;
	
	//==================cart===================
	private int cart_id;
	private int cart_quantity;
	
	//==================zzimList===============
	private int zzimList_id;
	
	//===================faq===================
	private int faq_id;
	private String faq_subject;
	private String faq_content;
	private String faq_division;
	
	//===================coupon================
	private int coupon_id;
	private String coupon_name;
	private int coupon_price;
	private String coupon_startDate;
	private String coupon_endDate;
	private int coupon_use;
	
	//===================buy===================
	private int buy_id;
	
	
	
}
