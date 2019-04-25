<%@ page contentType="text/html; charset=UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <title>DailyChan::믿을 수 있는 먹거리</title>

<link rel="shortcut icon" href="/favicon.ico">
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
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

<script type="text/javascript" charset="utf-8" src="/dailychan/js/oasis_shop.js?dummy=5.05"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/js/oasis_common.js?dummy=5.12"></script>

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
			$(document).on("keyup", "#tel", function() {
	            $(this).val( $(this).val().replace(/[^0-9]/gi,"") );
	        });
	    	
			$("#userName").focus();
		});
		
		// OTP 발송
	    function sendOtp() {
	    	var tel = $("#tel");
	    	var authNo = $("#authNo");
	    	
	    	if ( tel.val() == "") {
	    		alert("휴대폰 번호를 입력해주세요.");
	    		tel.focus();
	    	} else if ( authNo.data("checkd") == "true") {
	    	} else {
	    		$.ajax({
	              url : "sendOtp/" + tel.val() + "?findNumberExists=true",
	              type : "GET",
	              dataType : "json",
	              success : function(response) {
	            	  if(response.status == "OK") {
	            		  $("#tel").data("checkd","true");
	            		  alert("인증번호가 발송되었습니다. 1분 이내에 인증해주세요.");
	            		  $("#authNo").focus();
	            	  } else {
	            		  $("#tel").data("checkd","false");
	            		  alert(response.message);
	            	  }
	              }
	    	    });
	    	}
	    }
	    
	    // OTP 인증
	    function phoneAuth() {
	   	   var authNo = $("#authNo");
	   	   var tel = $("#tel");
	   	   if (tel.val() == "") {
	   		   alert("전화번호를 입력해주세요.");
	   		   tel.focus();
	   	   } else if (authNo.val() == "") {
	   		   alert("인증번호를 입력해주세요.");
	   		   authNo.focus();
	   	   } else if ( authNo.data("checkd") == "true" ) {
	   	   } else {
	   		   
	   		   $.ajax({
	               url : "phoneAuth/" + authNo.val() + "/" + tel.val(),
	               type : "GET",
	               dataType : "json",
	               success : function(response) {
	                   if (response.status == "OK") {
	                	   alert("인증되었습니다.");
	                	   tel.attr("readonly","readonly");
	                	   authNo.attr("readonly","readonly");
	                	   $("#authOk").show();
	                	   authNo.data("checkd","true");
	                	   
	                	   findUserId();
	                   } else {
	                       alert(response.message);
	                   }
	               }
	           });  

	   	   }
	    }
		
	    // 아이디 찾기
		function findUserId() {
			var userName = $.trim( $("#userName").val() );
			var tel = $("#tel").val();
			var authNo = $("#authNo").val();
			
			if (userName == "") {
				alert("이름을 입력해주세요.");
				$("#userName").focus();
			}
			else if (tel == "") {
				alert("휴대전화 번호를 입력해주세요.");
				$("#tel").focus();
			}
			else if (authNo == "") {
				alert("인증번호를 입력해주세요.");
				$("#authNo").focus();
			}
			else {
				$.ajax({
					url : "findUserId",
					type: "POST",
					dataType: "json",
					data: {
						userName	: userName
						, tel		: tel
						, authNo	: authNo
					},
					success: function(response) {
						if (response.status == "OK") {
							var cnt = response.data.cnt;
							var data = response.data.html;
							$("#userIdList").empty().append(data);
							$("#findBox").hide();
							$("#resultBox").show();
							var heightVar = $(".oasisJoinWrap").css("height");
							
							if(cnt > 6) {
								heightVar = Number(heightVar.replace("px", "")) + (92 * (cnt-6));
								$(".oasisJoinWrap").css("height", heightVar + "px");	
							}
						}
						else {
							alert(response.message);
							$("#authNo").val("");
							$("#tel").data("checkd","false");
							$("#authNo").data("checkd","false");
							$("#tel").attr("readonly", false);
							$("#authNo").attr("readonly", false);
						}
					}
				});
			}
		}
		
	</script>
</head>

<body>

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
		<!-- //top banner-->

		<!-- 상단 헤더 영역 -->

		<!-- 상단 헤더 영역 -->
		
		
		<!-- //popup : 개인정보 입력 -->
	<!-- 컨텐츠 -->
	<div class="contentsArea loginJoinBg" id="sec_idpw_search">
		<div class="contentsWrap">
			<!-- 오른쪽 영역 -->
			<div class="content oasisLoginHt">
				<!-- 내용 입니다 -->
				<div class="oasisLoginWrap oasisJoinWrap" id="findBox">
					 <div class="newJoinTitle">아이디 찾기</div>           
                     <div class="newJoinSubTitle">
                    	회원님의 소중한 개인정보 보호를 위하여 본인확인이 필요합니다. <br>
						회원가입시 등록한  휴대전화 번호와 입력한 휴대전화 번호가 같아야 인증번호를 받을 수 있습니다.
                     </div>      
					
					
					<!-- 이름 입력 -->
					<ul class="oasisLoginInputLi oasisJoinInputLi oasisJoin_name">
						<li>
							<input type="text" placeholder="이름" id="userName" />
							
							<!--오류메시지-->
							<div class="messageBox">
								<p>이름을 입력하세요</p>
							</div>
							<!--//오류메시지-->
							
						</li>
					<!-- //이름 입력 -->

					<!--휴대폰번호 입력 -->
						<li>
							<div class="oasisJoinInput_in">
								<input type="text" placeholder="휴대폰번호" id="tel" name="tel" maxlength="11"/>
								<a href="#" onclick="sendOtp(); return false;">인증받기</a>
							</div>
						</li>
						<li>	
							<div class="oasisJoinInput_in">
								<input type="text" placeholder="인증번호" class="oasisJoinInputPW" id="authNo" name="authNo" maxlength="4"/>
								<a href="#" onclick="phoneAuth(); return false;">확인</a>
							</div>
							<!--오류메시지-->
							<p class="messageBox">인증번호를 입력하세요.</p>
							<!--//오류메시지-->
						</li>

					</ul>
					<!--//휴대폰번호 입력 -->

					<!-- btn : 아이디 비밀번호 찾기 하단 버튼 -->
					<div class="oasisLoginBtn2">
						<a href="#" class="btn_idpw_1" onclick="findUserId();return false">아이디 찾기</a>
					</div>

				</div>
				
				<div class="oasisLoginWrap oasisJoinWrap" id="resultBox" style="display:none;">
					<!-- tit : 아이디 찾기 -->
					<div class="tit_idpw_result">
						<strong id="id">아이디 찾기</strong>
						<p>고객님의 정보와 일치하는 아이디는 아래와 같습니다. </p>
					</div>
					
					<div class="idpw_result_area">
						<table cellpadding="0" cellspacing="0" border="0">
							<colgroup>
								<col width="165" />
								<col width="*" />
							</colgroup>
							<tr>
								<th>
									<img src="/images/loginJoin/ico_search_result.png" alt="" />
								</th>
								<td id="userIdList">
								</td>
							</tr>
						</table>
					</div>
					<!-- //아이디 찾기 결과 영역 -->
					
                    <!-- 버튼 -->
                    <div class="oasisLoginBtn2">
                        <a href="/login">로그인하기</a>
                        <a href="/join/findPasswordForm" style="margin-top:10px">비밀번호 재발급</a>
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

	<!-- // footer -->
</div>
</body>
</html>