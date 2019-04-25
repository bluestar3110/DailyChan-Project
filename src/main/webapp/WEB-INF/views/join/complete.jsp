<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	  <title>DailyChan: 믿을 수 있는 먹거리</title>
	
	<!-- 네이버 전환페이지 설정  -->
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script> 
	<script type="text/javascript"> 
	var _nasa={};
	_nasa["cnv"] = wcs.cnv("2","10"); // 전환유형, 전환가치 설정해야함. 설치매뉴얼 참고
	</script> 
	<meta name="referrer" content="no-referrer" />

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
		$(document).ready(function() {
			
		});
	</script>
	
	<!-- 다음 가입전환 -->
	<script type="text/javascript"> 
	 //<![CDATA[ 
	 var DaumConversionDctSv="type=M,orderID=,amount="; 
	 var DaumConversionAccountID="RJSnSKGGnQfKt2u6pgST8w00"; 
	 if(typeof DaumConversionScriptLoaded=="undefined"&&location.protocol!="file:"){ 
	 	var DaumConversionScriptLoaded=true; 
	 	document.write(unescape("%3Cscript%20type%3D%22text/javas"+"cript%22%20src%3D%22"+(location.protocol=="https:"?"https":"http")+"%3A//t1.daumcdn.net/cssjs/common/cts/vr200/dcts.js%22%3E%3C/script%3E")); 
	 } 
	 //]]> 
	 </script> 
	
</head>

<body>
<div class="allWrap">
	<!-- header -->

	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	
	  ga('create', 'UA-74127834-1', 'auto');
	  ga('send', 'pageview');
	
	</script>
	
	<script type="text/javascript">
		function setKeyword(keyword) {
	        $("#keyword").val(keyword);
	        searchProduct('keyword');
	    }
	
		function jsFixedLayerHide() { 
			$('.fixedLayer').hide();
		};
		
		function findPostCodeHeader() {
            new daum.Postcode({
                oncomplete : function(data) {
                    if (data.jibunAddress.length > 0) {
                        checkDeliveryTimeStatusHeader(data.roadAddress, data.jibunAddress);
                    } else {
                        checkDeliveryTimeStatusHeader(data.roadAddress, data.autoJibunAddress);
                    }
                    
                }
            }).open();
        }
        
        function checkDeliveryTimeStatusHeader(address, oldAddress) {
            var replaceAddress = address.replace(/ /g, '');
            var replaceOldAddress = oldAddress.replace(/ /g, '');
            
            if (replaceAddress || replaceOldAddress) {
                isOasisDeliveryHeader(replaceAddress, replaceOldAddress);
            } else {
                alert("잘못된 주소입니다.");
            }
        }
        
        function isOasisDeliveryHeader(address, oldAddress) {
            var param = {
                    address: address,
                    oldAddress: oldAddress
                };
            $.ajax({
                url : contextPath + "/event/check/deliveryArea",
                type: "GET",
                dataType: "json",
                data: param,
                success: function(data) {
                    if (data.status == 'OK') {
                    	
                    	if (data.data.oasisDeliveryYn == "Y") {
                    		if (data.data.daybreakDeliveryYn == "Y") {
                    			$("#oasisDeliveryCheckTxt").css("color","#5172e8").text("오아시스 배송과 새벽배송이 모두 가능한 주소입니다.");
                            } else {
                            	$("#oasisDeliveryCheckTxt").css("color","#5172e8").text("오아시스 배송이 가능한 주소입니다.");
                            }
                        } else {
                        	if (data.data.daybreakDeliveryYn == "Y") {
                        		$("#oasisDeliveryCheckTxt").css("color","#5172e8").text("택배배송과 새벽배송이 가능한 주소입니다.");
                            } else {
                            	$("#oasisDeliveryCheckTxt").css("color","rgb(234, 93, 93)").text("오아시스 배송권역이 아닙니다. 고객님의 상품은 택배로 배송됩니다.");
                            }
                        }
                    } else {
                      alert(data.message);
                    }
                }
            });
        }
        
        function addCookie(keyword) {
            //검색어 쿠키 설정
            var d = new Date();
            var cookieVal = escape( keyword );
            var name = "keywordSearchProduct" + new Date().getTime();
            var todayDate = new Date(); 
            todayDate.setDate( todayDate.getDate() + 1 ); //24시간
            document.cookie = name + "=" + cookieVal + "; path=/; expires=" + todayDate.toGMTString() + ";";            
        }
        
        function removeCookie(name){
            var todayDate = new Date(); 
            todayDate.setDate( todayDate.getDate() - 1 );
            document.cookie = name + "=" + escape( '' ) + "; path=/; expires=" + todayDate.toGMTString() + ";";
        }
        
        
	
		$(document).ready(function() {
			
			
            
			
			var ww = $('.btnOpenAllBanner').width() / 2;
			$('.btnOpenAllBanner').css('margin-left', -ww);
			
			$('.btnCloseAllBanner').click(function(){
				$('.allPageBanner').slideUp('slow');
			});
	
			$('.btnOpenAllBanner').click(function(){
				$('.allPageBanner').slideToggle('slow');
			});
			
			$('.tpbClose').click(function(){
				setBannerHideCookie();
				$('.topPmBanner').hide();
			});
			
			$("#keyword").focus( function() {
				  
		    });
			
			$("#keyword").blur( function() {
				if (!$('#scWordListWrap').is(':hover')) {
					$("#scWordListWrap").hide();
                }
		    });
		});
		
		function setBannerHideCookie(){
			var name = "bannerHideCookie";
            var value = "Y";
			var todayDate = new Date(); 
            todayDate.setDate( todayDate.getDate() + 1 ); //24시간
            document.cookie = name + "=" + value + "; path=/; expires=" + todayDate.toGMTString() + ";";
		}
		
		function switchPlatform(p, refUrl) {
			
			if(refUrl.indexOf("?") > 0)
				location.replace(refUrl + "&isMobileUrl=" + p);
			else
				location.replace(refUrl + "?isMobileUrl=" + p);
			
			/* $.ajax({
				url : contextPath + "/switchPlatform",
				type: "GET",
				dataType: "json",
				data: { isMobileUrl : p },
				success: function(html) {
					location.replace(refUrl);
				}
			}); */
		}
		
		function movePromotion() {
			
		}
		
		function findDeliveryArea() {
			$("#findDeliveryPop").show();
			$(".popDim").show();
		}
	</script>
	
	<!-- header -->

		<!-- 상단 헤더 영역 -->
	
		<!-- gnb 영역 -->

		<!-- //popup : 개인정보 입력 -->

        <div class="popDim"></div>
		
	</div>
	<!-- // header -->
	<!-- // header -->
	
	<!-- 컨텐츠 -->
	<div class="contentsArea loginJoinBg" id="sec_join_result">
		<div class="contentsWrap">
			
			<!-- 오른쪽 영역 -->
			<div class="content oasisLoginHt"> 
				<!-- 내용 입니다 -->
				
				<div class="oasisLoginWrap oasisJoinWrap" id="resultBox">
				
				 	<div class="newJoinTitle">가입신청 완료</div>           

                    
                    <!-- 가입신청완료 영역 -->
                    <div class="join_result_area">
						<div>
							<img src="/dailychan/resources/images/loginJoin/ico_join_end.png" alt="" />
						</div>
						<div>
							Daily Chan <strong>회원이 되신것을 환영</strong>합니다!
						</div>
						
							<p>
								아이디는 <strong></strong>입니다.
							</p>
						
						<span>가격감동/품질감동/서비스 감동을 경험하세요.</span>
					</div>
                    <!-- //가입신청완료 영역 -->
                    
                    <!-- tit : 오아시스 패밀리 혜택 안내 -->
					<div class="tit_benefit">
						<p><img src="/dailychan/resources/images/loginJoin/tit_membership.png" alt="오아시스 패밀리 혜택 안내" /></p>
					</div>
					
					<!--오아시스 패밀리 혜택 영역 -->
					<div class="benefit_list_area">
						<table cellpadding="0" cellspacing="0" border="0">
							<colgroup>
								<col width="33%" />
								<col width="34%" />
								<col width="33%" />
							</colgroup>
							<tr>
								<td>
									<div class="ico_benefit_1">
										<img src="/dailychan/resources/images/intro/ico_benefit_1.png" alt="4" />
									</div>
									<span>혜택하나!</span>
									<strong>오아시스 24 배송</strong>
								
									<p>
										주문 후 5시간 이내<br />
										엄선된 품질로 <br />
										신속 정확 배송!
									</p>
								</td>
								<td>
									<div class="ico_benefit_1">
										<img src="/dailychan/resources/images/intro/ico_benefit_2.png" alt="SALE" />
									</div>
									<span>혜택두울!</span>
									<strong>매일 매일 특별한 혜택</strong>
								
									<p>
										매장에서 만나보던 <br />
										혜택 그대로 +<br />
										온라인 회원 전용 혜택
									</p>
								</td>
								<td>
									<div class="ico_benefit_1">
										<img src="/dailychan/resources/images/intro/ico_benefit_3.png" alt="DAY" />
									</div>
									<span>혜택세엣!</span>
									<strong>오! 감동</strong>
								
									<p>
										ID당 품목별<br />
										하루에 한개씩만 구매 가능한<br />
										파격 할인!
									</p>
								</td>
							</tr>

						</table>
					</div>
					<!--//오아시스패밀리 혜택 영역 -->

					<!-- 버튼 -->
					<div class="oasisLoginBtn2">
						
						<a href="/dailychan/join/login" >로그인</a>
					</div>
					<!--// 버튼 -->
				</div>
				<!-- //내용 입니다 -->
			</div>
			<!-- //오른쪽 영역 -->
		</div>
	</div>
	<!-- //컨텐츠 -->
	
	<!-- footer -->
    
	<div class="footerArea" style='border-top:0px'>
		
		
		
		<div class="footerWrap">
			<ul class="footerList">
				<li><a href="/company/introduce/info">오아시스 소개</a></li>
				<li><a href="/company/introduce/store">매장 안내</a></li>
				<li><a href="/help/terms">약관 및 정책</a></li>
				<li><a href="/help/faqMain?keyword=&page=1&categoryNo=17">고객센터</a></li>
				
				<li><a href="/contactUs/contact">입점 문의</a></li>
				<li><a href="/contactUs/recruit">인재 채용</a></li>
			</ul>
		</div>
		<div class="contents">
			<div class="footerCopy">
			<div class="footersns">
			    
			        <div class="snsList">
						<img src="/dailychan/resources/images/common/w_footer_sns.png?dummy=0.01">
						<a href="/join/social/kakao"><img src="/images/common/w_footer_sns1.png"></a>
						<a href="/join/social/facebook"><img src="/images/common/w_footer_sns2.png"></a>
						<a href="/join/social/google"><img src="/images/common/w_footer_sns3.png"></a>
						<a href="/join/social/naver"><img src="/images/common/w_footer_sns4.png"></a>
					</div>
			    
			</div>
			<p>
					<span>본사 : 경기도 광주시 밭말길 17 &nbsp;&nbsp; 주소 : 서울시 서초구 서초중앙로8길 117 지어소프트빌딩 6층 오아시스마켓</span><br>
					물류센터 : 서울 송파 장지동 복합물류센터 B동 &nbsp;&nbsp; 고객센터 : 1577-0098 <span class="operatingTime">(평일 09:30~18:30, 토요일 09:30~15:00, 일요일/공휴일 휴무)</span>
					<br>오아시스마켓 대표자 : 최우식 &nbsp;&nbsp; 사업자등록번호 : 126-86-45211 &nbsp;&nbsp; 통신판매업신고번호 : 제 2011-경기광주-0586호
				</p>
			</div>
		</div>
	</div>
	

<form id="orderForm" action="/order/prepare/delivery" method="post" style="display: none;"></form>

<div id="isolationField" style="position: fixed; top: 0; bottom: 0; right: 0; left: 0; display: none; z-index: 999;"></div>
	<!-- // footer -->
</div>
</body>
</html>