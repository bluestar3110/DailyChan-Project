<%@ page contentType="text/html; charset=UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<title>데일리찬::믿을 수 있는 먹거리</title>
	
<link rel="icon" href="/dailychan/resources/images/x-icon.ico" type="/dailychan/resources/images/x-icon.ico" />

<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_shop.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/flick/jquery-ui.min.css" />
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.cookie.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.form.min.js"></script>

<script type="text/javascript">
//<![CDATA[
var contextPath = "";
var imgUrl = "http://www.oasis.co.kr:8580";
(function($) {
	$.ajaxSetup({
		beforeSend: function(xhr) {
			xhr.setRequestHeader("AJAX", "true");
		},
		error: function(xhr, status, err) {
			if (xhr.status == 403) {
				location.href = contextPath + "/login?redirect=true";
			}
			else {
				console.log("error: " + xhr.status);
			}
		}
	});
	
	$(document).ajaxStart(function() {
		$("#isolationField").show();
		
	}).ajaxStop(function() {
		$("#isolationField").hide();
	});
})(jQuery);
//]]>
</script>

<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_shop.js?dummy=5.05"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_common.js?dummy=5.04"></script>

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-PR5WGG3');</script>
<!-- End Google Tag Manager -->

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119809802-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-119809802-1');
</script>
 
<script type="text/javascript"> 
if (!wcs_add) var wcs_add={};
wcs_add["wa"] = "s_eb0d5275a00";
if (!_nasa) var _nasa={};
wcs.inflow();
wcs_do(_nasa);
</script>

	<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_mypage.css" />
	
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		
		function orderCancel(orderId,paymentType) {
			var msg1 = "구매취소 신청이 완료되었습니다.\n\n 취소한 상품은 다시 장바구니에 등록하실수 있습니다.\n등록하시겠습니까?\n\n *결제수단에 따라 실제 환불까지 1일~2주정도 소요될 수 있습니다.\n 궁금하신 사항은 고객센터 1577-0098로 문의주세요";
			var msg2 = "구매취소 하시겠습니까?\n\n *무통장입금 결제 후 구매취소시 환불 받으실 입금계좌 확인을\n 위해 별도로 연락을 드리도록 하겠습니다.\n궁금하신 사항은 고객센터 1577-0098로 문의주세요";
			
			var purl =  contextPath + "/myPage/orderCancel";
			

			if (paymentType == "SC0040") {
				purl = contextPath + "/myPage/orderCancelAccount"
			} else if (paymentType == "KAKAO") {
				purl = contextPath + "/myPage/orderCancelKakao"
			} else if (paymentType == "SMILE") {
				purl = contextPath + "/myPage/orderCancelSmile"
			} else if (paymentType == "NOPAY") {
				purl = contextPath + "/myPage/orderCancelNoPay"
			}

			if (confirm(msg2)) {

				$.ajax({
					url : purl,
					type : "POST",
					dataType : "json",
					data : {
						orderId : orderId
					},
					success : function(response) {
						//alert(JSON.stringify(response));
						if (response.status == "OK") {
							if (confirm(msg1)) {
								$.ajax({
									url : contextPath + "/myPage/recover",
									type : "POST",
									dataType : "json",
									data : {
										orderId : orderId
									},
									success : function(response) {
										//alert(JSON.stringify(response));
										if (response.status == "OK") {
											alert("상품을 장바구니에 담았습니다.");
											location.reload(true);
										} else {
											alert(response.message);
											location.reload(true);
										}
									}
								});
							}
						} else {
							alert(response.message);
							location.reload(true);
						}
					}
				});
			}
			else
				location.reload(true);
		}
	</script>
</head>

<body>
<div class="allWrap">
	
	<!-- 컨텐츠 -->
	<div class="contentsArea">
		<div class="contentsWrap">
			
			<div class="content"> 
				<!-- mypage -->
				<div class="mypage-wrap">

					<div class="mypage-personal">
						<div class="personal-info">
							<div class="grade">
								
									
									
										<i class="icon-grade basic">member</i>
									
								
							</div>
							<div class="name"><b>황병열</b><em>님</em></div>
							<div class="edit">
								<a href="/dailychan/myPage/info">
									<i class="icon-mypage tools"></i>회원정보관리
								</a>
							</div>
						</div>

						<div class="personal-status">
							<ul>
								<li>
									<a href="/dailychan/myPage/orderList">
										<i class="icon-mypage ps-order"></i>
										<b>주문/배송</b>
										<span><em>0
										</em><em class="blind">건</em></span>
									</a>
								</li>
								<li>
									<a href="/dailychan/myPage/pointList">
										<i class="icon-mypage ps-point"></i>
										<b>포인트</b>
										<span><em>0P</em></span>
									</a>
								</li>
								<li>
									<a href="/dailychan/myPage/couponList">
										<i class="icon-mypage ps-coupon"></i>
										<b>쿠폰</b>
										<span><em>1</em><em class="blind">장</em></span>
									</a>
								</li>
								<li>
									<a href="/dailychan/myPage/qnaList">
										<i class="icon-mypage ps-chat"></i>
										<b>1:1 상담</b>
										<span><em>0</em><em class="blind">건</em></span>							
									</a>
								</li>						
							</ul>
						</div>
					</div>


					<div class="mypage-contents-wrap">
                    	
                    	



						<div class="mypage-lnb">
							<a href="/dailychan/myPage/main">
								<h3>MY 쇼핑</h3>
							</a>
							<ul>
								
									<li>
										<a href="/dailychan/myPage/orderList">주문관리</a>
										
										
											<ul>
											
												<li><a href="/dailychan/myPage/orderList">주문/배송내역</a></li>
											
												<li><a href="/dailychan/myPage/cancelList">주문취소 내역</a></li>
											
												<li><a href="/dailychan/myPage/refundList">교환/반품 내역</a></li>
											
											</ul>
										
									</li>
								
									<li>
										<a href="/dailychan/myPage/wishList">찜내역</a>
										
										
									</li>
								
									<li>
										<a href="/dailychan/myPage/frequencyList">자주구매상품</a>
										
										
									</li>
								
									<li>
										<a href="/dailychan/myPage/pointList">포인트 내역</a>
										
										
											<ul>
											
												<li><a href="/dailychan/myPage/pointList">포인트 내역</a></li>
											
												<li><a href="/dailychan/myPage/pointList?accGubun=A">적립 내역</a></li>
											
												<li><a href="/dailychan/myPage/pointList?accGubun=U">차감 내역</a></li>
											
											</ul>
										
									</li>
								
									<li>
										<a href="/dailychan/myPage/couponList">쿠폰 내역</a>
										
										
											<ul>
											
												<li><a href="/dailychan/myPage/couponList">사용 가능 쿠폰</a></li>
											
												<li><a href="/dailychan/myPage/couponList?couponGubun=COM">사용 완료 쿠폰</a></li>
											
												<li><a href="/dailychan/myPage/couponList?couponGubun=EXP">기간 만료 쿠폰</a></li>
											
											</ul>
										
									</li>
								
									<li>
										<a href="/dailychan/myPage/commentList">구매후기</a>
										
										
									</li>
								
									<li>
										<a href="/dailychan/myPage/productQnaList">상품문의내역</a>
										
										
									</li>
								
									<li>
										<a href="/dailychan/myPage/qnaList">1:1상담내역</a>
										
										
									</li>
								
									<li>
										<a href="/dailychan/myPage/refundProductList">환불서비스</a>
										
										
											<ul>
											
												<li><a href="/dailychan/myPage/refundProductList?refundGbn=R0">환불가능상품</a></li>
											
												<li><a href="/dailychan/myPage/refundProductList?refundGbn=R1">환불요청상품</a></li>
											
												<li><a href="/dailychan/myPage/refundProductList?refundGbn=R2">승인/반려상품</a></li>
											
											</ul>
										
									</li>
								
									<li>
										<a href="/dailychan/myPage/info">회원정보 관리</a>
										
										
											<ul>
											
												<li><a href="/dailychan/myPage/info">회원정보 수정</a></li>
											
												<li><a href="/dailychan/myPage/changePassword">비밀번호 변경</a></li>
											
											</ul>
										
									</li>
								
									<li>
										<a href="/dailychan/myPage/invite">친구추천</a>
										
										
									</li>
								
							</ul>
						</div>

						
						<div class="mypage-contents">
							<div class="mypage-cblock">
								<div class="mypage-subtit">
									<h4>최근 주문내역</h4>
									<p>최근 주문하신 3개월 이내의 내역만 보여집니다.</p>
								</div>

								<div class="mypage-orderinfo-wrap">
									
										
											<div class="empty-msg">최근주문 내역이 없습니다.</div>
										
										
									
								</div>
							</div>
							
							<div class="mypage-cblock">

								<div class="mypage-subtit">
									<h4>찜내역</h4>
									<a href="/dailychan/myPage/wishList" class="more">
										<i class="icon-mypage more">More</i>
									</a>
								</div>

								<div class="mypage-goodslist">
									
										
											<div class="empty-msg">찜내역이 없습니다.</div>
										
										
									
								</div>
							</div>
						
							<div class="mypage-cblock">

								<div class="mypage-subtit">
									<h4>자주구매상품</h4>
									<a href="/dailychan/myPage/frequencyList" class="more"><i class="icon-mypage more">More</i></a>
								</div>

								<div class="mypage-goodslist">
									
										
											<div class="empty-msg">내역이 없습니다.</div>
										
										
									
								</div>
							</div>
						</div>

					</div>
				</div>


			</div>

		</div>
	</div>
	<!-- //컨텐츠 -->
	
</div>
</body>
</html>