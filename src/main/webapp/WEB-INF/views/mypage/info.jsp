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
			$("#password").on("keydown", function(e) {
				if (e.keyCode == 13) {
					checkPassword();
				}
			});
		});
		
		function checkPassword() {
			var password = $("#password").val();
			
			if (password == "") {
				alert("비밀번호를 입력해주세요.");
				$("#password").focus();
			}
			else {
				$.ajax({
					url : contextPath + "/dailychan/myPage/checkPassword",
					type: "POST",
					dataType: "json",
					data: { password: password },
					success: function(response) {
						if (response.status == "OK") {
							window.location.reload(true);
						}
						else {
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
								
									<li class="on">
										<a href="/dailychan/myPage/info">회원정보 관리</a>
										
										
											<ul>
											
												<li class="on"><a href="/dailychan/myPage/info">회원정보 수정</a></li>
											
												<li><a href="/dailychan/myPage/changePassword">비밀번호 변경</a></li>
											
											</ul>
										
									</li>
								
									<li>
										<a href="/dailychan/myPage/invite">친구추천</a>
										
										
									</li>
								
							</ul>
						</div>

						<!-- if문 시작 -->
						
						<div class="mypage-contents">
							<div class="mypage-cblock">
								<div class="mypage-subtit">
									<h4>회원정보 수정</h4>
								</div>
								<div class="mypage-order-info auto">
									<div class="row icon-guide for-passwordcheck">
										<h5>비밀번호 확인</h5>
										<p>정보를안전하게 보호하기 위해 비밀번호를 다시 한 번 확인 합니다.<br>오아시스는 회원님의 개인정보를 신중히 취급하며, 회원님의 동의없이는 기재하신 회원정보를 공개 및 변경하지 않습니다.  </p>
									</div>
								</div>
							</div>
							<div class="mypage-cblock">
								<div class="mypage-subtit">
									<h4>필수정보</h4>
								</div>

								<div class="mypage-form-table">
									<table>
										<colgroup>
											<col style="width:144px;">
											<col>
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">아이디</th>
												<td>
													<p>anews0927</p>
												</td>
											</tr>
											<tr>
												<th scope="row">비밀번호</th>
												<td>
													<p class="fe-row">
														<input type="password" id="password" autocomplete="new-password">
													</p>
												</td>
											</tr>
											
											
										</tbody>
									</table>
								</div>
								<div class="btn-wrap">
									<a href="#;" class="btn lred md" onclick="checkPassword(); return false;">확인</a>
									<a href="/dailychan/myPage/main" class="btn gray md">메인으로</a>
								</div>
							</div>
						</div>
						
						<!-- if문 끝 -->
						
						<!-- 회원정보 if문 시작 -->
						<div class="mypage-contents">

							<div class="mypage-cblock">
								<div class="mypage-subtit">
									<h4>필수정보</h4>
								</div>
								<div class="mypage-form-table green">
									<table>
										<colgroup>
											<col style="width:144px;">
											<col>
										</colgroup>
										<tbody>
											
												
												
													<tr>
														<th scope="row">아이디</th>
														<td>
															<p>anews0927</p>
														</td>
													</tr>
												
											
											<tr>
												<th scope="row">성명</th>
												<td>
													<p class="fe-row">
														<input type="text" id="userName" value="황병열">
													</p>
												</td>
											</tr>
											<tr>
												<th scope="row">휴대전화</th>
												<td>
													<p class="fe-row">
														<input type="text" id="newTel" value="01053054710">
														<a href="#;" class="btn" id="phoneAuth" onclick="SendOtp(); return false;">휴대폰 인증</a>
														<a href="#;" class="btn" id="retm" onclick="SendOtp(); return false;">재발송</a>
													</p>
													<p class="fe-row">
														<input type="text" id="otpNum" maxlength="4">
														<a href="#" class="btn" onclick="phoneAuth(); return false;">확인</a>
														<input id="time" readonly="readonly" style="border:0;margin-left:10px"/>
													</p>
												</td>
											</tr>
											<tr>
												<th scope="row">주소</th>
												<td>
													<p class="fe-row">
														<input type="text" readonly class="readonly sm" id="zoneCode" value="03426" readonly="readonly">
														<a href="#;" class="btn" onclick="findPostCode(); return false;">우편번호 찾기</a>
													</p>
													<p class="fe-row">
														<input type="text" class="readonly" id="address1" value="서울 은평구 서오릉로17길 21-11" readonly="readonly">
														<input type="text" id="address2" value="501호">
														<input id="oldAddress1" type="hidden"/>
														<input id="postCode" type="hidden"/>
													</p>
												</td>
											</tr>
											<tr>
												<th scope="row">이메일</th>
												<td>
													<p class="fe-row">
														<input type="text" id="email" value="anews0927@gmail.com">
													</p>
												</td>
											</tr>
											<tr>
												<th scope="row">SMS</th>
												<td>
													<p>
														<b>오아시스의 다양한 정보를 보시겠습니까?</b>
													</p>
													<div class="label-set">
														<p class="fe-row">
															<span class="tit">이메일 : </span>
															<label class="radio">
																<input type="radio" name="receiveEmail"  value="Y" id="email_y">
																<i></i><span>예</span>
															</label>
															<label class="radio">
																<input type="radio" name="receiveEmail" checked='checked' value="N" id="email_n">
																<i></i><span>아니오</span>
															</label>
														</p>
														<p class="fe-row">
															<span class="tit">SMS : </span>
															<label class="radio">
																<input type="radio" name="receiveSms"  value="Y" id="sms_y">
																<i></i><span>예</span>
															</label>
															<label class="radio">
																<input type="radio" name="receiveSms" checked='checked' value="N" id="sms_n">
																<i></i><span>아니오</span>
															</label>
														</p>
													</div>
													<p class="guide">
														이메일/SMS 수신 동의를 하시면 다양한 할인혜택과<br>이벤트/신상품 등의 정보를 빠르게 만나실 수 있습니다.<br><br>단,주문 및 배송관련 정보는 수신동의와 상관없이 자동 발송됩니다.
													</p>

												</td>
											</tr>
											<tr>
												<th scope="row">가입일</th>
												<td>
													<p>
														2019년 04월 22일 12시09분	
													</p>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="btn-wrap">
									<a href="#;" class="btn lred md" onclick="updateInfo(); return false;">정보수정</a>
									<a href="#;" class="btn gray md" onclick="dropInfo(); return false;">회원탈퇴</a>
									<a href="/myPage/main" class="btn gray md">메인으로</a>
									
								</div>
							</div>
						</div>
						
						<!-- 회원정보 if문 끝 -->
						
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //컨텐츠 -->

</div>
</body>
</html>