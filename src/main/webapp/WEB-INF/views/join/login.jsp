<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <title>DailyChan::믿을 수 있는 먹거리</title>

<link rel="icon" href="/dailychan/resources/images/x-icon.ico" type="/dailychan/resources/images/x-icon.ico" />
<link rel="apple-touch-icon-precomposed" href="/dailychan/resources/images/webicon/Icon-Small-72.png" />
<link rel="apple-touch-icon-precomposed" href="/dailychan/resources/images/webicon/Icon-Small-50@2x.png" sizes="96x96" />
<link rel="apple-touch-icon-precomposed" href="/dailychan/resources/images/webicon/Icon-Small-72@2x.png" sizes="144x144" />
<link rel="apple-touch-icon-precomposed" href="/dailychan/resources/images/webicon/Icon-Small-60@3x.png" sizes="192x192" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_shop.css?dummy=5.99" />
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


<script type="text/javascript">
		var $userId;
		var $password;
		
		$(document).ready(function() {
			
			
			
			$userId = $("#userId");
			$password = $("#password");
			
			$userId.on("keydown", function(e) {
				
				if (e.keyCode == 13) {
					if ($.trim($userId.val()) != "" && $.trim($password.val()) == "") {
						$password.focus();
					}
					else if ($.trim($userId.val()) != "" && $.trim($password.val()) != "") {
						doLogin();
					}
					else {
						alert("아이디를 입력해주세요.");
						$userId.focus();
					}
				}
			});
			
			$password.on("keydown", function(e) {
				if (e.keyCode == 13) {
					doLogin();
				}
			});
			
			var userId = $.cookie("rememberUserId");
			
			if (userId) {
				$("#rememberId").get(0).checked = true;
				$userId.val(userId);
			}
			
			$userId.focus();
		});
		
		function doLogin() {
			if ($.trim($userId.val()) == "") {
				alert("아이디를 입력해주세요.");
				$userId.focus();
				return;
			} else if ($.trim($password.val()) == "") {
				alert("비밀번호를 입력해주세요.");
				$password.focus();
				return;
			} else {
				if ( $("#rememberId").get(0).checked ) {
					$.cookie("rememberUserId", $.trim($userId.val()), { expires: 7, path: "/" });
				} else {
					$.removeCookie("rememberUserId", { path: "/" });
				}
				
				document.loginForm.submit();
			}
		}
	</script>
</head>

<body>
	<div class="allWrap">
		<!-- header -->

		<!-- 상단 헤더 영역 -->
		
		<!-- 상단 헤더 영역 -->
	
		<!-- gnb 영역 -->
		
	<!-- // header -->
		<!-- // header -->

		<!-- 컨텐츠 -->
		<div class="contentsArea loginJoinBg" id="sec_login">
			
			<div class="contentsWrap">

				<!-- 오른쪽 영역 -->
				<div class="content oasisLoginHt">
					<!-- 내용 입니다 -->
					
					<form name="loginForm" action="/doLogin"><!-- method="POST"  -->
						<div class="oasisLoginWrap">
							<strong class="oasisLoginTit">오아시스 로그인</strong>

							<ul class="oasisLoginInputLi">
								<li><input type="text" placeholder="아이디" class="oasisLoginID" id="userId" name="userId" /></li>
								<li><input type="password" placeholder="비밀번호" class="oasisLoginPW" id="password" name="password" /></li>
							</ul>

							<div class="oasisLoginBtn2">
								<a href="#" onclick="doLogin(); return false;">로그인</a><!-- 로그인을 했을 경우 메인 페이지 가게 하는것 해야함  -->
							</div>

							<div class="oasisLoginBtn">
								<input type="checkbox" id="rememberId" /><label for="rememberId" style="cursor:pointer">아이디 저장</label>
								<div class="olBtn">
									<a href="/dailychan/join/findUserIdForm">아이디 찾기</a>
									<a href="/dailychan/join/findPasswordForm">비밀번호 재발급</a>
									<a href="/dailychan/join/list">가입하기</a>
								</div>
							</div>
							<br/>
							
							<div class="socialLoginWrap">
								 <a href="/social/login/kakao">
	                                <img src="/dailychan/resources/images/loginJoin/login_sns_kakao1.png">
	                            </a>
	                            <a href="/social/login/naver">
	                                <img src="/dailychan/resources/images/loginJoin/login_sns_naver1.png">
	                            </a>
	                            <a href="/social/login/google">
	                                <img src="/dailychan/resources/images/loginJoin/login_sns_google1.png">
	                            </a>
	                            <a href="/social/login/facebook">
	                                <img src="/dailychan/resources/images/loginJoin/login_sns_facebook1.png">
	                            </a>
							</div>
							
						</div>
					</form>
					<!-- //내용 입니다 -->
				</div>
				<!-- //오른쪽 영역 -->
			</div>
		</div>
		<!-- //컨텐츠 -->

		<!-- footer -->
 
		<!-- // footer -->
	</div>
</body>
</html>