<%@ page contentType="text/html; charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>

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
										<strong>
										<a href="#" onClick="javascript:categoryProducts(2); return false;">농산물</a>
										</strong>
									</span>
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
						
						
							
							
								
							
								
							
								
							
								
							
								
							
								
							
						
						<div class="clear"></div>
					</div>
					
					
					    
	                    
		                    <!-- 서브 카테고리 -->
		                    <div class="prod_list_category">
		                    	<ul>
		                    		
		                        		<li >
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
	                	
                	
                	
                	
	                	




					
						<!-- best 3 area -->
						<div class="deal_area list_best_3">
							<dl>
								<!-- 하단 리스트 -->
								<dd id="best3SlideList">
									<ul>
										
										
										
											
											
												
				                    			
													
													
														
															
														
													
												
												<!-- BEST 01 -->
												<li>
													<a href="detail/64-8?categoryId=2">
														<div class="product_list_3">
															<div class="ico_best_3">
																<span>BEST</span>
																<strong>01</strong>
															</div>
															<!-- img : 238 * 238 -->
															<div class="img_best_3">
																<!-- img : cover -->
																<span>&nbsp</span>
																<img src="http://www.oasis.co.kr:8580/product/64/thumb/thumb_6424986511-1be7-422b-8d65-fd5c055c4f12.jpg" alt="상품명1">
															</div>
															<!-- img : hover -->
															<div class="ico_best_3_view">
																<img src="/dailychan/resources/images/shop/bg_cover_view.png" alt="" />
															</div>
															<!-- txt : 상품명 -->
															<strong>고당도 사과 (1.3kg)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before">
																	<del>12,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>7,900원</strong>
																</span>
															</div>
														</div>
													</a>
												</li>
												
											
											
											<!-- //BEST 02 -->
										
											
											
												
				                    			
													
													
														
															
														
													
												
												<!-- BEST 02 -->
												<li>
													<a href="detail/1663-5211?categoryId=2">
														<div class="product_list_3">
															<div class="ico_best_3">
																<span>BEST</span>
																<strong>02</strong>
															</div>
															<!-- img : 238 * 238 -->
															<div class="img_best_3">
																<!-- img : cover -->
																<span>&nbsp</span>
																<img src="http://www.oasis.co.kr:8580/product/1663/thumb/thumb_1663b2d53ccd-1403-47e7-8ee1-f9f593b5bb4e.jpg" alt="상품명1">
															</div>
															<!-- img : hover -->
															<div class="ico_best_3_view">
																<img src="/dailychan/resources/images/shop/bg_cover_view.png" alt="" />
															</div>
															<!-- txt : 상품명 -->
															<strong>아삭 빨강 대추방울토마토(750g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before">
																	<del>6,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>4,800원</strong>
																</span>
															</div>
														</div>
													</a>
												</li>
												
											
											
											<!-- //BEST 03 -->
										
											
											
												
				                    			
													
													
														
															
														
													
												
												<!-- BEST 03 -->
												<li>
													<a href="detail/1264-5304?categoryId=2">
														<div class="product_list_3">
															<div class="ico_best_3">
																<span>BEST</span>
																<strong>03</strong>
															</div>
															<!-- img : 238 * 238 -->
															<div class="img_best_3">
																<!-- img : cover -->
																<span>&nbsp</span>
																<img src="http://www.oasis.co.kr:8580/product/1264/thumb/thumb_1264d41019da-ae7d-435e-bec0-6a33dad0f9a6.jpg" alt="상품명1">
															</div>
															<!-- img : hover -->
															<div class="ico_best_3_view">
																<img src="/dailychan/resources/images/shop/bg_cover_view.png" alt="" />
															</div>
															<!-- txt : 상품명 -->
															<strong>무농약 시금치 (200g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before">
																	<del>1,700원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>1,530원</strong>
																</span>
															</div>
														</div>
													</a>
												</li>
												
											
											
											<!-- //BEST 04 -->
										
											
											
												
				                    			
													
													
														
															
														
													
												
												<!-- BEST 04 -->
												<li>
													<a href="detail/1266-5190?categoryId=2">
														<div class="product_list_3">
															<div class="ico_best_3">
																<span>BEST</span>
																<strong>04</strong>
															</div>
															<!-- img : 238 * 238 -->
															<div class="img_best_3">
																<!-- img : cover -->
																<span>&nbsp</span>
																<img src="http://www.oasis.co.kr:8580/product/1266/thumb/thumb_1266cc5dc690-52d2-428f-9e4d-515c559aa283.png" alt="상품명1">
															</div>
															<!-- img : hover -->
															<div class="ico_best_3_view">
																<img src="/dailychan/resources/images/shop/bg_cover_view.png" alt="" />
															</div>
															<!-- txt : 상품명 -->
															<strong>무농약 브로컬리 (1통)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before">
																	<del>2,900원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>2,640원</strong>
																</span>
															</div>
														</div>
													</a>
												</li>
												
											
											
											<!-- //BEST 05 -->
										
											
											
												
				                    			
													
				                    					
													
													
												
												<!-- BEST 05 -->
												<li>
													<a href="detail/1303-4552?categoryId=2">
														<div class="product_list_3">
															<div class="ico_best_3">
																<span>BEST</span>
																<strong>05</strong>
															</div>
															<!-- img : 238 * 238 -->
															<div class="img_best_3">
																<!-- img : cover -->
																<span>&nbsp</span>
																<img src="http://www.oasis.co.kr:8580/product/1303/thumb/thumb_1303c9f0df8a-bbcb-45f9-98bb-d89eb3eb13c5.jpg" alt="상품명1">
															</div>
															<!-- img : hover -->
															<div class="ico_best_3_view">
																<img src="/dailychan/resources/images/shop/bg_cover_view.png" alt="" />
															</div>
															<!-- txt : 상품명 -->
															<strong>맑은콩 무농약 콩나물 (300g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before">
																	<del>1,800원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>500원</strong>
																</span>
															</div>
														</div>
													</a>
												</li>
												
											
											
											<!-- //BEST 06 -->
										
											
											
												
				                    			
													
													
														
															
														
													
												
												<!-- BEST 06 -->
												<li>
													<a href="detail/839-735?categoryId=2">
														<div class="product_list_3">
															<div class="ico_best_3">
																<span>BEST</span>
																<strong>06</strong>
															</div>
															<!-- img : 238 * 238 -->
															<div class="img_best_3">
																<!-- img : cover -->
																<span>&nbsp</span>
																<img src="http://www.oasis.co.kr:8580/product/839/thumb/thumb_8396dfb6416-088f-4aaa-bdba-d98e7669bf78.jpg" alt="상품명1">
															</div>
															<!-- img : hover -->
															<div class="ico_best_3_view">
																<img src="/dailychan/resources/images/shop/bg_cover_view.png" alt="" />
															</div>
															<!-- txt : 상품명 -->
															<strong>무농약 파 (300g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before">
																	<del>1,700원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>1,360원</strong>
																</span>
															</div>
														</div>
													</a>
												</li>
												
											
											
											<!-- //BEST 07 -->
										
											
											
												
											
											
											<!-- //BEST 010 -->
										
									</ul>
								</dd>
								<!-- btn : 이전 -->
								<span class="btn_best3_prev">
									<a href="#prev">
										<img src="/dailychan/resources/images/shop/btn_best3_prev.png" alt="이전" />
									</a>
								</span>
								<!-- btn : 다음 -->
								<span class="btn_best3_next">
									<a href="#next">
										<img src="/dailychan/resources/images/shop/btn_best3_next.png" alt="다음" />
									</a>
								</span>
								<!-- //하단 리스트 -->
							</dl>
						</div>
						<script type="text/javascript">
						$(document).ready(function(){

							var slideNow= 1;
							var slidePage = Math.ceil(($('#best3SlideList').find('li').length / 3));
							var slideWidth = (($('#best3SlideList li').width()+74) * 3) - 25 ; //74px 여백

							$('.btn_best3_prev').click(function(){
								if (slideNow == 1){
								} else {
									$('#best3SlideList ul').animate({left: '+='+slideWidth+'px'});
									slideNow -= 1;

									console.log('slidePage = '+slidePage , ' / slideNow = '+slideNow);
								}
							});

							$('.btn_best3_next').click(function(){
								if (slideNow < slidePage){
									$('#best3SlideList ul').animate({left: '-='+slideWidth+'px'});
									slideNow += 1;

									console.log('slidePage = '+slidePage , ' / slideNow = '+slideNow);
								} else {
									
								}
							});

						});
					</script>
						<!-- //best 3 area -->
					
					
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
								<label for="selectNumber">60개씩 보기</label>
								<select id="selectNumber" onChange="changeRows(this.value, true); return false;">
	                                <option value="20" >&nbsp;&nbsp;20개씩</option>
	                                <option value="40" >&nbsp;&nbsp;40개씩</option>
	                                <option value="60" selected='selected'>&nbsp;&nbsp;60개씩</option>
	                                
	                            </select>
							</span>
						</div>
					</div>
                    
					<div class="prodList">
						<ul>
							
							
								
									
									
									
	                    			
	                    			
	                    			
	                    			
	                    			
	                    			
									
										
										
											
											
												
												
											
										
									
									<!-- 상품 1set -->
									<!--판매중지 클래스명 : stopSell / 신상품 : newSellTxt / 세일 : saleSellTxt / 세일+신상품 : saleNewSellTxt -->
									
										
										
										
										
										
									
									<li class="saleSellTxt">
										<div class="thum">
											<a href="/product/detail/3239-4679?categoryId=2">
												<img src="http://www.oasis.co.kr:8580/product/3239/thumb/thumb_3239286c28d5-d0c7-4dc3-9d72-c484e1951d01.jpg" alt="상품이미지">
												
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
										<a href="/product/detail/3239-4679?categoryId=2" class="prodName">
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
													<a href="/product/detail/3239-4679?categoryId=2">
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
											<a href="/product/detail/2477-5361?categoryId=2">
												<img src="http://www.oasis.co.kr:8580/product/2477/thumb/thumb_2477e0bdeebe-9568-4c25-90fb-291df3c6878b.jpg" alt="상품이미지">
												
	                    						<!-- ico : 할인률 -->
	                    						<span class="saleSellTxt"><span>17<em>%</em></span></span>
	                    						
												
												
												
												
												
												<div class="pdLikeWrap">
												    <img src="/dailychan/resources/images/shop/pd_like.png"/>
												    <span>
                                                        
                                                          
                                                              97.3%
                                                          
                                                          
                                                        
                                                    </span>
												</div>
											</a>
										</div>
										<a href="/product/detail/2477-5361?categoryId=2" class="prodName">
										무농약 밤 고구마 (800g)
										</a>
										<div class="prodPrice">
											<span class="prodPrice2">5,900<em>원</em><span></span></span>
											<span class="prodPrice1">4,840<em>원</em></span>
										</div>
										<!-- 상품 오버시 노출 -->
										<div class="pop_view">
											<div class="positionR">
												<div class="icList">
													<ul>
														<li>
															<a href="#" onclick="addWishList(2477, 5361); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon1.png" alt="찜하기">
															</a>
														</li>
														<li>
															<a href="#" onclick="addCart(2477, 5361); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon2.png" alt="장바구니 넣기">
															</a>
														</li>
														<li>
															<a href="#" onclick="buyItNow(2477, 5361); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon3.png" alt="바로구매">
															</a>
														</li>
													</ul>
												</div>
												<p>
													<a href="/product/detail/2477-5361?categoryId=2">
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
											<a href="/product/detail/2455-2807?categoryId=2">
												<img src="http://www.oasis.co.kr:8580/product/2455/thumb/thumb_2455ecf42213-abc7-4710-a265-d6daf75b1f04.jpg" alt="상품이미지">
												
	                    						<!-- ico : 할인률 -->
	                    						<span class="saleSellTxt"><span>10<em>%</em></span></span>
	                    						
												
												
												
												
												
												<div class="pdLikeWrap">
												    <img src="/dailychan/resources/images/shop/pd_like.png"/>
												    <span>
                                                        
                                                          
                                                              99.2%
                                                          
                                                          
                                                        
                                                    </span>
												</div>
											</a>
										</div>
										<a href="/product/detail/2455-2807?categoryId=2" class="prodName">
										무농약 당근(500g)
										</a>
										<div class="prodPrice">
											<span class="prodPrice2">2,400<em>원</em><span></span></span>
											<span class="prodPrice1">2,160<em>원</em></span>
										</div>
										<!-- 상품 오버시 노출 -->
										<div class="pop_view">
											<div class="positionR">
												<div class="icList">
													<ul>
														<li>
															<a href="#" onclick="addWishList(2455, 2807); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon1.png" alt="찜하기">
															</a>
														</li>
														<li>
															<a href="#" onclick="addCart(2455, 2807); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon2.png" alt="장바구니 넣기">
															</a>
														</li>
														<li>
															<a href="#" onclick="buyItNow(2455, 2807); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon3.png" alt="바로구매">
															</a>
														</li>
													</ul>
												</div>
												<p>
													<a href="/product/detail/2455-2807?categoryId=2">
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
											<a href="/product/detail/2454-2806?categoryId=2">
												<img src="http://www.oasis.co.kr:8580/product/2454/thumb/thumb_245424d016f0-f5e5-4632-9387-1cf32c39c188.jpg" alt="상품이미지">
												
	                    						<!-- ico : 할인률 -->
	                    						<span class="saleSellTxt"><span>17<em>%</em></span></span>
	                    						
												
												
												
												
												
												<div class="pdLikeWrap">
												    <img src="/dailychan/resources/images/shop/pd_like.png"/>
												    <span>
                                                        
                                                          
                                                              97.2%
                                                          
                                                          
                                                        
                                                    </span>
												</div>
											</a>
										</div>
										<a href="/product/detail/2454-2806?categoryId=2" class="prodName">
										무농약 감자 (800g)
										</a>
										<div class="prodPrice">
											<span class="prodPrice2">5,900<em>원</em><span></span></span>
											<span class="prodPrice1">4,840<em>원</em></span>
										</div>
										<!-- 상품 오버시 노출 -->
										<div class="pop_view">
											<div class="positionR">
												<div class="icList">
													<ul>
														<li>
															<a href="#" onclick="addWishList(2454, 2806); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon1.png" alt="찜하기">
															</a>
														</li>
														<li>
															<a href="#" onclick="addCart(2454, 2806); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon2.png" alt="장바구니 넣기">
															</a>
														</li>
														<li>
															<a href="#" onclick="buyItNow(2454, 2806); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon3.png" alt="바로구매">
															</a>
														</li>
													</ul>
												</div>
												<p>
													<a href="/product/detail/2454-2806?categoryId=2">
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
											<a href="/product/detail/1266-5190?categoryId=2">
												<img src="http://www.oasis.co.kr:8580/product/1266/thumb/thumb_1266cc5dc690-52d2-428f-9e4d-515c559aa283.png" alt="상품이미지">
												
	                    						<!-- ico : 할인률 -->
	                    						<span class="saleSellTxt"><span>8<em>%</em></span></span>
	                    						
												
												
												
												
												
												<div class="pdLikeWrap">
												    <img src="/dailychan/resources/images/shop/pd_like.png"/>
												    <span>
                                                        
                                                          
                                                              98.5%
                                                          
                                                          
                                                        
                                                    </span>
												</div>
											</a>
										</div>
										<a href="/product/detail/1266-5190?categoryId=2" class="prodName">
										무농약 브로컬리 (1통)
										</a>
										<div class="prodPrice">
											<span class="prodPrice2">2,900<em>원</em><span></span></span>
											<span class="prodPrice1">2,640<em>원</em></span>
										</div>
										<!-- 상품 오버시 노출 -->
										<div class="pop_view">
											<div class="positionR">
												<div class="icList">
													<ul>
														<li>
															<a href="#" onclick="addWishList(1266, 5190); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon1.png" alt="찜하기">
															</a>
														</li>
														<li>
															<a href="#" onclick="addCart(1266, 5190); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon2.png" alt="장바구니 넣기">
															</a>
														</li>
														<li>
															<a href="#" onclick="buyItNow(1266, 5190); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon3.png" alt="바로구매">
															</a>
														</li>
													</ul>
												</div>
												<p>
													<a href="/product/detail/1266-5190?categoryId=2">
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
											<a href="/product/detail/1263-1125?categoryId=2">
												<img src="http://www.oasis.co.kr:8580/product/1263/thumb/thumb_1263e8375ad5-010e-428a-a316-ec1ecb97a3f7.jpg" alt="상품이미지">
												
	                    						<!-- ico : 할인률 -->
	                    						<span class="saleSellTxt"><span>10<em>%</em></span></span>
	                    						
												
												
												
												
												
												<div class="pdLikeWrap">
												    <img src="/dailychan/resources/images/shop/pd_like.png"/>
												    <span>
                                                        
                                                          
                                                              94.8%
                                                          
                                                          
                                                        
                                                    </span>
												</div>
											</a>
										</div>
										<a href="/product/detail/1263-1125?categoryId=2" class="prodName">
										무농약 햇양파 (800g)
										</a>
										<div class="prodPrice">
											<span class="prodPrice2">2,500<em>원</em><span></span></span>
											<span class="prodPrice1">2,250<em>원</em></span>
										</div>
										<!-- 상품 오버시 노출 -->
										<div class="pop_view">
											<div class="positionR">
												<div class="icList">
													<ul>
														<li>
															<a href="#" onclick="addWishList(1263, 1125); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon1.png" alt="찜하기">
															</a>
														</li>
														<li>
															<a href="#" onclick="addCart(1263, 1125); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon2.png" alt="장바구니 넣기">
															</a>
														</li>
														<li>
															<a href="#" onclick="buyItNow(1263, 1125); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon3.png" alt="바로구매">
															</a>
														</li>
													</ul>
												</div>
												<p>
													<a href="/product/detail/1263-1125?categoryId=2">
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
											<a href="/product/detail/1262-1124?categoryId=2">
												<img src="http://www.oasis.co.kr:8580/product/1262/thumb/thumb_126236da5a60-587a-44d4-b1c6-fce45b3f1918.jpg" alt="상품이미지">
												
	                    						<!-- ico : 할인률 -->
	                    						<span class="saleSellTxt"><span>20<em>%</em></span></span>
	                    						
												
												
												
												
												
												<div class="pdLikeWrap">
												    <img src="/dailychan/resources/images/shop/pd_like.png"/>
												    <span>
                                                        
                                                          
                                                              98%
                                                          
                                                          
                                                        
                                                    </span>
												</div>
											</a>
										</div>
										<a href="/product/detail/1262-1124?categoryId=2" class="prodName">
										무농약 무 (850g)
										</a>
										<div class="prodPrice">
											<span class="prodPrice2">1,800<em>원</em><span></span></span>
											<span class="prodPrice1">1,440<em>원</em></span>
										</div>
										<!-- 상품 오버시 노출 -->
										<div class="pop_view">
											<div class="positionR">
												<div class="icList">
													<ul>
														<li>
															<a href="#" onclick="addWishList(1262, 1124); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon1.png" alt="찜하기">
															</a>
														</li>
														<li>
															<a href="#" onclick="addCart(1262, 1124); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon2.png" alt="장바구니 넣기">
															</a>
														</li>
														<li>
															<a href="#" onclick="buyItNow(1262, 1124); return false;">
																<img src="/dailychan/resources/images/shop/shopIcon3.png" alt="바로구매">
															</a>
														</li>
													</ul>
												</div>
												<p>
													<a href="/product/detail/1262-1124?categoryId=2">
														<img src="/dailychan/resources/images/shop/pop_product_more.png" alt="" />
													</a>
												</p>
											</div>
										</div>
										<!-- //상품 오버시 노출 -->
									</li>
									<!-- //상품 1set -->
								
							
								
									
									
									
	                    			
	                    			
	                    			
	                    			
	                    			
	                    			
									
										
										
											
											
												
												
										
										
										
							
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


	

  
</div>
</body>
</html>

    