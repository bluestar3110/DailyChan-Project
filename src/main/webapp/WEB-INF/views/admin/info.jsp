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
			$('.mypage-toggle-list a').on('click',function(e) {
				e.preventDefault();
				if( $(this).closest('tr').next('.answer-tr , .review-tr').length > 0 ) {
					$(this).closest('tr').next('.answer-tr , .review-tr').toggle();
				}
				return false;
			});
		});
		
		function removeProductQna(qnaNo) {
			if(confirm("삭제 하시겠습니까?")) {
				//removeProductQna
				
				$.ajax({
					url : "removeProductQna",
					type : "POST",
					data : {qnaNo:qnaNo},
					dataType : "json",
					success : function(response) {
						if (response.status == "OK") {
							window.location.reload(true);
						} else {
							alert(response.message);
						}
					}
				});
			}
		}
	</script>
</head>

<body>
<div class="allWrap">

	<!-- 컨텐츠 -->
	<div class="contentsArea">

		<div class="contentsWrap">


			
			<div class="content"> 
				<!-- mypage-wrap -->
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


					<!-- mypage-contents-wrap -->
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
									<h4>회원리스트</h4>
								</div>
								<div class="mypage-table mypage-toggle-list mypage-qna-table">
									<table>
										<colgroup>
											<col style="width:110px;">
											<col style="width:90px;">
											<col>
											<col style="width:90px;">
											<col style="width:100px;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">회원아이디</th>
												<th scope="col">회원이름</th>
												<th scope="col">주소</th>
												<th scope="col">등록일</th>
												<th scope="col">관리</th>
											</tr>
										</thead>
										<tbody>
											
												<tr>
													<td colspan="5">
														<div class="empty-msg">회원리스트가 없습니다.</div>
													</td>
												</tr>
											
											
										</tbody>
									</table>
								</div>

								<div class="paging-wrap">
									
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