<%@ page contentType="text/html; charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_shop.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/flick/jquery-ui.min.css" />


<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.cookie.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_common.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_shop.js"></script>

</head>
<body>

<div class="quickMenu" id="miniArticle" style="position: absolute; top: 260px;">
			<div class="quickList" id="quickList">
				<div class="txt_branch">
					
					
						
							
							
							   <span>일반회원</span>
							
						
					
					<!-- btn : 배송지변경 -->
					<div>
					   <a href="/event/openPromotion/2" style="text-decoration:underline; text-decoration-color:#6ca437"><span>배송안내</span></a>
					</div>
					<a href="javascript:findDeliveryArea()" class="titBtnGray">배송지역찾기</a>
				</div>
				<strong class="quickTit">최근 본 상품</strong>
				
					
						<!--쇼핑목록 있는 경우 : 한페이지 상품 최대 5개까지-->
						<ul id="quickMenuContent"><li><a href="/product/detail/3578-5855">
						<img src="http://www.oasis.co.kr:8580/product/3578/thumb/thumb_35786c46e526-ce82-4fa7-a725-a30ed6b8576b.jpg" alt="상품이미지"></a>
						<div class="pop_quick" style="display:none;">
						<span class="btn_quick_close">
						<a href="javascript:quickMenuRemove(0)">
						<img src="/dailychan/resources/images/common/btn_quick_close.png" alt="닫기"></a>
						</span><div class="txt_product"><p>포기생채(250g)</p><p><strong>1,960</strong> 원</p></div>
						<p><img src="/dailychan/resources/images/common/bg_quick_cnt.png" alt=""></p></div></li></ul>
						<!--//쇼핑목록 있는 경우-->
					
					
				
			</div>
			
				<div class="quickBtn">
					<p><em id="quickMenuCurrentPage">1</em>/<span id="totalPage">1</span></p>
					<a href="#" class="quickBtnPrev" onclick="quickMenuGoPre(); return false;">
						<img src="/dailychan/resources/images/common/quickBtnPrev.png" alt="이전">
					</a>
					<a href="#" class="quickBtnNext" onclick="quickMenuGoNext(); return false;">
						<img src="/dailychan/resources/images/common/quickBtnNext.png" alt="다음">
					</a>
				</div>
			
			<a href="#" class="quickBtnTop">
				<img src="/dailychan/resources/images/common/quickBtnTop.png" alt="상단 바로가기">
			</a>
			<!--초특가할인-->
			



			<div class="quickBanner">
				<!-- 초특가할인 슬라이드 영역 -->
				<div id="quickSlide" style="visibility: visible;">
					<!--<ul > -->
					<ul>
						
							<li>
								<div>
									<a href="https://www.oasis.co.kr/myPage/invite">
										<img src="http://www.oasis.co.kr:8580/display/quick/quick_img_7_RaEj.png" alt="링크 이미지">
									</a>
								</div>
							</li>
						
					</ul>
				</div>
				<!-- //초특가할인 슬라이드 영역 -->
			</div>
			<!--//초특가할인-->
		</div>



</body>
</html>