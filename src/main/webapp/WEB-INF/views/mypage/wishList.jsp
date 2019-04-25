<%@ page contentType="text/html; charset=UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<title>데일리찬::믿을 수 있는 먹거리</title>
	
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
			// 전체 선택.
			//$("#checkAll, #checkAll2").click(function() {
			$("#checkAll2").click(function() {
				var flag = this.checked;
				
				$("#checkAll").get(0).checked = flag;
				$("#checkAll2").get(0).checked = flag;
				
				$(".chk_product").each(function() {
					this.checked = flag;
				});
			});
			
			// 부분 선택.
			$(".chk_product").click(function() {
				if ($(".chk_product:not(:checked)").length == 0) {
					$("#checkAll").get(0).checked = true;
					$("#checkAll2").get(0).checked = true;
				} else {
					$("#checkAll").get(0).checked = false;
					$("#checkAll2").get(0).checked = false;
				}
			});
		});
		
		function addToCart() {
			var selectedProductKeies = [];
			
			$(".chk_product:checked").each(function() {
				selectedProductKeies.push($(this).data("productid"));
			});
			
			if (selectedProductKeies.length == 0) {
				alert("상품을 선택해 주세요.");
			} else {
				addCarts(selectedProductKeies);
			}
		}
		
		function deleteToCart() {
			var selectedProductKeies = [];
			
			$(".chk_product:checked").each(function() {
				selectedProductKeies.push($(this).data("productid"));
			});
			
			if (selectedProductKeies.length == 0) {
				alert("상품을 선택해 주세요.");
			} else {
				deleteWishLists(selectedProductKeies);
			}
		}
			
		function checkAllBtn(){
			var flag;
			if($("#checkAll").get(0).checked){
				$("#checkAll").get(0).checked = false;
				$("#checkAll2").get(0).checked = false;
				flag = false;
			}else{
				$("#checkAll").get(0).checked = true;
				$("#checkAll2").get(0).checked = true;
				flag = true;
			}
			
			
			$(".chk_product").each(function() {
				this.checked = flag;
			});
		}
	</script>
</head>

<body>
<div class="allWrap">
	<!-- header -->

	<!-- // header -->
	
	<!-- 컨텐츠 -->
	<div class="contentsArea">

		<div class="contentsWrap">


			
			<div class="content"> 
				<!-- mypage-wrap -->
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


					<!-- mypage-contents-wrap -->
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
								
									<li class="on">
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
											
												<li><a href="//dailychanmyPage/changePassword">비밀번호 변경</a></li>
											
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
									<h4>찜내역</h4>
								</div>
								<div class="mypage-order-info auto">
									<div class="row">
										<ul class="dash">
											<li>찜목록에 담긴 상품은 바로 장바구니에 담으실 수 있으며 폴더로 구분하여 관리하실 수 있습니다.</li>
											<li>찜목록에 담은 시점과 구매시점에서 상품가격 및 이벤트가 변경될 수 있으며 조기품절 될 수 있습니다.</li>
											<li>최대 50개까지 등록가능 합니다. 50개 이상의 상품을 담으면 가장 오래 저장된 상품이 자동으로 삭제됩니다.</li>
										</ul>
									</div>
								</div>
								<div class="mypage-table mypage-goods-list">
									<table>
										<colgroup>
											<col style="width:45px;">
											<col>
											<col style="width:90px;">
											<col style="width:140px;">
											<col style="width:100px;">
											<col style="width:80px;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">
													<label class="checkbox">
														<input type="checkbox" id="checkAll2">
														<i></i>
													</label>
												</th>
												<th scope="col">상품정보</th>
												<th scope="col">판매가</th>
												<th scope="col">할인금액</th>
												<th scope="col">구매가</th>
												<th scope="col">주문상태</th>
											</tr>
										</thead>
										<tbody>
											
												<tr>
													<td colspan="6">
														<div class="maQnaNon">
						                                    <div class="empty-msg">찜 내역이 없습니다.</div>
						                                </div>
													</td>
												</tr>
											
											
										</tbody>
									</table>
								</div>
								
								<div class="paging-wrap">
									
								</div>
								
								<div class="mypage-table-action">
									<a href="#" class="btn gray" onclick="checkAllBtn(); return false;">전체선택</a>
									<a href="#" class="btn gray" onclick="addToCart(); return false;">선택상품 장바구니 담기</a>
									<a href="#" class="btn gray" onclick="deleteToCart(); return false;">선택삭제</a>
									<input type="checkbox" id="checkAll" style="width:0;height:0;"/>
								</div>
							</div>
						</div>
					</div>
					<!--// mypage-contents-wrap -->
				</div>
				<!--// mypage-wrap -->
			</div>
		</div>
	</div>
	<!-- //컨텐츠 -->
	
</div>
</body>
</html>