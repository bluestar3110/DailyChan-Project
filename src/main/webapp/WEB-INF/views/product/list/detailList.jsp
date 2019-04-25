<%@ page contentType="text/html; charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_shop.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/flick/jquery-ui.min.css" />


<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.cookie.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.form.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/placeholders.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/clipboard.min.js"></script>


<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_shop.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_common.js"></script>

</head>
<body>


<div class="allWrap">
	<!-- header -->
	







	<!-- header -->
	<div id="header">


		<!-- //gnb 영역 -->
		
		<!-- 상품검색 form -->
		<form id="productSearchForm" method="get" action="/product/search">
			<input type="hidden" name="keyword"		value="*" />
			<input type="hidden" name="page"		value="1" />
			<input type="hidden" name="sort"		value="priority" />
			<input type="hidden" name="direction"	value="desc" />
			<input type="hidden" name="rows" />
		</form>
		<!--// 상품검색 form -->
		
		<!-- 상품 카테고리 form -->
		<form id="productListForm" method="get" action="/product/list">
			<input type="hidden" name="categoryId"	value="9" />
			<input type="hidden" name="page"		value="1" />
			<input type="hidden" name="sort"		value="priority" />
			<input type="hidden" name="direction"	value="desc" />
			<input type="hidden" name="rows" />
		</form>
		<!--// 상품 카테고리 form -->	


	
        <!------------------------ // 장바구니 레이어 팝업 ------------------------>
        
        <div class="popDim"></div>
		
	</div>
	<!-- // header -->
	<!-- // header -->
	
	<!-- 컨텐츠 -->
	<div class="contentsArea" id="sec_product_list">
		<div class="contentsWrap">
			
			
				
				
					
				
					
						
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
				
					
				
			
			
			
			
			<div class="list_top_banner"
				style="background:url('/dailychan/resources/images/shopBanner/img_top_1_1.jpg') no-repeat center top;">
				<div class="contents">
					&nbsp;
				</div>
			</div>
			
			<!-- 오른쪽 영역 -->
			<div class="content">
				<!-- 내용 입니다 -->
				
				<div class="productList">
					 
					<!-- 카테고리선택 -->
					





					<div class="sec_list_area">
						
						
						<span>
							<a href="/">홈</a>
						</span>
						
							
							
								
							
								
									
									
									
									<span class="sec_arrow"><img src="/dailychan/resources/images/shop/ico_arrow_sec.png" alt="|" /></span>
									<span>
										
										<a href="#" onClick="javascript:categoryProducts(2); return false;">농산물</a>
										
									</span>
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
						
						
							
							
								
									
									
									<span class="sec_arrow"><img src="/dailychan/resources/images/shop/ico_arrow_sec.png" alt="|" /></span>
									<span>
										<strong>
										<a href="#" onClick="javascript:categoryProducts(9); return false;">주곡/잡곡</a>
										</strong>
									</span>
								
							
								
							
								
							
								
							
								
							
								
							
						
						<div class="clear"></div>
					</div>
					
					
					    
	                    
		                    <!-- 서브 카테고리 -->
		                    <div class="prod_list_category">
		                    	<ul>
		                    		
		                        		<li class='on'>
		                        			<a href="#" 
		                        				onClick="javascript:categoryProducts(9); return false;"><span>주곡/잡곡</span>
		                        			</a>
		                        		</li>
		                        	
		                        		<li >
		                        			<a href="#" 
		                        				onClick="javascript:categoryProducts(12); return false;"><span>과일</span>
		                        			</a>
		                        		</li>
		                        	
		                        		<li >
		                        			<a href="#" 
		                        				onClick="javascript:categoryProducts(11); return false;"><span>채소류</span>
		                        			</a>
		                        		</li>
		                        	
		                        		<li >
		                        			<a href="#" 
		                        				onClick="javascript:categoryProducts(49); return false;"><span>버섯/건나물류</span>
		                        			</a>
		                        		</li>
		                        	
		                        		<li >
		                        			<a href="#" 
		                        				onClick="javascript:categoryProducts(50); return false;"><span>간편샐러드/가루류</span>
		                        			</a>
		                        		</li>
		                        	
		                        		<li >
		                        			<a href="#" 
		                        				onClick="javascript:categoryProducts(13); return false;"><span>견과/병조림</span>
		                        			</a>
		                        		</li>
		                        	
		                        </ul>
		                    </div>
		                	<!--// 서브 카테고리 -->
	                	
                	
                	
                	
					<!-- //카테고리선택 -->

					<!-- 상품리스트 -->
                    <div class="prodListTop">
						
						<div class="sort_area">
							
							<ul>
								<li class='on'>
									<a href="#" onclick="searchProductBySort('productListForm', 'priority|desc'); return false;"> 기본</a>
								</li>
								<li >
									<a href="#" onclick="searchProductBySort('productListForm', 'bestRanking|desc'); return false;"> 베스트순</a>
								</li>
								<li >
									<a href="#" onclick="searchProductBySort('productListForm', 'launchingDt|desc'); return false;"> 신상품순</a>
								</li>
								<li >
									<a href="#" onclick="searchProductBySort('productListForm', 'productTitleSort|asc'); return false;"> 상품명순</a>
								</li>
								<li >
									<a href="#" onclick="searchProductBySort('productListForm', 'price|asc'); return false;"> 낮은가격순</a>
								</li>
								<li >
									<a href="#" onclick="searchProductBySort('productListForm', 'price|desc'); return false;"> 높은가격순</a>
								</li>
							</ul>
							<span class="selectBoxWrap">
								<label for="selectNumber">20개씩 보기</label>
								<select id="selectNumber" onChange="changeRows(this.value, true); return false;">
	                                <option value="20" selected='selected'>&nbsp;&nbsp;20개씩</option>
	                                <option value="40" >&nbsp;&nbsp;40개씩</option>
	                                <option value="60" >&nbsp;&nbsp;60개씩</option>
	                                
	                            </select>
							</span>
						</div>
					</div>
                    
					<div class="prodList">
						<ul>
							
							
								
									
									
									
	                    			
	                    			
	                    			
	                    			
	                    			
	                    			
	                    				
	                    			
									
										
										
											
											
												
												
											
										
									
									<!-- 상품 1set -->
									<!--판매중지 클래스명 : stopSell / 신상품 : newSellTxt / 세일 : saleSellTxt / 세일+신상품 : saleNewSellTxt -->
									
										
										
										
										
										
									
									<li class="stopSell">
										<div class="thum">
											<a href="/product/detail/3239-4679?categoryId=9">
												<img src="http://www.oasis.co.kr:8580/product/3239/thumb/thumb_3239286c28d5-d0c7-4dc3-9d72-c484e1951d01.jpg" alt="상품이미지">
												
	                    							<!-- img : thum bg -->
													<span class="bg_gray">&nbsp;</span>
	                    							<!-- ico : 판매중지 -->
	                    							<span class="stopSellTxt"><span>
	                    							
	                    								
	                    								
	                    								SOLD OUT
	                    							
	                    							</span></span>
	                    						
	                    						<!-- ico : 할인률 -->
	                    						<span class="saleSellTxt"><span>20<em>%</em></span></span>
	                    						
												
												
												
												
												
												<div class="pdLikeWrap">
												    <img src="/dailychan/resources/images/shop/pd_like.png"/>
												    <span>
                                                        
                                                          
                                                              99.5%
                                                          
                                                          
                                                        
                                                    </span>
												</div>
											</a>
										</div>
										<a href="/product/detail/3239-4679?categoryId=9" class="prodName">
										유기농 용추쌀 현미 (4kg)
										</a>
										<div class="prodPrice">
											<span class="prodPrice2">19,000<em>원</em><span></span></span>
											<span class="prodPrice1">15,200<em>원</em></span>
										</div>
										<!-- 상품 오버시 노출 -->
										<div class="pop_view">
											<div class="positionR">
												<div class="icList">
													<ul>
														<li>
															<a href="#" onclick="addWishList(3239, 4679); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon1.png" alt="찜하기">
															</a>
														</li>
														<li>
															<a href="#" onclick="addCart(3239, 4679); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon2.png" alt="장바구니 넣기">
															</a>
														</li>
														<li>
															<a href="#" onclick="buyItNow(3239, 4679); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon3.png" alt="바로구매">
															</a>
														</li>
													</ul>
												</div>
												<p>
													<a href="/product/detail/3239-4679?categoryId=9">
														<img src="/dailychan/resources/images/shop/pop_product_more.png" alt="" />
													</a>
												</p>
											</div>
										</div>
										<!-- //상품 오버시 노출 -->
									</li>
									<!-- //상품 1set -->
								
							
								
									
									
									
	                    			
	                    			
	                    			
	                    			
	                    			
	                    			
									
										
										
											
											
												
												
											
										
									
									<!-- 상품 1set -->
									<!--판매중지 클래스명 : stopSell / 신상품 : newSellTxt / 세일 : saleSellTxt / 세일+신상품 : saleNewSellTxt -->
									
										
										
										
										
										
									
									<li class="saleSellTxt">
										<div class="thum">
											<a href="/product/detail/3432-5135?categoryId=9">
												<img src="http://www.oasis.co.kr:8580/product/3432/thumb/thumb_34323e876d25-afd6-4252-afb5-2e8aa2e38836.jpg" alt="상품이미지">
												
	                    						<!-- ico : 할인률 -->
	                    						<span class="saleSellTxt"><span>20<em>%</em></span></span>
	                    						
												
												
												
												
												
												<div class="pdLikeWrap">
												    <img src="/dailychan/resources/images/shop/pd_like.png"/>
												    <span>
                                                        
                                                          
                                                              96.3%
                                                          
                                                          
                                                        
                                                    </span>
												</div>
											</a>
										</div>
										<a href="/product/detail/3432-5135?categoryId=9" class="prodName">
										유기농 월향미 골든퀸3호 (5kg)
										</a>
										<div class="prodPrice">
											<span class="prodPrice2">32,000<em>원</em><span></span></span>
											<span class="prodPrice1">25,600<em>원</em></span>
										</div>
										<!-- 상품 오버시 노출 -->
										<div class="pop_view">
											<div class="positionR">
												<div class="icList">
													<ul>
														<li>
															<a href="#" onclick="addWishList(3432, 5135); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon1.png" alt="찜하기">
															</a>
														</li>
														<li>
															<a href="#" onclick="addCart(3432, 5135); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon2.png" alt="장바구니 넣기">
															</a>
														</li>
														<li>
															<a href="#" onclick="buyItNow(3432, 5135); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon3.png" alt="바로구매">
															</a>
														</li>
													</ul>
												</div>
												<p>
													<a href="/product/detail/3432-5135?categoryId=9">
														<img src="/dailychan/resources/images/shop/pop_product_more.png" alt="" />
													</a>
												</p>
											</div>
										</div>
										<!-- //상품 오버시 노출 -->
									</li>
									<!-- //상품 1set -->
								
							
								
									
									
									
	                    			
	                    			
	                    			
	                    			
	                    			
	                    			
									
										
										
											
											
												
												
											
										
									
									<!-- 상품 1set -->
									<!--판매중지 클래스명 : stopSell / 신상품 : newSellTxt / 세일 : saleSellTxt / 세일+신상품 : saleNewSellTxt -->
									
										
										
										
								
									<li ></li>
								
									<li ></li>
								
							
						</ul>
						<div class="clear"></div>
					</div>
					<!--// 상품리스트 -->
					
					<!--페이징-->
					<div class="pagingWrap">
						
							
							
								<a href="javascript:page(1);" class='on' >1</a>
							
						
						
					</div>
					<!--//페이징-->
					
				</div>
				
				<!-- //내용 입니다 -->
			</div>
			<!-- //오른쪽 영역 -->
		</div>
	</div>
	<!-- //컨텐츠 -->
	
	<!-- footer -->
	



    
    
    
    
<form id="orderForm" action="/order/prepare/delivery" method="post" style="display: none;"></form>

</div>


</body>
</html>