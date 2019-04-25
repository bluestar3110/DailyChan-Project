<%@ page contentType="text/html; charset=UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<title>데일리찬::믿을::믿을 수 있는 먹거리</title>

<link rel="icon" href="/dailychan/resources/images/x-icon.ico" type="/dailychan/resources/images/x-icon.ico" />
<link rel="apple-touch-icon-precomposed" href="/dailychan/resources/images/webicon/Icon-Small-72.png" />
<link rel="apple-touch-icon-precomposed" href="/dailychan/resources/images/webicon/Icon-Small-50@2x.png" sizes="96x96" />
<link rel="apple-touch-icon-precomposed" href="/dailychan/resources/images/webicon/Icon-Small-72@2x.png" sizes="144x144" />
<link rel="apple-touch-icon-precomposed" href="/dailychan/resources/images/webicon/Icon-Small-60@3x.png" sizes="192x192" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_shop.css?dummy=6.12" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/flick/jquery-ui.min.css" />
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.cookie.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.form.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/placeholders.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/clipboard.min.js"></script>
<script type="text/javascript" src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>

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
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_common.js?dummy=5.12"></script>

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

<!-- 네이버 프리미엄 로그 적용 : 공통 --> 
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script> 
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
				purl = contextPath + "/dailychan/myPage/orderCancelAccount"
			} else if (paymentType == "KAKAO") {
				purl = contextPath + "/dailychan/myPage/orderCancelKakao"
			} else if (paymentType == "SMILE") {
				purl = contextPath + "/dailychan/myPage/orderCancelSmile"
			} else if (paymentType == "NOPAY") {
				purl = contextPath + "/dailychan/myPage/orderCancelNoPay"
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
									url : contextPath + "/dailychan/myPage/recover",
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
								
									
									
										<i class="icon-grade family">family</i>
									
								
							</div>
							<div class="name"><b>관리자</b><em>님</em></div>
						</div>

						<div class="personal-status">
							<ul>
								<li>
									<a href="/dailychan/admin/orderList">
										<i class="icon-mypage ps-order"></i>
										<font size="15pt"><b>최근 주문내역</b></font>
										<span><em>0건</em></span>
									</a>
								</li>
								<li>
									<a href="/dailychan/admin/productQnaList">
										<i class="icon-mypage ps-chat"></i>
										<b>상품 문의내역</b>
										<span><em>0건</em></span>
									</a>
								</li>
								<li>
									<a href="/dailychan/admin/qnaList">
										<i class="icon-mypage ps-chat"></i>
										<b>1:1 상담내역</b>
										<span><em>0건</em></span>
									</a>
								</li>
								<li>
									<a href="/dailychan/admin/refundProductList">
										<i class="icon-mypage ps-point"></i>
										<b>환불 요청내역</b>
										<span><em>0건</em></span>							
									</a>
								</li>						
							</ul>
						</div>
					</div>


					<div class="mypage-contents-wrap">


						<div class="mypage-lnb">
							<a href="/dailychan/admin/main">
								<h3>Admin</h3>
							</a>
							<ul>
									<li>
										<a href="/dailychan/admin/register">상품등록</a>
										
									</li>
									
									<li>
										<a href="/dailychan/admin/recipeRegister">레시피등록</a>
										
									</li>
								
									<li>
										<a href="/dailychan/admin/orderList">주문관리</a>
	
										
									</li>

								
									<li>
										<a href="/dailychan/admin/pointList">포인트 발급</a>
										
									</li>
								
									<li>
										<a href="/dailychan/admin/couponList">쿠폰 발급</a>

										
									</li>
								
									<li>
										<a href="/dailychan/admin/commentList">구매후기</a>
										
										
									</li>
								
									<li>
										<a href="/dailychan/admin/productQnaList">상품문의내역</a>
										
										
									</li>
								
									<li>
										<a href="/dailychan/admin/qnaList">1:1상담내역</a>
										
										
									</li>
								
									<li>
										<a href="/dailychan/admin/refundProductList">환불서비스</a>
										
									</li>
								
									<li>
										<a href="/dailychan/admin/info">회원정보 관리</a>

										
									</li>

							</ul>
						</div>


						<div class="mypage-contents">

							<div class="mypage-cblock">

								<div class="mypage-subtit">
									<h4>주문/배송 내역</h4>
								</div>

								<div class="mypage-orderinfo-wrap">
									<ul>
									
										
											<li>
												<div class="mypage-orderinfo">
													<div class="empty-msg">주문 내역이 없습니다.</div>
												</div>
											</li>
										
										
									
									</ul>
								</div>

								<div class="paging-wrap">
									
								</div>
							</div>

							<div class="mypage-cblock">
								<div class="mypage-subtit">
									<h4>주문/배송상태 안내</h4>
								</div>					
								<div class="mypage-order-step">
									<ul>
										<li>
											<div class="step-head">
												<i class="txt-step step1">STEP 1</i>
												<span>주문접수</span>
											</div>
											<div class="step-body">
												입금 전 상태이며<br>7일 이내 미입금 시<br>자동취소됩니다.<br>(SMS 발송)
											</div>
										</li>
										<li>
											<div class="step-head">
												<i class="txt-step step2">STEP 2</i>
												<span>결제완료</span>
											</div>
											<div class="step-body">
												고객님의 결제내역<br>확인이 완료되었습니다.<br>(SMS 발송)
											</div>
										</li>
										<li>
											<div class="step-head">
												<i class="txt-step step3">STEP 3</i>
												<span>상품준비중</span>
											</div>
											<div class="step-body">
												주문 확인후 상품을<br>발송할 예정입니다.
											</div>
										</li>
										<li>
											<div class="step-head">
												<i class="txt-step step4">STEP 4</i>
												<span>배송중</span>
											</div>
											<div class="step-body">
												상품이 배송중입니다.<br>1~2일 후 상품이<br>도착합니다.
											</div>
										</li>
										<li>
											<div class="step-head">
												<i class="txt-step step5">STEP 5</i>
												<span>배송완료</span>
											</div>
											<div class="step-body">
												고객님이 상품을<br>수령하였습니다.<br>(SMS 발송)
											</div>
										</li>
									</ul>
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