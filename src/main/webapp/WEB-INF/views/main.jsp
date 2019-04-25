<%@ page contentType="text/html; charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <title>오아시스마켓::믿을 수 있는 먹거리</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="title" content="오아시스마켓::믿을 수 있는 먹거리" />
<meta name="description" content="세상에는 없는 가격! 오아시스에는 있습니다! 업계 최초 24시간 배송서비스!" />

<meta property="og:title" content="오아시스마켓::믿을 수 있는 먹거리" />
<meta property="og:type" content="website" />
<meta property="og:description" content="세상에는 없는 가격! 오아시스에는 있습니다! 업계 최초 24시간 배송서비스!" />
<meta property="og:url" content="www.oasis.co.kr" />
<meta property="og:image" content="/dailychan/resources/images/etc/oasis_kakao.jpg"/>
<meta name="naver-site-verification" content="3899c51fb285431259219d5399363f4ef440e1b6"/>

<link rel="shortcut icon" href="/favicon.ico">
<link rel="icon" href="/favicon.ico" type="/dailychan/resourcesimage/x-icon" />
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

    <link rel="stylesheet" href="/dailychan/resources/css/jquery.flipster.min.css">
    <script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.flipster.min.js"></script>
    <script type="text/javascript">
        var $layerPopupCnt = 0;
        
        function setCookie( name, value, expiredays ) { 
            var todayDate = new Date(); 
            todayDate.setDate( todayDate.getDate() + expiredays ); 
            document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";" 
         };
         
        $(document).ready(function() {
            /* 메인 레이어 팝업 */
            showPopup();
            
            $('.fixedLayer').show();
            $('.btnCloseAllBanner').click(function(){
                setCookie( "maindiv", "done" , 1 );
            });
            setTimeout(function(){
                $('.allPageBanner').slideUp('slow');
            }, 2000);
            cookiedata = document.cookie;    
            //console.log(cookiedata);
            if (cookiedata.indexOf("maindiv=done") < 0 ) {      
                $('.allPageBanner').show();
            } else {
                $('.allPageBanner').hide();
            }
            if (cookiedata.indexOf("fixedLayer=done") < 0 ) {      
                $('.fixedLayer').show();
            } else {
                $('.fixedLayer').hide();
            }
            
            // 메인 오!감동
            $('.oh_hot_deal_area dd ul > li').each(function(idx){
                $(this).hover(function(){
                    $(this).find('.product_on').show()
                },
                function(){
                    $('.product_on').hide();
                })
            });
            
              
            // 고객추천
            $('.custdeal_area dd ul > li').each(function(idx){
                $(this).hover(function(){
                    $(this).find('.product_on').show()
                },
                function(){
                    $('.product_on').hide();
                })
            });
        });
        function jsFixedLayerHideDay() { 
            setCookie( "fixedLayer", "done" , 1 );
            $('.fixedLayer').hide();
        };
        
        /* 메인 레이어 팝업 */
        function showPopup() {
           var popupCnt = 0;
            
            if(popupCnt > 0){
                cookiedata = document.cookie;
                
                if($layerPopupCnt > 0){
                    $('.popup-wrapper').show();
                    $('.oasisDim').show();  
                }
            }
        };
        
        /* 팝업 닫기 */
        function closePopup(no, todayClose) {
            $layerPopupCnt--;
            
            if("Y" == todayClose){
                setCookie( "popup"+no, "done" , 24 );               
            }
            $('#popup'+no).hide();
            
            if($layerPopupCnt == 0){
                $('.oasisDim').hide();
                $('.popup-wrapper').hide();
            }
        }
        
        
    </script>
</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PR5WGG3"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div class="allWrap mainConWrap">
    <!-- ico : 잎사귀 -->
    
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
	<div id="header">

		<!--top banner-->
		<div class="topPmBanner" style="background:#F0F4E6">
			<div class="tpb_in">
				<a href="/event/openPromotion/1">
					<img src="/dailychan/resources/images/common/top_openevent_banner.png" alt="">
				</a>
				<a href="#" class="tpbClose">
					<img src="/dailychan/resources/images/common/top_close.png" alt="상단 프로모션 닫기">
				</a>
			</div>
		</div>
		<!-- //top banner-->

		<!-- 상단 헤더 영역 -->
		<div class="header_area">
			<div class="contents">
	
				<!-- 마이페이지 -->
				<div class="mypage_list">
					<ul>
						
						
							<li><a href="/logout">로그아웃</a></li>
						
						<li><a href="/product/reviewList">베스트 후기</a></li>
						<li><a href="/myPage/orderList">주문/배송조회</a></li>
						<li class="end">
							<a href="/cart/list">장바구니
								
									(<span id="sessionCartCnt" style="color:inherit;">0</span>)
								
							</a>
						</li>
					</ul>
				</div>
	
			<div class="mypage_list_left">
					<ul>
						<li><a href="/myPage/main">마이페이지</a></li>
						<li><a href="/dailychan/help/qna.action">고객센터</a></li>
						
						
						<li class="end"><a href="javascript:openQuestionDialog();">1:1 상담</a></li>
                 		
					 </ul>
				</div>
				<!-- btn : h1 logo -->
				<div class="h1_logo">
					<a href="/">
						<img src="/dailychan/resources/images/common/h1_logo.png" alt="OASiS" />
					</a>
				</div>
	
				<!-- input : 검색창 / 기존 코드 -->
				<div class="searchBox">
					<input type="text" placeholder="바른먹거리를 찾으세요?" id="keyword" value="" /> 
					<a href="#" onclick="searchProduct('keyword'); return false;">
						<img src="/dailychan/resources/images/common/gnbSearch.png" alt="검색" />
					</a>
				</div>
				
				<!--최근, 추천검색어-->
		        <div class="scWordListWrap" id="scWordListWrap" style="display:none">
		            <div class="scWordList1">
		                <ul id="keywordHistoryContent" style="padding:10px 10px 10px 15px"></ul>
		            </div>
		        </div>
		        <!--최근, 추천검색어-->
				
				<!-- btn : 전단행사, 산지직송 -->
				<div class="theme_shop_list">
					
					
				</div>
			</div>
		</div>
		<!-- 상단 헤더 영역 -->
	
		<!-- gnb 영역 -->
		




<script type="text/javascript">
    $(document).ready(function() {
    	
        $('#gnbArea .gnb_first').on('mouseenter', function() {
            $('#gnbArea .depth_2').show();
            $('.event_depth').hide();
            $('.ctrList5').removeClass('on');
        })
     
        $('#gnbArea .gnb_list').on('mouseleave', function() {
            $('#gnbArea .depth_2').hide();
            $('.event_depth').hide();
        })
     
        $('#gnbArea .gnb_cate').on('mouseenter', function() {
            if (!$('.gnb_first').is(':hover')) {
                $('#gnbArea .depth_2').hide();
            }
         
            if (!$('.gnb_event').is(':hover')) {
                $('.event_depth').hide();
                $('.ctrList5').removeClass('on');
            }
        })
     
        /* 이벤트 */    
        $('div.event_depth').on('mouseleave', function() {
            if (!$('#gnbArea .gnb_list').is(':hover')) {
                $('.event_depth').hide();
                $('.ctrList5').removeClass('on');
            } 
        })
     
        $('#gnbArea .gnb_event').on('mouseenter', function() {
            $('.event_depth').show();
            $('.ctrList5').addClass('on');
        })
        .on('mouseleave', function() {              
            //if ($('#gnbArea .gnb_first').is(':hover') || ) {
            if (!$('#gnbArea').is(':hover') && !$('.event_depth').is(':hover')) {
            	$('.event_depth').hide();
                $('.ctrList5').removeClass('on');
            }
                
           // } 
        })
    });
</script>



<div class="gnb_area" id="gnbArea">
    <div class="contents">
        <div class="gnb_list">
            <ul class="depth_1">
                <li class="gnb_first"><span class="first"><a href="#" class="ctrList0"></a></span></li>
        		<li class="gnb_cate gnb_event">
                    <span><a class="ctrList5" href="/event/openPromotion/3"></a></span>
                </li>
                <li class="gnb_cate"><span><a class="ctrList3 " href="/product/list?categoryId=1"></a></span></li>
                <li class="gnb_cate"><span><a class="ctrList6 " href="/product/new"></a></span></li>
                <li class="gnb_cate"><span><a class="ctrList4 " href="/product/oh"></a></span></li>    
                <li class="gnb_cate"><span><a class="ctrList1 " href="/product/today"></a></span></li>
                <li class="gnb_cate"><span><a class="ctrList2 " href="/product/best"></a></span></li>
            </ul>
            <div class="depth_2">					   
                
                    
                    
                    <ul>                           
                        <li>
	                        <!-- 선택된 경우 : gnb_on -->
	                        
	                        
	                            
	                        
	                        
	                        <span class="first">
	                            <a href="#" onclick="javascript:categoryProducts(2); return false;">
	                                농산물 
	                            </a>
	                        </span>
	                        
	                            
	                                <li><a href="#" onclick="categoryProducts(9); return false;">주곡/잡곡</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(12); return false;">과일</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(11); return false;">채소류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(49); return false;">버섯/건나물류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(50); return false;">간편샐러드/가루류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(13); return false;">견과/병조림</a></li>
	                            
	                        
                        </li>
                    </ul>                           
                
                    
                    
                    <ul>                           
                        <li>
	                        <!-- 선택된 경우 : gnb_on -->
	                        
	                        
	                        
	                        <span class="first">
	                            <a href="#" onclick="javascript:categoryProducts(3); return false;">
	                                축산물 
	                            </a>
	                        </span>
	                        
	                            
	                                <li><a href="#" onclick="categoryProducts(16); return false;">닭/오리/유정란</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(14); return false;">소고기</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(15); return false;">돼지고기</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(51); return false;">우유/치즈/요구르트</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(17); return false;">육가공품</a></li>
	                            
	                        
                        </li>
                    </ul>                           
                
                    
                    
                    <ul>                           
                        <li>
	                        <!-- 선택된 경우 : gnb_on -->
	                        
	                        
	                        
	                        <span class="first">
	                            <a href="#" onclick="javascript:categoryProducts(4); return false;">
	                                수산물 
	                            </a>
	                        </span>
	                        
	                            
	                                <li><a href="#" onclick="categoryProducts(67); return false;">수산진미</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(43); return false;">젓갈류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(18); return false;">생선/조개류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(19); return false;">김/해조류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(20); return false;">건어물</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(21); return false;">수산가공</a></li>
	                            
	                        
                        </li>
                    </ul>                           
                
                    
                    
                    <ul>                           
                        <li>
	                        <!-- 선택된 경우 : gnb_on -->
	                        
	                        
	                        
	                        <span class="first">
	                            <a href="#" onclick="javascript:categoryProducts(7); return false;">
	                                건강/음료류 
	                            </a>
	                        </span>
	                        
	                            
	                                <li><a href="#" onclick="categoryProducts(65); return false;">건강즙류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(28); return false;">음료/차</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(48); return false;">천연과즙</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(35); return false;">액상/엑기스</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(36); return false;">홍삼류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(66); return false;">꿀/조청/환</a></li>
	                            
	                        
                        </li>
                    </ul>                           
                
                    
                    
                    <ul>                           
                        <li>
	                        <!-- 선택된 경우 : gnb_on -->
	                        
	                        
	                        
	                        <span class="first">
	                            <a href="#" onclick="javascript:categoryProducts(6); return false;">
	                                양념류 
	                            </a>
	                        </span>
	                        
	                            
	                                <li><a href="#" onclick="categoryProducts(30); return false;">참기름/오일류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(63); return false;">참깨/양념가루</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(52); return false;">된장/고추장/장류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(64); return false;">천연조미장류/소스류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(31); return false;">소금/식초/설탕/조청</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(32); return false;">부침/튀김/곡식가루</a></li>
	                            
	                        
                        </li>
                    </ul>                           
                
                    
                    
                    <ul>                           
                        <li>
	                        <!-- 선택된 경우 : gnb_on -->
	                        
	                        
	                        
	                        <span class="first">
	                            <a href="#" onclick="javascript:categoryProducts(5); return false;">
	                                일반식품 
	                            </a>
	                        </span>
	                        
	                            
	                                <li><a href="#" onclick="categoryProducts(27); return false;">두유/우유/유제품</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(22); return false;">두부/어묵/햄/만두류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(23); return false;">떡/카레/스프/국수</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(24); return false;">당면/라면/선식류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(25); return false;">과자/간식</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(26); return false;">빵/쿠키/잼/초코릿</a></li>
	                            
	                        
                        </li>
                    </ul>                           
                
                    
                    
                    <ul>                           
                        <li>
	                        <!-- 선택된 경우 : gnb_on -->
	                        
	                        
	                        
	                        <span class="first">
	                            <a href="#" onclick="javascript:categoryProducts(8); return false;">
	                                생활용품 
	                            </a>
	                        </span>
	                        
	                            
	                                <li><a href="#" onclick="categoryProducts(37); return false;">천연염색침구/의류</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(38); return false;">화장지/물티슈</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(39); return false;">세탁용품</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(40); return false;">미용/목욕용품</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(41); return false;">주방용품</a></li>
	                            
	                                <li><a href="#" onclick="categoryProducts(42); return false;">여성용품</a></li>
	                            
	                        
                        </li>
                    </ul>                           
                
            </div>
            <div class="event_depth">
                <ul>
                    <li><span><a href="/event/openPromotion/3">구매후기 이벤트</a></span></li>
                    <li><span><a href="/product/list?categoryId=57&page=1&sort=priority&direction=desc&rows=60">외식 같은 집밥</a></span></li>
                    <li><span><a href="/product/list?categoryId=59&page=1&sort=priority&direction=desc&rows=60">환절기 건강식품</a></span></li> 
                    <li><span><a href="/product/list?categoryId=58&page=1&sort=priority&direction=desc&rows=60">간편선물세트</a></span></li>
                    <li><span><a href="/product/list?categoryId=60&page=1&sort=priority&direction=desc&rows=60">아침식사대용</a></span></li>
                    <li><span><a href="/product/list?categoryId=61&page=1&sort=priority&direction=desc&rows=60">우리아이 안심</a></span></li>
                    <li><span><a href="/product/list?categoryId=62&page=1&sort=priority&direction=desc&rows=60">고객추천</a></span></li>
                    <li><span><a href="/product/list?categoryId=80&page=1&sort=priority&direction=desc&rows=60">따뜻한 영양간식</a></span></li>
                    <div class="clear"></div>
                 </ul>
            </div>
        </div>
    </div>
</div>

		<!-- //gnb 영역 -->
		
		<!-- 상품검색 form -->
		<form id="productSearchForm" method="get" action="/product/search">
			<input type="hidden" name="keyword"		value="" />
			<input type="hidden" name="page"		value="" />
			<input type="hidden" name="sort"		value="" />
			<input type="hidden" name="direction"	value="" />
			<input type="hidden" name="rows" />
		</form>
		<!--// 상품검색 form -->
		
		<!-- 상품 카테고리 form -->
		<form id="productListForm" method="get" action="/product/list">
			<input type="hidden" name="categoryId"	value="" />
			<input type="hidden" name="page"		value="" />
			<input type="hidden" name="sort"		value="" />
			<input type="hidden" name="direction"	value="" />
			<input type="hidden" name="rows" />
		</form>
		<!--// 상품 카테고리 form -->	


		
		<!--퀵메뉴-->
		<div class="quickMenu" id="miniArticle" >
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
				
					
					
						<p class="quickTxt">"최근 쇼핑 <br />히스토리가 <br />없습니다."</p>
					
				
			</div>
			
			<a href="#" class="quickBtnTop">
				<img src="/dailychan/resources/images/common/quickBtnTop.png" alt="상단 바로가기" />
			</a>
			<!--초특가할인-->
			



			<div class="quickBanner">
				<!-- 초특가할인 슬라이드 영역 -->
				<div id="quickSlide" style="visibility:hidden">
					<!--<ul > -->
					<ul>
						
							<li>
								<div>
									<a href="https://www.oasis.co.kr/myPage/invite">
										<img src="http://www.oasis.co.kr:8580/display/quick/quick_img_7_RaEj.png" alt="링크 이미지" />
									</a>
								</div>
							</li>
						
					</ul>
				</div>
				<!-- //초특가할인 슬라이드 영역 -->
			</div>
			<!--//초특가할인-->
		</div>
		<!--퀵메뉴-->
		
		
		<script	type="text/javascript">
			$("#quickSlide").css("visibility", "visible");
			function removeCookie(name){
				var todayDate = new Date();
			    todayDate.setDate( todayDate.getDate() - 1 );
			    document.cookie = name + "=" + escape( '' ) + "; path=/; expires=" + todayDate.toGMTString() + ";";
			}
		
			totalCnt = 0;
			totalPage = 0;
			
			detailUrl = "/product/detail/";
			imgUrl = "http://www.oasis.co.kr:8580";
	

	 	</script>


		<!------------------------ 배송관련 레이어팝업 / 전 페이지 공통 ------------------------>
		<!-- bg black -->
		<div id="bg_layer" style="display:none;"></div>

		<!-- popup : 개인정보 입력 -->
		<!-- 열기 : popHeightControl('popDelivery','block'); 
				닫기 : popHeightControl('popDelivery','none');
		-->
		<div class="pop_delivery" id="popDelivery" style="display:none;">

			<div class="delivery_search_area">
				<div class="tit_delivery">
					<p><img src="/dailychan/resources/images/common/tit_delivery.png" alt="오아시스 배송안내" /></p>
					<div class="txt_area">
						<strong>
							회원에 한해 오아시스 권역 내 배송 가능합니다.<br/>
                            OASIS 24 배송 가능 지역은 서울 강남구,<br/>
                            송파구, 강동구, 성남시 분당구, 용인시 수지구<br/>
                            입니다.<br/> 
						</strong>
						<p>
							그 외 지역은 일반 택배 배송으로 진행됩니다.
						</p><br/>
						
                        <p>해당 지역이 아닐경우</p>
                        <p>일반 택배 배송으로 진행됩니다.</p>
                        <p>빠른시일내 오아시스 배송 지역을 확대하겠습니다.</p>
					</div>
				
					<!-- input : 검색창 / 기존 코드 -->
					<div class="searchBox search_address">
						<!-- 
						<a href="#" onclick="javascript:searchDeliveryArea();return false;">
							<span style="width:170px;">배송가능지역 검색</span>
						</a>
						<a href="/myPage/joinMembership">
							<span style="width:170px;">패밀리 멤버전환</span>
						</a>
						-->
					</div>

				</div>
			</div>

			<!-- btn : 닫기 -->
			<div class="btn_pop_close">
				<a href="javascript:popHeightControl('popDelivery','none');"><span>닫기</span></a>
			</div>

		</div>
		
		
		<!-- //popup : 개인정보 입력 -->
		<!------------------------ //배송관련 레이어팝업 / 전 페이지 공통 ------------------------>
		
		<!-- 배송 지역 찾기 -->		
		<div id="findDeliveryPop" class="oasisLayerPop" style="height:441px">
		    <div class="oasisLayerPop_in">
		         <div class="oasisLPtit" style="position:relatvive">
		            <strong class="comLayerTit">오아시스 배송지역 찾기</strong>
		            <div style="position:absolute; width: 27px;height: 27px;top: 27px;right: 26px;">
                        <a href="#" onclick="closeQuestionDialog(); return false;" class="popOasisDeliveryClose"></a>
                    </div>
		           </div>
		
		        <div class="oasisLPconWrap" style="text-align:center">
		            <!-- 이 안에 팝업 내용 넣기 -->
		            <div class="comLayerCon">
		                <div style="margin:60px 0 30px">
		                   <span style="font-size:18px; color:#333333; font-weight:bold" id="oasisDeliveryCheckTxt">오아시스 24 배송 가능 지역 확인하세요</span>
		                </div>
		                
		                <div style="margin-bottom:30px">
		                  <a href="javascript:findPostCodeHeader()">
		                      <img src="/dailychan/resources/images/common/w_pop_searchbg.gif"/>
		                  </a>
		                </div>
		                
		                <div style="padding:20px">
			                <div class="popOasisDeliveryInfo">
			                    패밀리 멤버에게는 5시간 이내 우선적으로 신속히 배송해 드립니다.<br/>
			                    서울시 강남구, 송파구, 강동구, 광진구,<br/>
								성남시 분당구, 용인시 수지구, 위례 전 지역 입니다.<br/>
								주문량 폭주로 인해 배송이 지연되는 경우 양해 바랍니다.
			                </div>
		                </div>
		
		            </div>
		 
		            <!-- //이 안에 팝업 내용 넣기 -->
		        </div>
		    </div>
		</div>
		<!-- //배송 지역 찾기 -->
		
		<!------------------------ 장바구니 레이어 팝업 ------------------------>
          
        <div id="cartPop" class="oasisLayerPop" style="height:584px">
            <div class="oasisLayerPop_in">
                <div class="oasisLPtit" style="position:relatvive">
                    <strong class="comLayerTit">장바구니</strong>
                    <div style="position:absolute; width: 27px;height: 27px;top: 27px;right: 26px;">
                        <a href="#" onclick="closeQuestionDialog(); return false;" class="popOasisDeliveryClose"></a>
                    </div>
                </div>
        
                <div class="oasisLPconWrap" style="text-align:center">
                    <!-- 이 안에 팝업 내용 넣기 -->
                    <div class="comLayerCon">
                        <div class="popCartList">
                            <div class="popCartInfo">
	                            <span id="popCartCnt"></span>
	                            <span class="totalCartPrice">총 주문 금액 <font color="red" id="popCartPrice"></font> 원</span>
                            </div>
                            <div class="popProductList">
                                <ul class="popProdInfo">
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    <div class="popCartPageWrap">
                    </div>
                    
                    <div class="popCartBtnWrap oasisLPcon3">
                        <a href="/cart/list" style="height:48px; font-size:15px; margin-top:30px; line-height:48px;">장바구니로 이동</a>
                        <a href="#" onclick="closeQuestionDialog(); return false;" style="height:46px; font-size:15px; color:#6ca435; border:1px solid #6ca435; background:white; line-height:46px">쇼핑 계속하기</a>
                    </div>
         
                    <!-- //이 안에 팝업 내용 넣기 -->
                </div>
            </div>
        </div>
        <!------------------------ // 장바구니 레이어 팝업 ------------------------>
        
        <div class="popDim"></div>
		
	</div>
	<!-- // header -->
    <!-- // header -->

    
    















    
    <!-- 컨텐츠 -->
    <div class="contentsArea">
        <div class="contentsWrap">
            
            <!-- 메인 상단 슬라이드 영역 : 배내추가시 순번에따라 id='mainBanner00' 형태로 지정(구글태그매니저사용)-->
            <div id="mainTopSlide">
                <ul class="bxslider">
                    <li>
                        <a href="/eco/recoveryWrapper" id="mainBanner14">
                            <div style="background:url('/dailychan/resources/images/shopBanner/Web_main_banner_ecowrap_0418.png') no-repeat center top;">&nbsp;</div>
                        </a>
                    </li>
                    <li>
                        <a href="/event/openPromotion/1" id="mainBanner12">
                        <div style="background:url('/dailychan/resources/images/shopBanner/Web_main_banner_1119.jpg') no-repeat center top;">&nbsp;</div>
                        </a>
                    </li>
                        <li>
                        <a href="/event/reviewEvent" id="mainBanner04">
                        <div style="background:url('/dailychan/resources/images/shopBanner/Web_banner_snsreview_0111.jpg') no-repeat center top;">&nbsp;</div>
                        </a>
                    </li>
                    <li>
                        <a href="/company/serviceRefund" id="mainBanner15">
                        <div style="background:url('/dailychan/resources/images/shopBanner/Web_main_banner_1015.jpg') no-repeat center top;">&nbsp;</div>
                        </a>
                    </li>                   
                    <li>
                        <a href="/event/openPromotion/2" id="mainBanner03">
                        <div style="background:url('/dailychan/resources/images/shopBanner/Web_main_banner_0722_2.jpg') no-repeat center top;">&nbsp;</div>
                        </a>
                    </li>
                    <li>
                        <a href="/myPage/invite" id="mainBanner05">
                        <div style="background:url('/dailychan/resources/images/shopBanner/Web_main_banner_0615_1.jpg') no-repeat center top;">&nbsp;</div>
                        </a>
                    </li>
                    <li>
                        <a href="/event/openPromotion/3" id="mainBanner07">
                        <div style="background:url('/dailychan/resources/images/shopBanner/Web_main_banner_0614_2.jpg') no-repeat center top;">&nbsp;</div>
                        </a>
                    </li>

                </ul>
            </div>
            <script type="text/javascript">
                $(document).ready(function(){
                    // 메인 상단 슬라이드
                    $('#mainTopSlide .bxslider').bxSlider({
                        auto: true,
                        speed: 500,
                        pause: 5000,
                        moveSlides:1,
                        pager:true,
                        controls:true,
                        touchEnabled: false
                    });
                });
                
                $("#mainTopSlide").hover( function () { 
                    $('#mainTopSlide .bx-controls-direction').show();
                }, function () { 
                    $('#mainTopSlide .bx-controls-direction').hide();
                } );
            </script>
            <!-- //메인 상단 슬라이드 영역 -->

            <!-- 오!감동 특가 영역 -->
            








			<div class="deal_area oh_hot_deal_area">
				<dl>
					<!-- 상단 텍스트 -->
					<dt>
						<!-- title -->
						<span class="tit_area_main"style="padding-top:20px;">
							<img src="/dailychan/resources/images/main/h3_oh_hot_deal_new.png" alt="오! 감동 특가" />
						</span>
						<!-- sub title -->
						<div class="txt_area_main">
							<!-- txt : 가운데 텍스트 -->
							<p class="txt_sub_main">
								<span>품목당 2개씩 구매 하실 수 있는 오아시스 감동특가</span>
							</p>
						</div>
					</dt>
					<!-- //상단 텍스트 -->

					<!-- 하단 리스트 -->
					<dd>
						<ul>
							
                    			
                    			
                    			
                    			
                    			
                    			
                    			
                    			
								
									
										
										
                    					
									
									
								
                    			<!-- 상품 1set -->
                    			
									
									
									
									
									
								
								<li class="saleSellTxt">
									<a href="/product/detail/2646-4545">
										<!-- 상품리스트 / off -->
										<div class="product_off">
											<!-- img : 243 * 243 -->
											<div class="thumnail_area">
												
													
													
														<img src="http://www.oasis.co.kr:8580/product/2646/thumb/thumb_2646d79c1e73-5983-4d66-98a2-6ff8a0b32f15.jpg" alt="상품이미지">
													
												
												<span>&nbsp;</span>
											</div>
											<!-- txt : 상품명 -->
											<strong><4월 정기Sale특가>제주청정우유 900ml</strong>
											<!-- txt : 할인가 -->
											<div class="txt_discount_won">
												<span class="price_before">
													<del>4,500원</del>
												</span>
													&nbsp;&nbsp;
												<span class="price_after">
													<strong>1,500원</strong>
												</span>
											</div>
										</div>
										<!-- //상품리스트 / off -->
	
										<!-- 상품리스트 / on -->
										<div class="product_on" style="display:none;">
											<!-- txt : 상품명 -->
											<div class="tit_product_name">
												<div><4월 정기Sale특가>제주청정우유 900ml</div>
											</div>
											<!-- txt : 할인률 -->
											<div class="txt_discount_per">
												66%
											</div>
											<!-- txt : 할인가 -->
											<div class="txt_discount_won">
												<span class="price_before"><del>4,500원</del></span>
													&nbsp;&nbsp;
												<span class="price_after"><strong>1,500원</strong></span>
											</div>
	
											<!-- btn : 장바구니로 -->
											<div class="btn_cart">
												<a href="#" onclick="addCart(2646, 4545); return false;">
													<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
												</a>
												<a href="#" onclick="buyItNow(2646, 4545); return false;">
													<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
												</a>
											</div>
	
										</div>
										<!-- //상품리스트 / on -->
									</a>
								</li>
							
                    			
                    			
                    			
                    			
                    			
                    			
                    			
                    			
								
									
										
										
                    					
									
									
								
                    			<!-- 상품 1set -->
                    			
									
									
									
									
									
								
								<li class="saleSellTxt">
									<a href="/product/detail/3501-5454">
										<!-- 상품리스트 / off -->
										<div class="product_off">
											<!-- img : 243 * 243 -->
											<div class="thumnail_area">
												
													
													
														<img src="http://www.oasis.co.kr:8580/product/3501/thumb/thumb_3501a3a57e76-04f8-4168-a6c0-55b973075c6a.jpg" alt="상품이미지">
													
												
												<span>&nbsp;</span>
											</div>
											<!-- txt : 상품명 -->
											<strong><10개 1세트> 입점기획 튼튼두유(180ml*10)</strong>
											<!-- txt : 할인가 -->
											<div class="txt_discount_won">
												<span class="price_before">
													<del>19,000원</del>
												</span>
													&nbsp;&nbsp;
												<span class="price_after">
													<strong>13,300원</strong>
												</span>
											</div>
										</div>
										<!-- //상품리스트 / off -->
	
										<!-- 상품리스트 / on -->
										<div class="product_on" style="display:none;">
											<!-- txt : 상품명 -->
											<div class="tit_product_name">
												<div><10개 1세트> 입점기획 튼튼두유(180ml*10)</div>
											</div>
											<!-- txt : 할인률 -->
											<div class="txt_discount_per">
												30%
											</div>
											<!-- txt : 할인가 -->
											<div class="txt_discount_won">
												<span class="price_before"><del>19,000원</del></span>
													&nbsp;&nbsp;
												<span class="price_after"><strong>13,300원</strong></span>
											</div>
	
											<!-- btn : 장바구니로 -->
											<div class="btn_cart">
												<a href="#" onclick="addCart(3501, 5454); return false;">
													<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
												</a>
												<a href="#" onclick="buyItNow(3501, 5454); return false;">
													<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
												</a>
											</div>
	
										</div>
										<!-- //상품리스트 / on -->
									</a>
								</li>
							
                    			
                    			
                    			
                    			
                    			
                    			
                    			
                    			
								
									
										
										
                    					
									
									
								
                    			<!-- 상품 1set -->
                    			
									
									
									
									
									
								
								<li class="saleSellTxt">
									<a href="/product/detail/2849-4539">
										<!-- 상품리스트 / off -->
										<div class="product_off">
											<!-- img : 243 * 243 -->
											<div class="thumnail_area">
												
													
													
														<img src="http://www.oasis.co.kr:8580/product/2849/thumb/thumb_28491f31333d-346f-466d-9487-e56c7a7b5d48.jpg" alt="상품이미지">
													
												
												<span>&nbsp;</span>
											</div>
											<!-- txt : 상품명 -->
											<strong><4월 정기Sale특가> 자연이란 동물복지유정란 10구입</strong>
											<!-- txt : 할인가 -->
											<div class="txt_discount_won">
												<span class="price_before">
													<del>4,500원</del>
												</span>
													&nbsp;&nbsp;
												<span class="price_after">
													<strong>2,000원</strong>
												</span>
											</div>
										</div>
										<!-- //상품리스트 / off -->
	
										<!-- 상품리스트 / on -->
										<div class="product_on" style="display:none;">
											<!-- txt : 상품명 -->
											<div class="tit_product_name">
												<div><4월 정기Sale특가> 자연이란 동물복지유정란 10구입</div>
											</div>
											<!-- txt : 할인률 -->
											<div class="txt_discount_per">
												55%
											</div>
											<!-- txt : 할인가 -->
											<div class="txt_discount_won">
												<span class="price_before"><del>4,500원</del></span>
													&nbsp;&nbsp;
												<span class="price_after"><strong>2,000원</strong></span>
											</div>
	
											<!-- btn : 장바구니로 -->
											<div class="btn_cart">
												<a href="#" onclick="addCart(2849, 4539); return false;">
													<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
												</a>
												<a href="#" onclick="buyItNow(2849, 4539); return false;">
													<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
												</a>
											</div>
	
										</div>
										<!-- //상품리스트 / on -->
									</a>
								</li>
							
                    			
                    			
                    			
                    			
                    			
                    			
                    			
                    			
								
									
										
										
                    					
									
									
								
                    			<!-- 상품 1set -->
                    			
									
									
									
									
									
								
								<li class="saleSellTxt">
									<a href="/product/detail/3520-5542">
										<!-- 상품리스트 / off -->
										<div class="product_off">
											<!-- img : 243 * 243 -->
											<div class="thumnail_area">
												
													
													
														<img src="http://www.oasis.co.kr:8580/product/3520/thumb/thumb_35207c09e60b-fd7a-47c4-aee4-12b9f1d7f1cc.jpg" alt="상품이미지">
													
												
												<span>&nbsp;</span>
											</div>
											<!-- txt : 상품명 -->
											<strong><5개 1세트> 입점기획. 리얼 미니 군고구마(150g*5개)</strong>
											<!-- txt : 할인가 -->
											<div class="txt_discount_won">
												<span class="price_before">
													<del>15,000원</del>
												</span>
													&nbsp;&nbsp;
												<span class="price_after">
													<strong>9,900원</strong>
												</span>
											</div>
										</div>
										<!-- //상품리스트 / off -->
	
										<!-- 상품리스트 / on -->
										<div class="product_on" style="display:none;">
											<!-- txt : 상품명 -->
											<div class="tit_product_name">
												<div><5개 1세트> 입점기획. 리얼 미니 군고구마(150g*5개)</div>
											</div>
											<!-- txt : 할인률 -->
											<div class="txt_discount_per">
												34%
											</div>
											<!-- txt : 할인가 -->
											<div class="txt_discount_won">
												<span class="price_before"><del>15,000원</del></span>
													&nbsp;&nbsp;
												<span class="price_after"><strong>9,900원</strong></span>
											</div>
	
											<!-- btn : 장바구니로 -->
											<div class="btn_cart">
												<a href="#" onclick="addCart(3520, 5542); return false;">
													<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
												</a>
												<a href="#" onclick="buyItNow(3520, 5542); return false;">
													<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
												</a>
											</div>
	
										</div>
										<!-- //상품리스트 / on -->
									</a>
								</li>
							
						</ul>
					</dd>
					<!-- //하단 리스트 -->
				</dl>
				<span class="btn_view_main2 mgT30">
					
					
                    
                    
					<div class="hashtag">
						
						<div>
							<a href="/product/detail/2685-3128">
							#바다의선물
							</a>
						</div>
						
						<div>
							<a href="/product/detail/2646-4545">
							#제주의청정함
							</a>
						</div>
						
						<div>
							<a href="/product/detail/3078-4542">
							#땅의황제
							</a>
						</div>
						
					</div>
					<a class="only_top_border" href="/product/oh">
						<span>오! 감동 특가 전체보기</span>
					</a>
				</span>
			</div>
            <!-- //오!감동 특가 영역 -->
            
            <div class="banner_m_area main_banner_m_area">
                <ul>
                    <li>
                        <div class="banner_new_area" id="banner_new_area">
                            <ul class="bxslider">
                             <li>
                                  <a href="/product/detail/3185-4591">
                                      <div style="background:url('/dailychan/resources/images/main/new_banner_1220_1.jpg') no-repeat center top;">&nbsp;</div>
                                  </a>
                              </li>
                                 <li>
                                  <a href="/product/detail/2695-4430?categoryId=14">
                                      <div style="background:url('/dailychan/resources/images/main/new_banner_1220_2.jpg') no-repeat center top;">&nbsp;</div>
                                  </a>
                              </li>          
                              <li>
                                  <a href="/product/detail/2415-2488">
                                      <div style="background:url('/dailychan/resources/images/main/new_banner_1220_3.jpg') no-repeat center top;">&nbsp;</div>
                                  </a>
                              </li>
                              <li>
                                  <a href="/product/detail/2965-3844">
                                      <div style="background:url('/dailychan/resources/images/main/new_banner_1220_4.jpg') no-repeat center top;">&nbsp;</div>
                                  </a>
                              </li>
                              <!-- <li>
                                  <a href="/product/detail/2878-3584">
                                      <div style="background:url('/dailychan/resources/images/main/new_banner_0706_2.jpg') no-repeat center top;">&nbsp;</div>
                                  </a>
                              </li> -->
                            </ul>
                        </div>
                        <!--  <a href="/product/detail/2788-3346">
                          <img src="/images/main/new_banner_0529_1.jpg" width="506" height="210" alt="신상품" />
                        </a> -->
                        <span class="banner_view btn_view_main2">
                            
                            
                            
                            <div class="hashtag">
                                
                                <div>
                                    <a href="/product/detail/2868-3562">
                                    #든든한 한끼
                                    </a>
                                </div>
                                
                                <div>
                                    <a href="/product/detail/2418-2493">
                                    #콜라겐 듬뿍
                                    </a>
                                </div>
                                
                            </div>
                            <a href="/product/list?categoryId=53&page=1&sort=priority&direction=desc&rows=60">
                                <span>외식같은 집밥 전체보기</span>
                            </a>
                        </span>
                    </li>
                    <li>
                        <div class="banner_plan_area" id="banner_plan_area">
                            <ul class="bxslider">
                             <li>
                                  <a href="/product/list?categoryId=80&page=1&sort=priority&direction=desc&rows=60">
                                      <div style="background:url('/dailychan/resources/images/main/plan_banner_1220_1.jpg') no-repeat center top;">&nbsp;</div>
                                  </a>
                              </li>
                              <li>
                                  <a href="/product/list?categoryId=59&page=1&sort=priority&direction=desc&rows=60">
                                      <div style="background:url('/dailychan/resources/images/main/plan_banner_0719_1.jpg') no-repeat center top;">&nbsp;</div>
                                  </a>
                              </li>
                              <li>
                                  <a href="/product/list?categoryId=58&page=1">
                                      <div style="background:url('/dailychan/resources/images/main/plan_banner_0824_1.jpg?dummy=0.01') no-repeat center top;">&nbsp;</div>
                                  </a>
                              </li>
                              <li>
                                  <a href="/product/list?categoryId=60&page=1">
                                      <div style="background:url('/dailychan/resources/images/main/plan_banner_0824_2.jpg') no-repeat center top;">&nbsp;</div>
                                  </a>
                              </li>
                            </ul>
                        </div>
                        <span class="banner_view btn_view_main2">
                            
                            
                            
                            <div class="hashtag">
                                
                                <div>
                                    <a href="/product/detail/2947-4667">
                                    #간단한 아침
                                    </a>
                                </div>
                                
                                <div>
                                    <a href="/product/detail/2894-3802">
                                    #정성가득
                                    </a>
                                </div>
                                
                            </div>
                            <a href="/product/list?categoryId=60&page=1">
                                <span>기획전 전체보기</span>
                            </a>
                        </span>
                    </li>
                </ul>
            </div>
            <script type="text/javascript">
                $(document).ready(function(){
                    // 메인 상단 슬라이드
                    $('#banner_new_area .bxslider').bxSlider({
                        auto: true,
                        speed: 500,
                        pause: 5000,
                        moveSlides:1,
                        pager:true,
                        controls:true
                    });
                    
                    $('#banner_plan_area .bxslider').bxSlider({
                        auto: true,
                        speed: 500,
                        pause: 5000,
                        moveSlides:1,
                        pager:true,
                        controls:true
                    });
                });
                
                $("#banner_new_area").hover( function () { 
                    $('#banner_new_area .bx-controls-direction').show();
                }, function () { 
                    $('#banner_new_area .bx-controls-direction').hide();
                } );
                
                $("#banner_plan_area").hover( function () { 
                    $('#banner_plan_area .bx-controls-direction').show();
                }, function () { 
                    $('#banner_plan_area .bx-controls-direction').hide();
                } );
            </script>
            <!-- 내가 제일 잘나가! 영역 -->
            








<script type="text/javascript">
var currentTabIdx = 1;
var maxTabIdx = 10;
function goCategoryBestTab(tabIdx) {
	currentTabIdx = tabIdx;
	
	$("#bestTotalSlideList > div").hide();
	$(".bestTabCon" + tabIdx).show();
	$(".bestCategoryTab li").removeClass("on");
	$(".bestTab" + tabIdx).addClass("on");
}
</script>
			<div class="bg_gray">
				<div class="deal_area oh_hot_deal_area">
					<dl>
						<!-- 상단 텍스트 -->
						<dt>
							<span class="tit_area_main" style="padding-top:40px;">
								<img src="/dailychan/resources/images/main/h3_best_deal.png" alt="내가 제일 잘나가!" />
							</span>
							<div class="txt_area_main">
								<p class="txt_sub_main">
									<span style="background: #f7f7f7">오아시스에서 가장 많이 팔린 인기상품을 지금 만나보세요</span>
								</p>
							</div>
						</dt>
						<!-- //상단 텍스트 -->
						
						<!-- 카테고리 탭  -->
						<div class="bestCategoryTab">
	                    	<ul>
	                    		
	                        		<li class="bestTab1 on">
	                        			<a href="#" onclick="javascript:goCategoryBestTab(1);return false;">농산물</a>
	                        		</li>
	                        	
	                        		<li class="bestTab2 ">
	                        			<a href="#" onclick="javascript:goCategoryBestTab(2);return false;">축산물</a>
	                        		</li>
	                        	
	                        		<li class="bestTab3 ">
	                        			<a href="#" onclick="javascript:goCategoryBestTab(3);return false;">수산물</a>
	                        		</li>
	                        	
	                        		<li class="bestTab4 ">
	                        			<a href="#" onclick="javascript:goCategoryBestTab(4);return false;">건강/음료류</a>
	                        		</li>
	                        	
	                        		<li class="bestTab5 ">
	                        			<a href="#" onclick="javascript:goCategoryBestTab(5);return false;">양념류</a>
	                        		</li>
	                        	
	                        		<li class="bestTab6 ">
	                        			<a href="#" onclick="javascript:goCategoryBestTab(6);return false;">일반식품</a>
	                        		</li>
	                        	
	                        		<li class="bestTab7 ">
	                        			<a href="#" onclick="javascript:goCategoryBestTab(7);return false;">생활용품</a>
	                        		</li>
	                        	
	                        </ul>
	                        <div class="clear"></div>
	                    </div>
						<!--// 카테고리 탭  -->
	
						<!-- 하단 리스트 -->
						<dd id="bestTotalSlideList">
							
								
								<div class="bestTabCon1" >
									<ul>
										
										
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/64-8">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/64/thumb/thumb_6424986511-1be7-422b-8d65-fd5c055c4f12.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>고당도 사과 (1.3kg)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>12,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>7,900원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>고당도 사과 (1.3kg)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																34%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>12,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>7,900원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(64, 8); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(64, 8); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/1663-5211">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/1663/thumb/thumb_1663b2d53ccd-1403-47e7-8ee1-f9f593b5bb4e.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>아삭 빨강 대추방울토마토(750g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>6,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>4,800원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>아삭 빨강 대추방울토마토(750g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																20%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>6,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>4,800원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(1663, 5211); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(1663, 5211); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/1264-5304">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/1264/thumb/thumb_1264d41019da-ae7d-435e-bec0-6a33dad0f9a6.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>무농약 시금치 (200g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>1,700원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>1,530원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>무농약 시금치 (200g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																10%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>1,700원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>1,530원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(1264, 5304); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(1264, 5304); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/1266-5190">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/1266/thumb/thumb_1266cc5dc690-52d2-428f-9e4d-515c559aa283.png" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>무농약 브로컬리 (1통)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>2,900원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>2,610원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>무농약 브로컬리 (1통)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																10%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>2,900원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>2,610원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(1266, 5190); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(1266, 5190); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
									</ul>
								</div>
							
								
								<div class="bestTabCon2" style="display:none;">
									<ul>
										
										
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2849-4969">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2849/thumb/thumb_28491f31333d-346f-466d-9487-e56c7a7b5d48.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong><4월 정기Sale특가> 자연이란 동물복지유정란 10구입</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>4,500원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>3,000원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div><4월 정기Sale특가> 자연이란 동물복지유정란 10구입</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																33%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>4,500원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>3,000원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2849, 4969); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2849, 4969); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2696-5650">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2696/thumb/thumb_2696a31dd8fb-c4fc-45ca-b2a4-4b63eb3edbcd.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>무항생제 한돈 삼겹살 구이용(500g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>18,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>18,000원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>무항생제 한돈 삼겹살 구이용(500g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																0%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>18,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>18,000원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2696, 5650); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2696, 5650); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/3143-4483">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/3143/thumb/thumb_31431bfd1a24-b51d-4604-a42a-ab5cbb932e0b.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>무항생제 한우 부채살 (150g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>33,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>18,950원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>무항생제 한우 부채살 (150g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																42%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>33,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>18,950원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(3143, 4483); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(3143, 4483); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
														
														
													
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2696-5829">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2696/thumb/thumb_2696a31dd8fb-c4fc-45ca-b2a4-4b63eb3edbcd.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>무항생제 한돈 삼겹살 구이용(500g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>18,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>9,900원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>무항생제 한돈 삼겹살 구이용(500g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																45%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>18,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>9,900원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2696, 5829); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2696, 5829); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
									</ul>
								</div>
							
								
								<div class="bestTabCon3" style="display:none;">
									<ul>
										
										
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/214-147">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/214/thumb/thumb_214bb76feae-85b5-47e3-aec4-c9c0327c5dc2.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>순한 참진미 오징어 (100g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>12,400원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>8,900원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>순한 참진미 오징어 (100g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																28%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>12,400원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>8,900원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(214, 147); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(214, 147); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/1130-4664">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/1130/thumb/thumb_1130e8308a52-3521-4d91-b21f-80c8cf71cc2e.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>여수 새꼬막 (1kg)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>7,200원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>5,700원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>여수 새꼬막 (1kg)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																20%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>7,200원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>5,700원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(1130, 4664); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(1130, 4664); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
														
														
													
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2368-5020">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2368/thumb/thumb_2368906cbbb1-de83-4608-81cd-8bd3488df57b.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>국산 자반고등어(특*2미)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>7,800원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>4,980원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>국산 자반고등어(특*2미)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																36%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>7,800원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>4,980원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2368, 5020); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2368, 5020); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2367-2282">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																		<img src="/dailychan/resources/images/main/thumb/best_seafood_0416_4.jpg" alt="상품명이미지" />
																	
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>훈제연어슬라이스(140g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>9,600원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>5,200원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>훈제연어슬라이스(140g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																45%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>9,600원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>5,200원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2367, 2282); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2367, 2282); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
									</ul>
								</div>
							
								
								<div class="bestTabCon4" style="display:none;">
									<ul>
										
										
										
											
											
												
												
												
			                    				
												
												
												
													
														
														
													
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/3501-5454">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/3501/thumb/thumb_3501a3a57e76-04f8-4168-a6c0-55b973075c6a.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong><10개 1세트> 입점기획 튼튼두유(180ml*10)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>19,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>13,300원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div><10개 1세트> 입점기획 튼튼두유(180ml*10)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																30%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>19,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>13,300원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(3501, 5454); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(3501, 5454); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/3161-5483">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/3161/thumb/thumb_3161d579f07c-a7bc-4fba-b277-976cc94ac206.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>정직한 유기농 브로콜리양배추즙</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>26,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>20,000원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>정직한 유기농 브로콜리양배추즙</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																23%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>26,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>20,000원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(3161, 5483); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(3161, 5483); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/696-5831">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																		<img src="/dailychan/resources/images/main/thumb/best_tea_0416_4.jpg" alt="상품명이미지" />
																	
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>정직한 사과즙 (120mlx30)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>32,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>25,600원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>정직한 사과즙 (120mlx30)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																20%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>32,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>25,600원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(696, 5831); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(696, 5831); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2865-3868">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2865/thumb/thumb_286596fbe71a-bc91-4441-8993-16e48b313379.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>국산 검은콩 영양 두유 (180ml×20)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>22,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>13,000원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>국산 검은콩 영양 두유 (180ml×20)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																40%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>22,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>13,000원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2865, 3868); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2865, 3868); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
									</ul>
								</div>
							
								
								<div class="bestTabCon5" style="display:none;">
									<ul>
										
										
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/1605-5832">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/1605/thumb/thumb_1605f1314e23-e93e-41ed-8f61-75bbccb81994.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>발아영양 참기름 (320ml)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>36,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>21,600원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>발아영양 참기름 (320ml)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																40%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>36,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>21,600원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(1605, 5832); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(1605, 5832); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/1951-1755">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/1951/thumb/thumb_1951f3dc1729-c12d-4e42-bc5d-33943ba77a4d.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>백색 김밥 단무지(310g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>3,100원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>2,480원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>백색 김밥 단무지(310g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																20%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>3,100원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>2,480원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(1951, 1755); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(1951, 1755); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/1932-1738">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/1932/thumb/thumb_19323bbb96cd-7dca-40bc-8cac-e266c45ae44d.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>토리 옥수수병조림 (310g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>5,100원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>4,080원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>토리 옥수수병조림 (310g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																20%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>5,100원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>4,080원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(1932, 1738); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(1932, 1738); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
														
														
													
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/994-880">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/994/thumb/thumb_99434aaa7ed-6f07-42b8-bd79-fc186d888c4e.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>들깨가루 (200g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>7,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>4,900원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>들깨가루 (200g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																30%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>7,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>4,900원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(994, 880); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(994, 880); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
									</ul>
								</div>
							
								
								<div class="bestTabCon6" style="display:none;">
									<ul>
										
										
										
											
											
												
												
												
			                    				
												
												
												
													
														
														
													
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2675-5625">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2675/thumb/thumb_267571154e10-61bf-4d3a-b732-344462b5336c.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>시골두부 2개(부침+찌개)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>4,800원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>1,500원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>시골두부 2개(부침+찌개)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																68%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>4,800원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>1,500원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2675, 5625); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2675, 5625); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2894-4995">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2894/thumb/thumb_2894c935f696-6fde-4e4e-80dd-37e37a7222e9.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>정성가득 호박죽 (450g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>4,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>3,000원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>정성가득 호박죽 (450g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																25%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>4,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>3,000원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2894, 4995); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2894, 4995); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2871-3571">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2871/thumb/thumb_28714b58d209-8438-46d6-b387-26497174a5fe.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>유기농 한우 진한고기곰탕 (500g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>9,800원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>6,500원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>유기농 한우 진한고기곰탕 (500g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																33%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>9,800원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>6,500원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2871, 3571); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2871, 3571); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
														
														
													
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/3408-5091">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/3408/thumb/thumb_340822a68122-8da7-4a06-84a0-a75ffe07fe16.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>프레지덩 무염버터 200g(10g*20개)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>9,400원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>5,900원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>프레지덩 무염버터 200g(10g*20개)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																37%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>9,400원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>5,900원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(3408, 5091); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(3408, 5091); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
									</ul>
								</div>
							
								
								<div class="bestTabCon7" style="display:none;">
									<ul>
										
										
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2099-2826">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2099/thumb/thumb_20998c57b21c-6825-41b8-bde7-b84f044f42b0.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>은숯칫솔 성인용 (4개)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>9,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>5,800원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>은숯칫솔 성인용 (4개)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																35%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>9,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>5,800원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2099, 2826); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2099, 2826); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/1192-4086">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/1192/thumb/thumb_1192.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>나무향기 모이스처 썬크림</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>24,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>10,000원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>나무향기 모이스처 썬크림</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																58%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>24,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>10,000원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(1192, 4086); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(1192, 4086); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/3381-4989">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/3381/thumb/thumb_33817f97baa9-312c-4ee9-b146-64e3cb4d7ce9.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>자연이지 키친타올(6롤, 150매)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>7,800원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>6,240원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>자연이지 키친타올(6롤, 150매)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																20%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>7,800원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>6,240원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(3381, 4989); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(3381, 4989); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2384-2339">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2384/thumb/thumb_2384d570ad4f-1a55-40c4-92e5-c000682d8b73.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>목초액 맑은세탁세제 (드럼용/2.4L)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>12,200원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>6,100원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>목초액 맑은세탁세제 (드럼용/2.4L)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																50%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>12,200원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>6,100원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2384, 2339); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2384, 2339); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
									</ul>
								</div>
							
								
								<div class="bestTabCon8" style="display:none;">
									<ul>
										
										
										
									</ul>
								</div>
							
								
								<div class="bestTabCon9" style="display:none;">
									<ul>
										
										
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/3079-5718">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/3079/thumb/thumb_3079e079203c-881a-4758-bf8f-acc94a366b29.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>산지직송 친환경 여수돌산갓김치 (1kg)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>12,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>8,400원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>산지직송 친환경 여수돌산갓김치 (1kg)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																30%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>12,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>8,400원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(3079, 5718); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(3079, 5718); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2894-4995">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2894/thumb/thumb_2894c935f696-6fde-4e4e-80dd-37e37a7222e9.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>정성가득 호박죽 (450g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>4,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>3,000원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>정성가득 호박죽 (450g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																25%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>4,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>3,000원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2894, 4995); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2894, 4995); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/3534-5672">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/3534/thumb/thumb_3534f09cc6d5-d385-4c83-84da-de54ffba1071.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>우리한우도가니곰국 (1kg)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>13,000원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>8,400원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>우리한우도가니곰국 (1kg)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																35%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>13,000원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>8,400원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(3534, 5672); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(3534, 5672); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2891-3602">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2891/thumb/thumb_2891371f5779-63a6-42e8-9aa9-cd03c25daca6.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>순살찜닭 (400g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>8,100원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>4,900원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>순살찜닭 (400g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																39%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>8,100원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>4,900원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2891, 3602); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2891, 3602); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
									</ul>
								</div>
							
								
								<div class="bestTabCon10" style="display:none;">
									<ul>
										
										
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2771-5172">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2771/thumb/thumb_2771e11b570d-d1ee-4064-bd19-15835c3adcb6.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>망고(특) 2입 </strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>8,800원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>6,400원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>망고(특) 2입 </div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																27%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>8,800원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>6,400원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2771, 5172); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2771, 5172); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2754-4347">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2754/thumb/thumb_2754b153b623-87da-4e5d-8cab-86b6dfd5d1b2.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>아보카도(특 2입)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>6,400원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>4,800원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>아보카도(특 2입)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																25%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>6,400원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>4,800원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2754, 4347); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2754, 4347); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/1914-3853">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/1914/thumb/thumb_19148afebcec-4d4a-4247-9eb4-f5f33d952ab5.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>상하목장 유기농우유 (200ml×6)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>7,200원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>5,200원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>상하목장 유기농우유 (200ml×6)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																27%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>7,200원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>5,200원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(1914, 3853); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(1914, 3853); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
												
												
												
			                    				
												
												
												
													
													
														
															
															
														
													
												
												
													
													
													
												
												<li class="saleSellTxt">
													<a href="/product/detail/2833-3412">
														<!-- 상품리스트 / off -->
														<div class="product_off gray_border">
															<!-- img : 243 * 243 -->
															<div class="thumnail_area">
																
																	
																	
																		<img src="http://www.oasis.co.kr:8580/product/2833/thumb/thumb_28339168dc14-1503-4acc-ae59-ad57e7fcb121.jpg" alt="상품이미지">
																	
																
															</div>
															<!-- txt : 상품명 -->
															<strong>우리밀 한입약과 (120g)</strong>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won" style="background-colr:#ffffff">
																<span class="price_before">
																	<del>2,500원</del>
																</span>
																	&nbsp;&nbsp;
																<span class="price_after">
																	<strong>2,000원</strong>
																</span>
															</div>
														</div>
														<!-- //상품리스트 / off -->
					
														<!-- 상품리스트 / on -->
														<div class="product_on" style="display:none;">
															<!-- txt : 상품명 -->
															<div class="tit_product_name">
																<div>우리밀 한입약과 (120g)</div>
															</div>
															<!-- txt : 할인률 -->
															<div class="txt_discount_per">
																20%
															</div>
															<!-- txt : 할인가 -->
															<div class="txt_discount_won">
																<span class="price_before"><del>2,500원</del></span>
																	&nbsp;&nbsp;
																<span class="price_after"><strong>2,000원</strong></span>
															</div>
					
															<!-- btn : 장바구니로 -->
															<div class="btn_cart">
																<a href="#" onclick="addCart(2833, 3412); return false;">
																	<img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
																</a>
																<a href="#" onclick="buyItNow(2833, 3412); return false;">
																	<img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
																</a>
															</div>
					
														</div>
														<!-- //상품리스트 / on -->
													</a>
												</li>
												
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
											
											
											
										
									</ul>
								</div>
							
						</dd>
						<!-- //하단 리스트 -->
					</dl>
					
					<span class="btn_view_main2 mgT30">
						
						
                        
                        
						<div class="hashtag">
							
							<div>
								<a href="/product/detail/2367-2282">
								#건강한 먹거리
								</a>
							</div>
							
							<div>
								<a href="/product/detail/689-3456">
								#행복한닭의알
								</a>
							</div>
							
							<div>
								<a href="/product/detail/1106-985">
								#제주푸른초원
								</a>
							</div>
							
						</div>
						<a class="only_top_border" href="/product/best">
							<span>베스트 상품 전체보기</span>
						</a>
	                </span>
				</div>
			</div>
			<!-- //내가 제일 잘나가! 영역 -->

            <!-- //내가 제일 잘나가! 영역 -->
            
            
            <div class="custRecommend_area">
                <div style="border:solid 1px #ddd">
                <dd> 
                    <div class="custRecommend_2">
                        
                        
                        <a href="#;" onclick="javascript:openCustRecommendDialog();return false;">      
                        
                            <img src="/dailychan/resources/images/main/main_recommend_img.jpg?dummy=0.01" alt="고객상품추천">
                        </a>
                    </div>
                  <div class="custRecommend_1" id="custRecommendSlide" ><!여기가 시작-->
                            <!-- 테마쇼핑 영역 -->
            <div class="custdeal_area">
                <dl>
                    <!-- 상단 텍스트 -->
                    
                    <!-- //상단 텍스트 -->

                    <!-- 하단 리스트 -->
                    <dd>
                        <ul>
                            
                                
                                
                                
                                
                                
                                    
                                    
                                        
                                            
                                            
                                        
                                    
                                
                                
                                    
                                    
                                    
                                
                                <!-- 상품 1set -->
                                <li class="stopSell">
                                    <a href="/product/detail/2822-3397">
                                        <!-- 상품리스트 / off -->
                                        <div class="product_off">
                                            <!-- img : 243 * 243 -->
                                            <div class="thumnail_area">
                                                <img src="http://www.oasis.co.kr:8580/product/2822/thumb/thumb_282270cc0687-86df-4e7f-bc5c-620d4ae8b81a.jpg" alt="상품이미지">
                                                <span class="bg_light_gray">&nbsp;</span>
                                            </div>
                                            <!-- txt : 상품명 -->
                                            <strong>
                                                
                                                    
                                                    설성목장 한우 육개장 (500g)
                                                
                                            </strong>
                                            
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before">
                                                    <del>12,000원</del>
                                                </span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after">
                                                    <strong>9,600원</strong>
                                                </span>
                                            </div>
                                        </div>
                                        <!-- //상품리스트 / off -->
    
                                        <!-- 상품리스트 / on -->
                                        <div class="product_on" style="display:none;">
                                            <!-- txt : 상품명 -->
                                            <div class="tit_product_name">
                                                <div>설성목장 한우 육개장 (500g)</div>
                                            </div>
                                            <!-- txt : 할인률 -->
                                            <div class="txt_discount_per">
                                                20%
                                            </div>
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before"><del>12,000원</del></span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after"><strong>9,600원</strong></span>
                                            </div>
    
                                            <!-- btn : 장바구니로 -->
                                            <div class="btn_cart">
                                                <a href="#" onclick="addCart(2822, 3397); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
                                                </a>
                                                <a href="#" onclick="buyItNow(2822, 3397); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
                                                </a>
                                            </div>
    
                                        </div>
                                        <!-- //상품리스트 / on -->
                                    </a>
                                </li>
                            
                                
                                
                                
                                
                                
                                    
                                    
                                        
                                            
                                            
                                        
                                    
                                
                                
                                    
                                    
                                    
                                
                                <!-- 상품 1set -->
                                <li class="stopSell">
                                    <a href="/product/detail/2818-3388">
                                        <!-- 상품리스트 / off -->
                                        <div class="product_off">
                                            <!-- img : 243 * 243 -->
                                            <div class="thumnail_area">
                                                <img src="http://www.oasis.co.kr:8580/product/2818/thumb/thumb_281804ec740f-e026-4081-b4d9-073cbe52027a.jpg" alt="상품이미지">
                                                <span class="bg_light_gray">&nbsp;</span>
                                            </div>
                                            <!-- txt : 상품명 -->
                                            <strong>
                                                
                                                    
                                                    자숙굴(230g)
                                                
                                            </strong>
                                            
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before">
                                                    <del>2,680원</del>
                                                </span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after">
                                                    <strong>1,900원</strong>
                                                </span>
                                            </div>
                                        </div>
                                        <!-- //상품리스트 / off -->
    
                                        <!-- 상품리스트 / on -->
                                        <div class="product_on" style="display:none;">
                                            <!-- txt : 상품명 -->
                                            <div class="tit_product_name">
                                                <div>자숙굴(230g)</div>
                                            </div>
                                            <!-- txt : 할인률 -->
                                            <div class="txt_discount_per">
                                                29%
                                            </div>
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before"><del>2,680원</del></span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after"><strong>1,900원</strong></span>
                                            </div>
    
                                            <!-- btn : 장바구니로 -->
                                            <div class="btn_cart">
                                                <a href="#" onclick="addCart(2818, 3388); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
                                                </a>
                                                <a href="#" onclick="buyItNow(2818, 3388); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
                                                </a>
                                            </div>
    
                                        </div>
                                        <!-- //상품리스트 / on -->
                                    </a>
                                </li>
                            
                                
                                
                                
                                
                                
                                    
                                    
                                        
                                            
                                            
                                        
                                    
                                
                                
                                    
                                    
                                    
                                
                                <!-- 상품 1set -->
                                <li class="stopSell">
                                    <a href="/product/detail/2615-3011">
                                        <!-- 상품리스트 / off -->
                                        <div class="product_off">
                                            <!-- img : 243 * 243 -->
                                            <div class="thumnail_area">
                                                <img src="http://www.oasis.co.kr:8580/product/2615/thumb/thumb_2615b09fa64a-2a14-4de0-b1eb-b7ce05515ea9.jpg" alt="상품이미지">
                                                <span class="bg_light_gray">&nbsp;</span>
                                            </div>
                                            <!-- txt : 상품명 -->
                                            <strong>
                                                
                                                    
                                                    단호박수프 160g
                                                
                                            </strong>
                                            
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before">
                                                    <del>3,200원</del>
                                                </span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after">
                                                    <strong>2,560원</strong>
                                                </span>
                                            </div>
                                        </div>
                                        <!-- //상품리스트 / off -->
    
                                        <!-- 상품리스트 / on -->
                                        <div class="product_on" style="display:none;">
                                            <!-- txt : 상품명 -->
                                            <div class="tit_product_name">
                                                <div>단호박수프 160g</div>
                                            </div>
                                            <!-- txt : 할인률 -->
                                            <div class="txt_discount_per">
                                                20%
                                            </div>
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before"><del>3,200원</del></span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after"><strong>2,560원</strong></span>
                                            </div>
    
                                            <!-- btn : 장바구니로 -->
                                            <div class="btn_cart">
                                                <a href="#" onclick="addCart(2615, 3011); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
                                                </a>
                                                <a href="#" onclick="buyItNow(2615, 3011); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
                                                </a>
                                            </div>
    
                                        </div>
                                        <!-- //상품리스트 / on -->
                                    </a>
                                </li>
                            
                        </ul>
                    </dd>
                    <!-- //하단 리스트 -->
                </dl>
            </div>
        
            <!-- //테마쇼핑 영역 -->
                    </div> <!-- 여기가 끝-->
                    <span class="btn_view_main2">
                            <div class="hashtag">
                            
                            <div>
                                <a href="/product/detail/2815-3382">
                                #세균걱정 NO!
                                </a>
                            </div>
                            
                            <div>
                                <a href="/product/detail/1419-1269">
                                #비타민 충전
                                </a>
                            </div>
                            
                            <div>
                                <a href="/product/detail/2822-3397">
                                #기운없을때 
                                </a>
                            </div>
                            
                        </div>
                        <a class="only_top_border" href="/product/list?categoryId=62&page=1">
                            <span>고객추천 상품 전체보기</span>
                        </a>
                    </span>
                </dd>
                </div>
            </div>
              <a href="/product/new">
            <div class="oasis_delivery_area" style="background:url('/dailychan/resources/images/main/img_banner_bottom_0320.jpg') no-repeat center top; background-color:#a0c7c6; margin-bottom:40px;">
                <div>
                    &nbsp;
                </div>
            </div>
            </a>

            <!-- 테마쇼핑 영역 -->
            <div class="deal_area oh_hot_deal_area">
                <dl>
                    <!-- 상단 텍스트 -->
                    <dt>
                        <!-- title -->
                        <span class="tit_area_main">
                            <!-- 환절기 <strong>감기 예방</strong> -->
                            <img src="/dailychan/resources/images/main/h3_theme_deal_0330.png" alt="테마 쇼핑">
                        </span>
                        <!-- sub title -->
                        <div class="txt_area_main">
                            <!-- txt : 가운데 텍스트 -->
                            <p class="txt_sub_main">
                                <span>깐깐한 오아시스 MD가 추천해 더 믿을 수 있는 식품</span>
                            </p>
                        </div>
                    </dt>
                    <!-- //상단 텍스트 -->

                    <!-- 하단 리스트 -->
                    <dd>
                        <ul>
                            
                                
                                
                                
                                
                                
                                    
                                    
                                        
                                            
                                            
                                        
                                    
                                
                                
                                    
                                    
                                    
                                
                                <!-- 상품 1set -->
                                <li class="stopSell">
                                    <a href="/product/detail/3363-4933">
                                        <!-- 상품리스트 / off -->
                                        <div class="product_off">
                                            <!-- img : 243 * 243 -->
                                            <div class="thumnail_area">
                                                 
                                                    
                                                    
                                                        <img src="http://www.oasis.co.kr:8580/product/3363/thumb/thumb_3363af74fa2d-25d7-435d-970e-b6b9b85f8962.jpg" alt="상품이미지">
                                                    
                                                
                                                <span class="bg_light_gray">&nbsp;</span>
                                            </div>
                                            <!-- txt : 상품명 -->
                                            <strong>
                                                
                                                    
                                                    홍삼정 진한스틱 (10ml x 30포)
                                                
                                            </strong>
                                            
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before">
                                                    <del>96,000원</del>
                                                </span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after">
                                                    <strong>52,800원</strong>
                                                </span>
                                            </div>
                                        </div>
                                        <!-- //상품리스트 / off -->
    
                                        <!-- 상품리스트 / on -->
                                        <div class="product_on" style="display:none;">
                                            <!-- txt : 상품명 -->
                                            <div class="tit_product_name">
                                                <div>홍삼정 진한스틱 (10ml x 30포)</div>
                                            </div>
                                            <!-- txt : 할인률 -->
                                            <div class="txt_discount_per">
                                                45%
                                            </div>
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before"><del>96,000원</del></span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after"><strong>52,800원</strong></span>
                                            </div>
    
                                            <!-- btn : 장바구니로 -->
                                            <div class="btn_cart">
                                                <a href="#" onclick="addCart(3363, 4933); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
                                                </a>
                                                <a href="#" onclick="buyItNow(3363, 4933); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
                                                </a>
                                            </div>
    
                                        </div>
                                        <!-- //상품리스트 / on -->
                                    </a>
                                </li>
                            
                                
                                
                                
                                
                                
                                    
                                    
                                        
                                            
                                            
                                        
                                    
                                
                                
                                    
                                    
                                    
                                
                                <!-- 상품 1set -->
                                <li class="stopSell">
                                    <a href="/product/detail/2774-3319">
                                        <!-- 상품리스트 / off -->
                                        <div class="product_off">
                                            <!-- img : 243 * 243 -->
                                            <div class="thumnail_area">
                                                 
                                                    
                                                    
                                                        <img src="http://www.oasis.co.kr:8580/product/2774/thumb/thumb_2774cc050238-b853-4371-82e6-864ef36884f6.jpg" alt="상품이미지">
                                                    
                                                
                                                <span class="bg_light_gray">&nbsp;</span>
                                            </div>
                                            <!-- txt : 상품명 -->
                                            <strong>
                                                
                                                    
                                                    정직한 3배 도라지배즙 (120ml×30)
                                                
                                            </strong>
                                            
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before">
                                                    <del>34,000원</del>
                                                </span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after">
                                                    <strong>27,200원</strong>
                                                </span>
                                            </div>
                                        </div>
                                        <!-- //상품리스트 / off -->
    
                                        <!-- 상품리스트 / on -->
                                        <div class="product_on" style="display:none;">
                                            <!-- txt : 상품명 -->
                                            <div class="tit_product_name">
                                                <div>정직한 3배 도라지배즙 (120ml×30)</div>
                                            </div>
                                            <!-- txt : 할인률 -->
                                            <div class="txt_discount_per">
                                                20%
                                            </div>
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before"><del>34,000원</del></span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after"><strong>27,200원</strong></span>
                                            </div>
    
                                            <!-- btn : 장바구니로 -->
                                            <div class="btn_cart">
                                                <a href="#" onclick="addCart(2774, 3319); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
                                                </a>
                                                <a href="#" onclick="buyItNow(2774, 3319); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
                                                </a>
                                            </div>
    
                                        </div>
                                        <!-- //상품리스트 / on -->
                                    </a>
                                </li>
                            
                                
                                
                                
                                
                                
                                    
                                    
                                        
                                            
                                            
                                        
                                    
                                
                                
                                    
                                    
                                    
                                
                                <!-- 상품 1set -->
                                <li class="stopSell">
                                    <a href="/product/detail/2727-4572">
                                        <!-- 상품리스트 / off -->
                                        <div class="product_off">
                                            <!-- img : 243 * 243 -->
                                            <div class="thumnail_area">
                                                 
                                                    
                                                    
                                                        <img src="http://www.oasis.co.kr:8580/product/2727/thumb/thumb_2727f6d489b0-94b2-43fe-802c-e13ba13755e0.jpg" alt="상품이미지">
                                                    
                                                
                                                <span class="bg_light_gray">&nbsp;</span>
                                            </div>
                                            <!-- txt : 상품명 -->
                                            <strong>
                                                
                                                    
                                                    진한홍삼 (80ml X 60포)
                                                
                                            </strong>
                                            
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before">
                                                    <del>200,000원</del>
                                                </span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after">
                                                    <strong>99,000원</strong>
                                                </span>
                                            </div>
                                        </div>
                                        <!-- //상품리스트 / off -->
    
                                        <!-- 상품리스트 / on -->
                                        <div class="product_on" style="display:none;">
                                            <!-- txt : 상품명 -->
                                            <div class="tit_product_name">
                                                <div>진한홍삼 (80ml X 60포)</div>
                                            </div>
                                            <!-- txt : 할인률 -->
                                            <div class="txt_discount_per">
                                                50%
                                            </div>
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before"><del>200,000원</del></span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after"><strong>99,000원</strong></span>
                                            </div>
    
                                            <!-- btn : 장바구니로 -->
                                            <div class="btn_cart">
                                                <a href="#" onclick="addCart(2727, 4572); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
                                                </a>
                                                <a href="#" onclick="buyItNow(2727, 4572); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
                                                </a>
                                            </div>
    
                                        </div>
                                        <!-- //상품리스트 / on -->
                                    </a>
                                </li>
                            
                                
                                
                                
                                
                                
                                    
                                        
                                        
                                    
                                    
                                
                                
                                    
                                    
                                    
                                
                                <!-- 상품 1set -->
                                <li class="stopSell">
                                    <a href="/product/detail/1966-1770">
                                        <!-- 상품리스트 / off -->
                                        <div class="product_off">
                                            <!-- img : 243 * 243 -->
                                            <div class="thumnail_area">
                                                 
                                                    
                                                    
                                                        <img src="http://www.oasis.co.kr:8580/product/1966/thumb/thumb_19664385e809-7565-4c2d-a650-82ffa7be5f94.jpg" alt="상품이미지">
                                                    
                                                
                                                <span class="bg_light_gray">&nbsp;</span>
                                            </div>
                                            <!-- txt : 상품명 -->
                                            <strong>
                                                
                                                    
                                                    유기농 양파진액 (100ml×30포)
                                                
                                            </strong>
                                            
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before">
                                                    <del>32,000원</del>
                                                </span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after">
                                                    <strong>22,000원</strong>
                                                </span>
                                            </div>
                                        </div>
                                        <!-- //상품리스트 / off -->
    
                                        <!-- 상품리스트 / on -->
                                        <div class="product_on" style="display:none;">
                                            <!-- txt : 상품명 -->
                                            <div class="tit_product_name">
                                                <div>유기농 양파진액 (100ml×30포)</div>
                                            </div>
                                            <!-- txt : 할인률 -->
                                            <div class="txt_discount_per">
                                                31%
                                            </div>
                                            <!-- txt : 할인가 -->
                                            <div class="txt_discount_won">
                                                <span class="price_before"><del>32,000원</del></span>
                                                    &nbsp;&nbsp;
                                                <span class="price_after"><strong>22,000원</strong></span>
                                            </div>
    
                                            <!-- btn : 장바구니로 -->
                                            <div class="btn_cart">
                                                <a href="#" onclick="addCart(1966, 1770); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_cart_add.png" alt="장바구니 담기" />
                                                </a>
                                                <a href="#" onclick="buyItNow(1966, 1770); return false;">
                                                    <img src="/dailychan/resources/images/main/btn_pay_now.png" alt="지금 결재하기" />
                                                </a>
                                            </div>
    
                                        </div>
                                        <!-- //상품리스트 / on -->
                                    </a>
                                </li>
                            
                        </ul>
                    </dd>
                    <!-- //하단 리스트 -->
                </dl>
            </div>
            <!-- //테마쇼핑 영역 -->
            
            <!-- //산지직송 슬라이드 영역 -->
            <div class="direct_area">
                <div class="contents">
                    <div id="coverflow">
                        <ul class="flip-items">
                            
                            
                                
                                
                                    
                                
                                <li>
                                    <a href="/product/detail/1130-4664">
                                        <img src="/dailychan/resources/images/main/img_cover_2_7.jpg">
                                    </a>
                                </li>
                            
                                
                                
                                <li>
                                    <a href="/product/detail/77-19">
                                        <img src="/dailychan/resources/images/main/img_cover0413_2_2.jpg">
                                    </a>
                                </li>
                            
                                
                                
                                <li>
                                    <a href="/product/detail/-">
                                        <img src="/dailychan/resources/images/main/img_cover_2_2.jpg">
                                    </a>
                                </li>
                            
                                
                                
                                <li>
                                    <a href="/product/detail/-">
                                        <img src="/dailychan/resources/images/main/img_cover_2_6.jpg">
                                    </a>
                                </li>
                            
                                
                                
                                <li>
                                    <a href="/product/detail/3079-4571">
                                        <img src="/dailychan/resources/images/main/img_cover_2_5.jpg">
                                    </a>
                                </li>
                            
                                
                                
                                <li>
                                    <a href="/product/detail/1173-2185">
                                        <img src="/dailychan/resources/images/main/img_cover_2_4.jpg">
                                    </a>
                                </li>
                            
                        </ul>
                    </div>
                    <!-- title -->
                    <span class="tit_area_direct">
                        <img src="/dailychan/resources/images/main/h3_direct_deal.png" alt="오아시스 산지직송" />
                    </span>
                    <span class="txt_area_direct" style="position:absolute; top:200px; left:0;">
                        <img src="/dailychan/resources/images/main/tit_cover_2_7.png" alt="" class="tit_img" />
                    </span>
                    <!-- btn : 이전 -->
                    <span class="btn_direct_prev">
                        <a href="#directPrev">
                            <img src="/dailychan/resources/images/main/btn_direct_del_prev.png"alt="이전" />
                        </a>
                    </span>
                    <!-- btn : 다음 -->
                    <span class="btn_direct_next">
                        <a href="#directNext">
                            <img src="/dailychan/resources/images/main/btn_direct_del_next.png"alt="다음" />
                        </a>
                    </span>
                </div>
                <script type="text/javascript">
                    var coverflow = $("#coverflow").flipster({
                        start: 0,
                        spacing: -0.93,
                        click: true,
                        buttonPrev :true ,
                        loop:true,
                        scrollwheel:false
                    });
                    
                    var directProductSize = 6;
                    var descImageArr = new Array();
                    
                    descImageArr[0] = '/dailychan/resources/images/main/tit_cover_2_7.png';
                    
                    descImageArr[1] = '/dailychan/resources/images/main/tit_cover0413_2_2.png';
                    
                    descImageArr[2] = '/dailychan/resources/images/main/tit_cover_0820_2.png';
                    
                    descImageArr[3] = '/dailychan/resources/images/main/tit_cover_0820_3.png';
                    
                    descImageArr[4] = '/dailychan/resources/images/main/tit_cover_0820_4.png';
                    
                    descImageArr[5] = '/dailychan/resources/images/main/tit_cover_2_4.png';
                    
                    $(document).ready(function(){
                        var current = $('#coverflow').find('li.flipster__item--current').index()+1;
                        $('.btn_direct_prev').on('click',function(){
                            coverflow.flipster('jump','prev');
                            current--;
                            if(current < 1) current = directProductSize;
                            $('.tit_img').attr('src', contextPath + descImageArr[current-1]);
                        });
                        $('.btn_direct_next').on('click',function(){
                            coverflow.flipster('jump','next');
                            current++;
                            if (current > directProductSize) current = 1;
                            $('.tit_img').attr('src', contextPath + descImageArr[current-1]);
                        });
                    });
                </script>
            </div>
            <!-- //산지직송 슬라이드 영역 -->
            <!-- 산지직송 더보기 추가 -->
            <div class="more_area">
                <div class="more_area2">
                <span class="btn_view_main2">
                    <div class="hashtag">
                            <div>
                                <a href="/product/detail/2691-3138">
                                #밥도둑
                                </a>
                            </div>
                            <div>
                                <a href="/product/detail/1629-1453">
                                #입맛없을때
                                </a>
                            </div>
                        </div>
                        <a class="only_top_border" href="/product/list?categoryId=1">
                            <span>산지직송 전체보기</span>
                        </a>
                  </span>
                  </div>
             </div>  
            <!-- //산지직송 더보기 추가 -->
          
               
            <!-- 간편식료품 영역 -->
            <div class="grocery_area">

                <dl>
                    <!-- 상단 텍스트 -->
                    <dt>
                        <!-- title -->
                        <span class="tit_area_main">
                            <img src="/dailychan/resources/images/main/h3_grocery_deal.png" alt="간편 식품관" />
                        </span>
                        <!-- sub title -->
                        <div class="txt_area_main">
                            <!-- txt : 가운데 텍스트 -->
                            <p class="txt_sub_main">
                                <span>바쁜아침 간편한 식사로 기운차게 시작하세요</span>
                            </p>
                        </div>
                    </dt>
                    <!-- //상단 텍스트 -->
                    <dd>
                        <!-- img : 왼쪽 -->
                        
                        
                        <div class="grocery_1">
                            <a href="/product/detail/3271-4752">
                                <p>
                                    <img src="/dailychan/resources/images/main/thumb/simple_img_0312_1.jpg" alt="상품명1" />
                                    <span class="bg_light_gray">&nbsp;</span>
                                </p>
                            </a>
                        </div>

                        <!-- img : 오른쪽 -->
                        <div class="grocery_2">
                            <ul>
                                
                                    
                                    
                                    
                                    
                                    
                                        
                                        
                                            
                                                
                                                
                                            
                                        
                                    
                                    <li>
                                        <a href="/product/detail/2789-3344">
                                            <div class="thumnail_area">
                                                
                                                    
                                                        <img src="/dailychan/resources/images/main/thumb/simple_img_0312_2.jpg" alt="상품명1" />
                                                    
                                                    
                                                
                                                <span class="bg_light_gray">&nbsp;</span>
                                            </div>
                                            <div class="title_area"></div>
                                            <span class="title_name">
                                                김경숙 순무김치(700g)
                                            </span>
                                        </a>
                                    </li>
                                
                                    
                                    
                                    
                                    
                                    
                                        
                                        
                                            
                                                
                                                
                                            
                                        
                                    
                                    <li>
                                        <a href="/product/detail/3270-4750">
                                            <div class="thumnail_area">
                                                
                                                    
                                                        <img src="/dailychan/resources/images/main/thumb/simple_img_0312_3.jpg" alt="상품명1" />
                                                    
                                                    
                                                
                                                <span class="bg_light_gray">&nbsp;</span>
                                            </div>
                                            <div class="title_area"></div>
                                            <span class="title_name">
                                                강화 순무물김치(700g)
                                            </span>
                                        </a>
                                    </li>
                                
                                    
                                    
                                    
                                    
                                    
                                        
                                        
                                            
                                                
                                                
                                            
                                        
                                    
                                    <li>
                                        <a href="/product/detail/3037-4191">
                                            <div class="thumnail_area">
                                                
                                                    
                                                        <img src="/dailychan/resources/images/main/thumb/simple_img_0312_4.jpg" alt="상품명1" />
                                                    
                                                    
                                                
                                                <span class="bg_light_gray">&nbsp;</span>
                                            </div>
                                            <div class="title_area"></div>
                                            <span class="title_name">
                                                매실장아찌 120g
                                            </span>
                                        </a>
                                    </li>
                                
                                    
                                    
                                    
                                    
                                    
                                        
                                        
                                            
                                                
                                                
                                            
                                        
                                    
                                    <li>
                                        <a href="/product/detail/2818-3388">
                                            <div class="thumnail_area">
                                                
                                                    
                                                        <img src="/dailychan/resources/images/main/thumb/simple_img_0312_5.jpg" alt="상품명1" />
                                                    
                                                    
                                                
                                                <span class="bg_light_gray">&nbsp;</span>
                                            </div>
                                            <div class="title_area"></div>
                                            <span class="title_name">
                                                자숙굴(230g)
                                            </span>
                                        </a>
                                    </li>
                                
                            </ul>
                        </div>
                        <!-- //img : 오른쪽 -->
                    </dd>
                </dl>
                <span class="btn_view_main2">
                    
                    
                    
                    
                    <div class="hashtag">
                        
                        <div>
                            <a href="/product/detail/1958-1762?categoryId=45">
                            #건강한 전
                            </a>
                        </div>
                        
                        <div>
                            <a href="/product/detail/1355-1212?categoryId=45">
                            #영양가득닭죽
                            </a>
                        </div>
                        
                        <div>
                            <a href="/product/detail/2894-3802?categoryId=45">
                            #아침한끼딱
                            </a>
                        </div>
                        
                    </div>
                    <a class="non_border"  href="/product/list?categoryId=44">
                        <span>간편식품관 전체보기</span>
                    </a>
                </span>
            </div>
            <!-- //간편식료품 영역 -->
            <div class="cook_book">
                <div class="cook_book_area">
                    <div class="cook_txt_area">
                        <div class="title_area">
                        <img src="/dailychan/resources/images/main/recipe_title.png">
                        <a href="/company/story/recipeList"><span>전체보기</span></a>
                        </div>
                    </div>
                    
                    <div class="cook_large_area">
                    <a href="/company/story/recipeDetail/BRD3/1230 ">   
                        <img src="/dailychan/resources/images/etc/recipe_main_20190312_1.jpg">
                        <div class="cook_menu_area">
                            <li class="cook_title">애호박 닭가슴살 구이</li>
                            <li class="cook_txt">닭 가슴살을 좀 더 색다르게 즐기는 방법</li>
                        </div>  
                    </a>    
                    </div>
                    <div class="cook_large_area_right">
                        <a href="/company/story/recipeDetail/BRD3/585"> 
                        <img src="/dailychan/resources/images/etc/recipe_main_20190312_2.jpg">
                        <div class="cook_menu_area">
                            <li class="cook_title">아보카도 비빔밥</li>
                            <li class="cook_txt">부드럽고 고소해 누구나 좋아해요</li>
                            <!-- <li>
                                <span style="padding-right: 10px;"><img src="/images/main/main_recipe_ico1.png" style="padding-right: 5px;">2-3인분</span>
                                <span style="padding-right: 10px;"><img src="/images/main/main_recipe_ico2.png" style="padding-right: 5px;">30분이내</span> 
                                <span> 난이도 &nbsp;<img src="/images/main/main_recipe_ico3_1.png" style="padding-right: 5px;"></span>
                            </li> -->
                        </div>
                            </a>
                    </div>
                </div>
            </div>

            <div class="producing_news">
                <div class="producing_news_area">
                    <div class="producing_news_title">
                        <img src="/dailychan/resources/images/main/producing_news_title.png"/>
                        <a href="/company/story/newsList/7"><span>전체보기</span></a>
                    </div>
                    <div class="producing_news_cont">
                        <div class="producing_news_cont_block">
                            <a href="/company/story/newsDetail/7/237">
                                <img src="/dailychan/resources/images/main/producing_news_1.jpg"/>
                                <div class="contScript">
                                    <h1>
                                        톡 쏘는 감칠맛의 갓김치!<br>
                                        여수 참맛입니다.</h1>
                                    <h2>
                                        안전 먹거리유통, 맛을 위한 아낌없는 재료,<br> 
                                        양심판매를 기본으로 합니다.
                                    </h2>
                                </div>
                            </a>
                        </div>
                        <div class="producing_news_cont_block">
                            <a href="/company/story/newsDetail/7/179">
                                <img src="/dailychan/resources/images/main/producing_news_2.jpg?dummy=0.01"/>
                                <div class="contScript">
                                    <h1>
                                        행복한 닭,행복한 계란<br> 
                                        황금빛 영양을 담은 오성농장
                                    </h1>
                                    <h2>
                                        경상북도 성주군 선남면에 자리잡은<br> 
                                        가족들이 함께 운영하고 있는 오성농장
                                    </h2>
                                </div>
                            </a>
                        </div>
                        <div class="producing_news_cont_block">
                            <!-- 2019.03.26 -->
                            <a href="/company/story/newsDetail/7/1519">
                                <img src="/dailychan/resources/images/main/producing_news_4.jpg?dummy=0.02"/>
                                <div class="contScript">
                                    <h1>
                                        자연과 하나되는 사람들이 만든<br>
                                        매실발효액 간장게장
                                    </h1>
                                    <h2>
                                        1953년부터 이어져 온 방식 그대로의 맛을 담아<br> 
                                        손님들의 입맛을 사로잡은 귀한 음식
                                    </h2>
                                </div>
                            </a>
                        <!-- 2019.03.26 --> 
                        </div>
                    </div>
                </div>
            </div>
            <!-- 레이어팝업 -->
            <div class="popup-wrapper" style="display:none;">
                
            </div>
            
        </div>
    </div>
    <!-- //컨텐츠 -->
    
    <!-- footer -->
    



    
    
    
    	
    
    
	<div class="footerArea" >
		
			<!-- 공지사항 / 전화상담 -->
			<div class="mypage_footer_area">
				<div class="contents">
					<!-- 공지사항 -->
					<div class="mypage_list_1">
						<dl>
							<dt>
								<span>공지사항</span>
								<!-- btn : 더보기 -->
								<span class="btn_view_main">
									<a href="/company/story/list/NTC1">더보기 &nbsp; &gt;</a>
								</span>
							</dt>
							
							<dd>
								<a href="/company/story/detail/NTC1/1678">
									<p>[공지] 새벽배송 서울시 광진구, 강동구 주문마감 연장</p>
									<span>2019-04-16</span>
								</a>
							</dd>
							
							<dd>
								<a href="/company/story/detail/NTC1/1648">
									<p>[공지] 고객센터 운영시간 연장 안내</p>
									<span>2019-04-12</span>
								</a>
							</dd>
							
							<dd>
								<a href="/company/story/detail/NTC1/1624">
									<p>[3월 당첨자 발표] 베스트 후기 30분을 선정하여 10,000포인트를 드립니다.</p>
									<span>2019-04-10</span>
								</a>
							</dd>
							
							<dd>
								<a href="/company/story/detail/NTC1/1425">
									<p>[1차 SNS 구매후기 당첨자 발표] 생생 구매후기남기고 오아시스 쿠폰 받으세요.</p>
									<span>2019-03-14</span>
								</a>
							</dd>
							
						</dl>
					</div>
					<!-- //공지사항 -->
	
					<!-- 회원문의 -->
					<div class="mypage_list_2">
						<!-- btn : 회원정보 -->
						<span class="btn_1">
							<a href="/myPage/info">회원정보</a>
						</span>
						<!-- btn : 1:1 상담문의 -->
						<span class="btn_2">
							<a href="/myPage/qnaList">1:1 상담문의</a>
						</span>
						<!-- btn : 취소/교환/반품 -->
						<span class="btn_3">
							<a href="/myPage/cancelList">취소/교환/반품</a>
						</span>
						<!-- btn : 주문/결제 -->
						<span class="btn_4">
							<a href="/myPage/orderList">주문/결제</a>
						</span>
					</div>
					<!-- 회원문의 -->
	
					<!-- 전화상담 -->
					<div class="mypage_list_3">
						<dl>
							<dt>
								고객센터
							</dt>
							<dd>
								<div class="txt_phone">
									1577-0098
								</div>
								<div class="txt_time">
									평일 09:30 ~ 18:30<br>
								    토요일 09:30 ~ 15:00<br>(일요일/공휴일 휴무)
								</div>
							</dd>
						</dl>
					</div>
					<!-- //전화상담 -->
				</div>
			</div>
			<!-- //공지사항 / 전화상담 -->
		
		
		
		<div class="footerWrap">
			<ul class="footerList">
				<li><a href="/company/introduce/info">오아시스 소개</a></li>
				<li><a href="/company/introduce/store">매장 안내</a></li>
				<li><a href="/help/terms">약관 및 정책</a></li>
				<li><a href="/dailychan/help/qna.action?keyword=&page=1&categoryNo=17">고객센터</a></li>
				
				<li><a href="/contactUs/contact">입점 문의</a></li>
				<li><a href="/contactUs/recruit">인재 채용</a></li>
			</ul>
		</div>
		<div class="contents">
			<div class="footerCopy">
			<div class="footersns">
			    
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
