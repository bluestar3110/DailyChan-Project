<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko"><head>
    <title>오아시스마켓::믿을 수 있는 먹거리</title>




<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/notosanskr.css">
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_shop.css?dummy=5.99">
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/flick/jquery-ui.min.css">
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script src="https://connect.facebook.net/signals/config/291411411372810?v=2.8.47&amp;r=stable" async=""></script><script src="https://connect.facebook.net/signals/config/361005804747507?v=2.8.47&amp;r=stable" async=""></script><script src="https://connect.facebook.net/signals/config/715340905507944?v=2.8.47&amp;r=stable" async=""></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-PR5WGG3"></script><script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.cookie.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.form.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/placeholders.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/clipboard.min.js"></script>
<script type="text/javascript" src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" src="https://t1.daumcdn.net/postcode/api/core/190416/1555410100831/190416.js"></script>

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
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-119809802-1"></script>
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

	<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.form.min.js"></script>
	
	<script type="text/javascript">
		var add = false;
		var slider;
		var checkOrderedProduct = false;
		var orderedProductInd = false;
		$(document).ready(function() {
			$(window).scroll(function(){fixDiv1(); fixDiv2()});
			paging('2646', '1', '1');
		    var $tab5 = $("#tab5");
		    var $tabList = $(".tabList");
		 
			slider = $('.bxslider').bxSlider({
	              minSlides: 3,
	              maxSlides: 6,
	              slideWidth: 143,
	              slideMargin: 7,
	              captions: false,
	              moveSlides: 1,
	              pager: false,
	              touchEnabled: false
	        });
			// category
		    $(".prodDetailTop .now").click(function() {
				if ( $(this).next(":visible").length == 0 ) {
					$(".prodDetailTop .now").next().hide();
					$(this).next().show();
				} else {
					$(".prodDetailTop .now").next().hide();
				}
				return false;
			});
			
			$tabList.find("a").click(function() {
				$tabList.find("li").removeClass("on");
				$(this).parent().addClass("on");
				
				var tab = $(this).data("tab");
				$(".wd900").hide();
				$(".tab" + tab).show();
				
				var offset = $("#pViewTabCon").offset();
				$('html, body').animate({scrollTop : offset.top}, 200);
				
				return false;
			});
			
			$(".cmMoreBtn").click(function() {

		        var more = $(this).parent().parent().next();
		        if (more.css("display") == "none") {
		            $(this).parent().parent().parent().find(".comMore").hide();
		            more.show();
		        } else {
		            $(this).parent().parent().parent().find(".comMore").hide();
		            more.hide();
		        }
		        
		    })
						
			$(".cmMoreCloseBtn").click(function() {
				$(this).parent().parent().removeClass("cmMoreLi");
				if ($(this).attr("id") == "moreClose1") {
					$(this).parent().parent().addClass("cmImgLi");
				}
			});
			
			$(".now").click(function() {
				$(this).next().toggle();
				return false;
	        });
			
			$("#commentFile").change(function () {
				var file = $("#commentFile").val().split("\\");
				$("#photoName").val(file[file.length-1]);
	        });
			
			setCookie();
			
			
			
		});
		
				
		// 수량 Up
		function btnPlusClick(obj) {
			var isOption = $(obj).hasClass("option");
			var $quantity = $(obj).parent().find(".quantity");
			var quantity = parseInt($quantity.text()) + 1;
			var discountPrice = parseInt($(obj).parents().data("discount_price"));
			
			
			
				if(quantity > 2) {
					//alert("2개 이상은 구매 할 수 없습니다.");
					return false;
				}
			
			
			
			// optionPrice
			$quantity.text(quantity);
			
			if(isOption)
				setOptionPrice( obj, discountPrice * quantity );
			else
				setTotalPrice( discountPrice * quantity );
			return false;
		}
		
		// 수량 Down
		function btnMinusClick(obj) {
			var isOption = $(obj).hasClass("option");
			var $quantity = $(obj).parent().find(".quantity");
			var quantity = parseInt($quantity.text()) - 1;
			var discountPrice = parseInt($(obj).parents().data("discount_price"));
			
			if (quantity < 1) quantity = 1;
			$quantity.text(quantity);
			
			if(isOption)
				setOptionPrice( obj, discountPrice * quantity );
			else
				setTotalPrice( discountPrice * quantity );
			return false;
		}
		
		function setOptionPrice(obj, p) {
			$(obj).parent().parent().find(".optionPrice").html(comma( p ) + "&nbsp;<span>원</span>");
			setOptionTotal();
		}
		
		function setOptionTotal(){
			var totalP = 0;
			$(".optionPrice").each(function() {
				var txt = $(this).text();
				totalP +=parseInt(txt.replace("&nbsp;<span>원</span>", "").replace(",", ""));
			});
			setTotalPrice(totalP);
		}
		
		function setTotalPrice(p) {
			$("#totalPrice").html(comma( p ) + "&nbsp;<em>원</em>");
		}
		
		function setCookie(){
			//최근 본 상품 쿠키 추가
			var name = "viewProduct2646-4545";
            var value = "/product/2646/thumb/thumb_2646d79c1e73-5983-4d66-98a2-6ff8a0b32f15.jpg";
            var title = "<4월 정기Sale특가>제주청정우유 900ml";
            var price = "4500";
            var discountPrice = "1500";
			var todayDate = new Date(); 
            todayDate.setDate( todayDate.getDate() + 1 ); //24시간
            
            document.cookie = name + "=" + escape( value + "|" + title + "|" + price + "|" + discountPrice ) + "; path=/; expires=" + todayDate.toGMTString() + ";";
		}
		
		function productQnaPaging(productId, productQnaGbn, productQnaPage) {
			$.ajax({
				url : contextPath + "/product/productQnaPaging/" + productId + "/" + productQnaGbn + "/" + productQnaPage,
				type: "GET",
			    dataType: "html",
			    success: function(data) {
			        $("#qnaList").html(data);
			        if (productQnaGbn == 'all') {
			        	$("#all").addClass("cmTit_on");
                        $("#my").removeClass("cmTit_on");
			        } else {
			        	$("#my").addClass("cmTit_on");
                        $("#all").removeClass("cmTit_on");
			        }
			        // var offset = $(".view5").offset();
					// $('html, body').animate({scrollTop : offset.top}, 200);
			    }
			});
		}
		
		function paging(productId, page, commentPage) {
			$.ajax({
				url : contextPath + "/product/paging/" + productId + "/" + page + "/" + commentPage,
				type: "GET",
			    dataType: "html",
			    success: function(data) {
			        $("#commentList").html(data);
			        if (page == 3) {
			        	$("#photo").addClass("cmTit_on");
                        $("#all").removeClass("cmTit_on");
			        } else {
		                $("#all").addClass("cmTit_on");
                        $("#photo").removeClass("cmTit_on");
			        }
			    }
			});
		}
		
		function checkComment(productId) {
			$.ajax({
				url : contextPath + "/myPage/checkComment/" +  productId,
				type : "GET",
				dataType : "json",
				success : function(response) {
					checkOrderedProduct = true;
					if (response.status == "OK") {
						if (response.data) {
							$("#orderId").val(response.data.orderId);
	                        $("#orderProductId").val(response.data.orderProductId);	
						}
						 
						 $("#commentFile").val("");
						 $("#commentContent").val("");
						 starRating(5);
						 setDeliveryRate("FAST","빨라요");
						 setPriceRate("LOW","싸게 샀어요");
						 $('.oasisDim').show();
						 $('.oasisLayerPop3').show();
						 $('.oasisLPcon1').show();
						 $('.oasisLPcon2').show();
						 $('.oasisLPcon3').show();
						 $('.oasisLPtit > strong').show(); 
						 
				         $("body").bind("touchmove", function(e){
				            e.preventDefault();
				        }); //스크롤방지
				         orderedProductInd = true;
					} else {
						alert(response.message);
					}
				}
			});
		}
		
		function closeCommentPop() {
			$('.oasisLayerPop3').hide();
            $('.oasisDim').hide();
		}
		
		function imageUpload() {
			document.getElementById("commentFile").click();
	    };
	       
	    function setDeliveryRate(code,status) {
	    	$("#deliveryRate").val(code);
	    	$("#deliveryText").text(status).next().hide();
	    }
	       
	    function setPriceRate(code,status) {
	    	$("#priceRate").val(code);
	    	$("#priceText").text(status).next().hide();
	    }
	    
	    function starRating(num) {
	    	var star = new Array();
	    	star[0] = $("#star1");
			star[1] = $("#star2");
			star[2] = $("#star3");
			star[3] = $("#star4");
			star[4] = $("#star5");
			
			var starBg = new Array();
			starBg[0] = $(".starBg01");
			starBg[1] = $(".starBg02");
			starBg[2] = $(".starBg03");
			starBg[3] = $(".starBg04");
			starBg[4] = $(".starBg05");
	           
			for(i = 0; i < num; i++) {
				star[i].addClass("on");
				starBg[i].hide();
			}
	           
			for(i = num; i < 5; i++) {
				star[i].removeClass();
				starBg[i].hide();
			}
			
			if (num == 1) {
				starBg[0].show();
			} else if (num == 2) {
				starBg[1].show();
			} else if (num == 3) {
				starBg[2].show();   
			} else if (num == 4) {
				starBg[3].show();
			} else if (num == 5) {
				starBg[4].show();
			}
			
			$("#starRating").val(num);
			$("#rate").text(num+".0");
		}
	    
	    function commentAddCheck() {
	        $commentContent = $("#commentContent").val();
	        $commentImage = $("#commentImage").val();
	        $starRating = $("#starRating").val();
	        if ($commentContent == "") {
	            alert("구매후기 내용을 입력해주세요.");
	        } else if ($commentContent.length < 20) {
	            alert("20자 이상 입력해주세요.");
	        } else if ($starRating == "") {
	            alert("상품 평가를 해주세요.");
	        } else {
	            commentAdd();
	        }
	    }
	        
	     function commentAdd() {
	    	 if (!add) {
	             add = true;
	             var $form = $("#commentForm");
	              $form.ajaxForm({
	                  dataType: "json",
	                  success: function(response) {
	                      if (response.status == "OK") {  
	                          window.location.reload(true);
	                      }
	                      else {
	                          alert(response.message);
	                          add = false;
	                      }
	              },  
	              error: function() {
	                  alert("오류가 발생했습니다.");
	                  add = false;
	                  }
	              });
	              $form.submit();
	    	 }
           
	     }
	     
	     function cleanProductQnaForm() {
	    	 $("#qnaType").val("1");
	    	 $("#openYn").val("Y");
	    	 $("#question").val("");
	    	 
	    	 $("input:radio[name='radioQnaType']:input[value='1']").attr("checked", true);
	    	 $("input:checkbox[id='productQnaOpenYn']").attr("checked", false);
	    	 $("input:checkbox[id='productQnaSmsAlarmYn']").attr("checked", true);
	     }
	     
	     function openProductQnaForm() {
	    	 cleanProductQnaForm();
	    	 
	    	 $('.oasisDim').show();
	    	 $('.oasisLayerPop4').show();
	     }
	     
	     
	     function closeProductQnaForm() {
	    	 $('.oasisLayerPop4').hide();
	    	 $(".oasisLayerPop").hide();
	    	 $('.oasisDim').hide();
	    	 
	    	 $('.oasisDim').hide(50, function(){
	 			$('body').css("overflow-y","auto");
	 		 });
	     }
	     
	     function writeProductQna() {
	    	 var $form = $("#productQnaForm");
	    	 
	    	 if($("input:checkbox[id='productQnaOpenYn']").is(":checked"))
	    		 $("#openYn").val("N");
	    	 else
	    		 $("#openYn").val("Y");
	    	 
	    	 var qnaType = $("input:radio[name='radioQnaType']:checked").val();
	    	 $("#qnaType").val(qnaType);
	    	 
	    	 var smsAlarmYn = "Y";
	    	 if(!$("input:checkbox[id='productQnaSmsAlarmYn']").is(":checked"))
	    		 smsAlarmYn = "N";

             $.ajax({
          		url : contextPath + "/myPage/writeProductQna",
          		type: "POST",
          		dataType: "json",
          		data: {
          			productId	: 2646
          			, qnaType	: $("#qnaType").val()
          			, openYn	: $("#openYn").val()
          			, question	: $("#question").val()
          			, smsAlarmYn: smsAlarmYn
         		},
          		success: function(response) {
          			if (response.status == "OK") {
          				closeProductQnaForm();
          				productQnaPaging(2646, 'all', 1);
          			}
          			else
          				alert(response.message);
          		},  
                error: function() {
                	alert("오류가 발생했습니다.");
                }
          	});
	     }
	     
		function copyUrlToClipboard(){
	    	 try {
		    	 var $temp = $("<input>");
		    	 $("body").append($temp);
		    	 $temp.val(document.location.href).select();
		    	 document.execCommand("copy");
		    	 $temp.remove();
		    	 alert("URL이 복사 되었습니다.");
	    	 }
	    	 catch(err) {
	    		 alert('이 브라우저는 지원하지 않습니다.');
	    	 }
    	}
		
		function openProductCommentPop(pCommentId) {
			$("#productCommentContent").val("");
			if(checkOrderedProduct) {
				if(orderedProductInd) {
					$('.oasisDim').show();
					$('.productCommentPop').show();
					$("#ppCommentId").val(pCommentId);
					$("#pCommentId").val(pCommentId);
				}
				else {
					alert("구매 내역이 있는 분만 작성 가능합니다.");
				}
			}
			else {
				$.ajax({
					url : contextPath + "/myPage/checkComment/2646",
					type : "GET",
					dataType : "json",
					success : function(response) {
						checkOrderedProduct = true;
						if (response.status == "OK") {
							orderedProductInd = true;
							$('.oasisDim').show();
							$('.productCommentPop').show();
							$("#ppCommentId").val(pCommentId);
							$("#pCommentId").val(pCommentId);
						} else {
							alert(response.message);
						}
					}
				});
			}
		}
		
		function closeProductCommentPop(){
			$('.productCommentPop').hide();
			$('.oasisDim').hide();
			$('.oasisDim').hide(50, function(){
				$('body').css("overflow-y","auto");
			});
		}
		
		function addProductComment() {
			$.ajax({
          		url : contextPath + "/myPage/writeProductComment",
          		type: "POST",
          		dataType: "json",
          		data: {
          			productId			: 2646
          			, ppCommentId		: $("#ppCommentId").val()
          			, pCommentId		: $("#pCommentId").val()
          			, commentContent	: $("#productCommentContent").val()
         		},
          		success: function(response) {
          			if (response.status == "OK") {
          				closeProductCommentPop();
          				$(".productCommentPaging").find("a.on").click();
          			}
          			else
          				alert(response.message);
          		},  
                error: function() {
                	alert("오류가 발생했습니다.");
                }
          	});
		}
	     
	     
	</script>
	
	<!-- Facebook Pixel Code -->
	<script>
		!function(f,b,e,v,n,t,s){
			if(f.fbq)
				return;
			n=f.fbq=function(){
				n.callMethod?n.callMethod.apply(n,arguments):n.queue.push(arguments)};
				if(!f._fbq)
					f._fbq=n;
				n.push=n;
				n.loaded=!0;
				n.version='2.0';
				n.queue=[];
				t=b.createElement(e);
				t.async=!0;
				t.src=v;
				s=b.getElementsByTagName(e)[0];
				s.parentNode.insertBefore(t,s)
		}(window,document,'script', 'https://connect.facebook.net/en_US/fbevents.js');
		
		fbq('init', '715340905507944'); 
		fbq('track', 'PageView');
	</script>
	<noscript>
		<img height="1" width="1" src="https://www.facebook.com/tr?id=715340905507944&ev=PageView&noscript=1" />
	</noscript>
	<!-- End Facebook Pixel Code -->
</head>

<body>
<div class="allWrap">

	 
	<!-- 컨텐츠 -->
	<div class="contentsArea" id="sec_product_view">
		<div class="contentsWrap">
			
			<!-- 오른쪽 영역 -->
			<div class="content">
				<!-- 내용 입니다 -->
				
				<div class="productView">
				
					<!-- 카테고리선택 -->
					





					<div class="sec_list_area">
						
						
						<span>
							<a href="/">홈</a>
						</span>
						
							
							
								
							
								
							
								
									
									
									
										
									
									<span class="sec_arrow"><img src="/dailychan/resources/images/shop/ico_arrow_sec.png" alt="|"></span>
									<span>
										
										<a href="#" onclick="javascript:categoryProducts(3); return false;">축산물</a>
										
									</span>
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
						
						
							
							
								
							
								
							
								
							
								
									
									
									<span class="sec_arrow"><img src="/dailychan/resources/images/shop/ico_arrow_sec.png" alt="|"></span>
									<span>
										<strong>
										<a href="#" onclick="javascript:categoryProducts(51); return false;">우유/치즈/요구르트</a>
										</strong>
									</span>
								
							
								
							
						
						<div class="clear"></div>
					</div>
					
					
					    
	                    
                	
                	
                	
					<!-- //카테고리선택 -->
					
					<!-- 상품구매선택 -->
					<div class="pViewInfo">
						
						<div class="pvImg">
                        	
                        	<div>
								<img src="http://www.oasis.co.kr:8580/product/2646/thumb/thumb_2646d79c1e73-5983-4d66-98a2-6ff8a0b32f15.jpg" alt="상품이미지">
							</div>
                        </div>
                        
						<div class="pvNamePrice">
							<div class="pvName">
								<h4><span style="float:left;width:75%;line-height:30px;">&lt;4월 정기Sale특가&gt;제주청정우유 900ml</span>
								<div class="shareSnsWrap">
									<a href="javascript:snsPostScript('kakaotalk', '<4월 정기Sale특가>제주청정우유 900ml', 'http://www.oasis.co.kr:8580/product/2646/thumb/thumb_2646d79c1e73-5983-4d66-98a2-6ff8a0b32f15.jpg', false);" class="shareKakao"></a>
									<a href="javascript:snsPostScript('facebook', '<4월 정기Sale특가>제주청정우유 900ml', 'http://www.oasis.co.kr:8580/product/2646/thumb/thumb_2646d79c1e73-5983-4d66-98a2-6ff8a0b32f15.jpg', false);" class="shareFacebook"></a>
									<a href="javascript:copyUrlToClipboard();" class="shareLink"></a>
    							</div>
								</h4>
							</div>
							<ul class="pvPriceList">
								<li>
									<div class="infoTxt">
										<strong>일반가</strong>
										<p>4,500원</p>
									</div>
								</li>
								<li class="orderOasisPrice">
									<strong>오!감동</strong>
									<p>1,500<span>원</span><em class="oasisPc">66%</em></p>
								</li>
								<!--  <li>
                                	<strong>상품코드</strong>
                                    <p>8809135204473</p>
                                </li>-->
                                <li>
                                    <strong>보관방법</strong>
                                    <p>냉장</p>
                                </li>
                                <li>
                                	<strong>배송구분</strong>
									<div class="deliveryInfo">
										<ul>
			                        		<li class="on">매장배송</li>
			                        		<li class="on">택배배송</li>
			                        		<li class="on">새벽배송</li>
			                        	</ul>
		                        	</div>
                                </li>
								<li class="orderPM">
                                	<strong>구매수량</strong>
                                	
                                    <div class="orderPMBtn" data-discount_price="1500">
                                    	<div class="ea quantity" id="quantity">1</div>
                                        <a href="#" class="orderPMBtn_p btnPlus" onclick="javascript:btnPlusClick(this); return false;">
                                        	<img src="/dailychan/resources/images/shop/shopBtn_p.png" alt="수량 더하기">
                                        </a>
                                        <a href="#" class="orderPMBtn_m btnMinus" onclick="javascript:btnMinusClick(this); return false;">
                                        	<img src="/dailychan/resources/images/shop/shopBtn_m.png" alt="수량 빼기">
                                        </a>
                                    </div>
                                    
                                    
                                    	<p class="orderPMTxt">
                                    		
	                                    	<span class="fontBlack mgLeftm5 mgRight10"></span>
	                                    	
	                                    	
											본 상품은 2개까지 구매 할 수 있습니다.
											
											
										</p>
									
                                </li>
                                
                                	<li class="orderCaution">
	                                	<strong><b>구매포인트</b></strong>
	                                    <p><b>제주청정지역에서 자란 젖소의 1등급 저온살균 우유</b></p>
	                                </li>
                                
                                
                                <li class="orderTotal">
                                	<strong>합계금액</strong>
                                    <p>
                                    	<span id="totalPrice">
                                    		
	                                    		
	                                    		
	                                    			1,500
	                                    		
                                    		
                                    		<em>원</em>
                                    	</span>
                                    </p>
                                </li>
							</ul>
							<div class="pvBtnWrap">
                            	
	                            	
	                            	
	                            		<a href="#" class="pvBtn3" onclick="fbq('track', 'AddToWishlist'); addWishList(2646, 4545); return false;">찜</a>
	                            		<a href="#" class="pvBtn1" onclick="fbq('track', 'AddToCart');addCart(2646, 4545); return false;">장바구니</a>
	                            	
                            	
                            	
                                
									
									
									
									
									
									
									
									
									    <a href="#" class="pvBtn2" onclick="fbq('track', 'Purchase');buyItNow(2646, 4545); return false;">바로구매</a>
									
								
                            </div>
                            <div class="clear"></div>

						</div>
                    </div>
                    <!--// 상품구매선택 -->
                    
  					<!--관련 상품 -->
					<div class="pViewrelated">
					   
						<div class="recipe">
					       <h4>이 상품과 관련된 레시피
							
							    <a href="/company/story/recipeList?productId=2646"><img src="/dailychan/resources/images/common/btn_allview.png" style=" float: right; padding-right: 8px;"></a>
							
						  </h4>

	                        
	                        
	                            
	                               <a href="/company/story/recipeDetail/BRD3/1588">
	                                <div class="start"><img src="http://www.oasis.co.kr:8580/content/NtWUnyHk.jpg" alt="섬네일">
			                          <div class="txt">해와달과별</div>
			                        </div>
			                        </a>
			                        
	                            
	                        
	                            
	                               <a href="/company/story/recipeDetail/BRD3/1587">
	                                <div class="start"><img src="http://www.oasis.co.kr:8580/content/AKezYTpT.jpg" alt="섬네일">
			                          <div class="txt">초코볼</div>
			                        </div>
			                        </a>
			                        
	                            
	                        
	                            
	                        
	                        
	                           
	                           
	                        
					      </div>
					      

						<div class="recommend">
							<h4>관련상품</h4>
							
							<div class="bx-wrapper" style="max-width: 893px;"><div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 169px;"><div class="bxslider" style="width: 8215%; position: relative; transition-duration: 0s; transform: translate3d(-900px, 0px, 0px);"><div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" class="bx-clone" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/1947-1751">
					                                  <img src="http://www.oasis.co.kr:8580/product/1947/thumb/thumb_19476db096c3-a64c-4d40-b8a4-1f46cd2d8631.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">매일 바이오플레인 저지방(450g)</div>
				                            </div><div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" class="bx-clone" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/1921-1728">
					                                  <img src="http://www.oasis.co.kr:8580/product/1921/thumb/thumb_192193b47fed-5c3f-440c-884a-c555bd280b1e.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">상하목장 유기농요구르트 (750ml)</div>
				                            </div><div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" class="bx-clone" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/3480-5882">
					                                  <img src="http://www.oasis.co.kr:8580/product/3480/thumb/thumb_3480dd66850e-c0fc-456b-af44-58872e46d391.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">천연발효종 제주순우유식빵 (490g)</div>
				                            </div><div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" class="bx-clone" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/3479-5410">
					                                  <img src="http://www.oasis.co.kr:8580/product/3479/thumb/thumb_34791c4a9650-7ada-4869-b2cb-ba08eb8e1799.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">천연발효종 촉촉우유식빵 (390g)</div>
				                            </div><div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" class="bx-clone" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/3552-5764">
					                                  <img src="http://www.oasis.co.kr:8580/product/3552/thumb/thumb_35525564902b-876f-4257-91d9-3ee5d0226d26.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">샤브레쇼콜라 (100g)</div>
				                            </div><div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" class="bx-clone" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/3553-5765">
					                                  <img src="http://www.oasis.co.kr:8580/product/3553/thumb/thumb_355359c06e7d-7e21-4c0c-bfe8-2541420652bb.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">크렌베리쇼트 (100g)</div>
				                            </div>
								
								    
									    
										    <div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" aria-hidden="false">
											    <div class="start">
											        <a href="/product/detail/1946-1750">
					                                  <img src="http://www.oasis.co.kr:8580/product/1946/thumb/thumb_1946beb16a10-b54f-40f8-9b2b-640654ddeb06.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">매일 바이오플레인(450g)</div>
				                            </div>
			                            
	                                
								
								    
									    
										    <div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" aria-hidden="false">
											    <div class="start">
											        <a href="/product/detail/1941-1745">
					                                  <img src="http://www.oasis.co.kr:8580/product/1941/thumb/thumb_1941a0001c62-1533-4165-b257-dbab8af144c0.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">드빈치 자연방목치즈(270g)</div>
				                            </div>
			                            
	                                
								
								    
									    
										    <div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" aria-hidden="false">
											    <div class="start">
											        <a href="/product/detail/1947-1751">
					                                  <img src="http://www.oasis.co.kr:8580/product/1947/thumb/thumb_19476db096c3-a64c-4d40-b8a4-1f46cd2d8631.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">매일 바이오플레인 저지방(450g)</div>
				                            </div>
			                            
	                                
								
								    
									    
										    <div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/1921-1728">
					                                  <img src="http://www.oasis.co.kr:8580/product/1921/thumb/thumb_192193b47fed-5c3f-440c-884a-c555bd280b1e.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">상하목장 유기농요구르트 (750ml)</div>
				                            </div>
			                            
	                                
								
								    
									    
	                                
								
								    
									    
	                                
								
								    
									    
										    <div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/3480-5882">
					                                  <img src="http://www.oasis.co.kr:8580/product/3480/thumb/thumb_3480dd66850e-c0fc-456b-af44-58872e46d391.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">천연발효종 제주순우유식빵 (490g)</div>
				                            </div>
			                            
	                                
								
								    
									    
										    <div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/3479-5410">
					                                  <img src="http://www.oasis.co.kr:8580/product/3479/thumb/thumb_34791c4a9650-7ada-4869-b2cb-ba08eb8e1799.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">천연발효종 촉촉우유식빵 (390g)</div>
				                            </div>
			                            
	                                
								
								    
									    
										    <div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/3552-5764">
					                                  <img src="http://www.oasis.co.kr:8580/product/3552/thumb/thumb_35525564902b-876f-4257-91d9-3ee5d0226d26.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">샤브레쇼콜라 (100g)</div>
				                            </div>
			                            
	                                
								
								    
									    
										    <div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/3553-5765">
					                                  <img src="http://www.oasis.co.kr:8580/product/3553/thumb/thumb_355359c06e7d-7e21-4c0c-bfe8-2541420652bb.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">크렌베리쇼트 (100g)</div>
				                            </div>
			                            
	                                
								
							<div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" class="bx-clone" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/1946-1750">
					                                  <img src="http://www.oasis.co.kr:8580/product/1946/thumb/thumb_1946beb16a10-b54f-40f8-9b2b-640654ddeb06.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">매일 바이오플레인(450g)</div>
				                            </div><div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" class="bx-clone" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/1941-1745">
					                                  <img src="http://www.oasis.co.kr:8580/product/1941/thumb/thumb_1941a0001c62-1533-4165-b257-dbab8af144c0.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">드빈치 자연방목치즈(270g)</div>
				                            </div><div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" class="bx-clone" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/1947-1751">
					                                  <img src="http://www.oasis.co.kr:8580/product/1947/thumb/thumb_19476db096c3-a64c-4d40-b8a4-1f46cd2d8631.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">매일 바이오플레인 저지방(450g)</div>
				                            </div><div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" class="bx-clone" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/1921-1728">
					                                  <img src="http://www.oasis.co.kr:8580/product/1921/thumb/thumb_192193b47fed-5c3f-440c-884a-c555bd280b1e.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">상하목장 유기농요구르트 (750ml)</div>
				                            </div><div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" class="bx-clone" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/3480-5882">
					                                  <img src="http://www.oasis.co.kr:8580/product/3480/thumb/thumb_3480dd66850e-c0fc-456b-af44-58872e46d391.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">천연발효종 제주순우유식빵 (490g)</div>
				                            </div><div style="float: left; list-style: none; position: relative; width: 143px; margin-right: 7px;" class="bx-clone" aria-hidden="true">
											    <div class="start">
											        <a href="/product/detail/3479-5410">
					                                  <img src="http://www.oasis.co.kr:8580/product/3479/thumb/thumb_34791c4a9650-7ada-4869-b2cb-ba08eb8e1799.jpg" alt="상품이미지">
					                                </a>
				                                </div>
				                                <div class="txt">천연발효종 촉촉우유식빵 (390g)</div>
				                            </div></div></div><div class="bx-controls bx-has-controls-direction"><div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div></div></div>
						</div>
					</div>
				<!--//관련 상품 -->
                    <!-- 상품상세정보 -->
                    <div class="pViewTabCon" id="pViewTabCon">
                    	<div class="pViewTab" id="pViewTab">
                    		<ul class="tabList">
                                <li data-idx="1" class="on"><a href="#" class="tabBtn btn01" data-tab="1">상품정보</a></li>
                                <li data-idx="3"><a href="#" class="tabBtn btn03" data-tab="3">상품상세정보</a></li>
                                <li data-idx="2"><a href="#" class="tabBtn btn02" data-tab="2">상품관리</a></li>
                                <!-- <li data-idx="4"><a href="#" class="tabBtn btn04" data-tab="4">배송정보</a></li> -->
                                <li data-idx="4"><a href="#" class="tabBtn btn05" data-tab="4">구매후기(9708)</a></li>
                                <li data-idx="5">
                                	<a href="#" class="tabBtn btn06" data-tab="5" id="tab6">상품문의
                                	<span class="productQnaTotalDocs">(33)</span>
                                	</a>
                                </li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    
						<div class="pViewCon">
							<!--기존 컨텐츠와 동일 (일부수정 / 주석검색어 20170324) -->
							<!-- 컨텐츠 Tab -->
							<div class="wd900 tab1" style="min-height:700px">
							    <div class="pViewCon_recovery">
							        <a href="/eco/recoveryWrapper">
							            <img src="/dailychan/resources/images/shop/wbanner_packing.gif" alt="친환경 포장 안내 페이지 바로가기">
							        </a>
							    </div>
								
								<p style="text-align: center; " align="center"><img src="http://www.oasis.co.kr:8580//se/2018/11/16/se_9e2fa776-5272-43c8-a157-333ff6876bee.jpg" alt="상세정보 이미지"><img src="http://www.oasis.co.kr:8580//se/2018/11/16/se_7948cc55-e4a4-414e-abd3-8d184a968dde.jpg" alt="상세정보 이미지">&nbsp;</p>
								
								<!--고객만족도-->
								<div class="like_review ">
					    		  	<ul>
									<li style="float: left;padding-right: 30px;">
									<img src="/dailychan/resources/images/common/ico_like.png">
									<span>
										
											
					                    		99.4%
					                    	
					                    	
				                    	만족
			                    	</span>
									</li>
									<li style="display:inline-block;">
									<img src="/dailychan/resources/images/common/ico_review.png">
									<span>
										<a href="#;" onclick="$('.btn05').click();" style="color: #6ca437;">
											9,708개 보기
										</a>
									</span>
									</li>
									<li style="float:right; display:inline-block">
								    <img src="/dailychan/resources/images/common/ico_self.png">
									<span>
                                        <a href="/company/serviceRefund" style="color: #6ca437;">
                                            self환불기
                                        </a>
                                    </span>
                                    </li>
									</ul>
								</div>
								<div class="wrapMoreOasis">
									<h3>알고 사면 더욱 좋은 오아시스</h3>
									<ul class="more_oasis">
										<li>
											<div class="careWrap" style="height:380px">
												<div class="img"><img src="/dailychan/resources/images/shop/ico_view_01.png" alt=""></div>
												<div class="tit">믿고 먹을 수 있는<br>오아시스</div>
												<div class="bar"></div>
												<div class="txt">
													전국 각지의 친환경 유기농<br>
													재배 농가와 계약 재배를 통해<br>
													안전하고 신선한 제품을 철저히 관리하여<br>
													제공하고 있습니다.
												</div>
											</div>
										</li>
										<li>
											<div class="careWrap" style="height:380px">
												<div class="img"><img src="/dailychan/resources/images/shop/ico_view_02.png" alt=""></div>
												<div class="tit">신선함이 가득한<br>오아시스</div>
												<div class="bar"></div>
												<div class="txt">
													건강한 신선식품 위주로<br>
													매일 다양한 제품을 제공해 드리고<br>
													있습니다.
												</div>
											</div>
										</li>
										<li>
											<div class="careWrap" style="height:380px">
												<div class="img"><img src="/dailychan/resources/images/shop/ico_view_03.png" alt=""></div>
												<div class="tit">화학첨가물 없는<br>오아시스</div>
												<div class="bar"></div>
												<div class="txt">
													향미증진제<br>
													(화학조미료/L-글루타민산), 방부제 등<br>
													화학첨가제를 사용하지 않은 제품만을<br>
													엄선하여 건강한 제품을 제공해<br>
													드립니다.
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="wrapMoreOasis">
									<h3>오아시스가 드리는 감동</h3>
									<ul class="more_oasis">
										<li>
											<div class="careWrap">
												<div class="img"><img src="/dailychan/resources/images/shop/ico_view_04.png" alt=""></div>
												<div class="tit">가격감동</div>
												<div class="bar"></div>
												<div class="txt">
													   생산자 직거래를 통해 유통과정을 줄여<br>
													   저렴한 가격으로 감동을 전해 드립니다.
												</div>
											</div>
										</li>
										<li>
											<div class="careWrap">
												<div class="img"><img src="/dailychan/resources/images/shop/ico_view_05.png" alt=""></div>
												<div class="tit">품질감동</div>
												<div class="bar"></div>
												<div class="txt">
													친환경 유기농 농가와 계약재배를 통하여<br>
													생산과정을 철저하게 관리하며<br>
													화학첨가물 제로인 식품만을 고집하여<br>
													최고의 맛을 제공하고 있습니다.
												</div>
											</div>
										</li>
										<li>
											<div class="careWrap">
												<div class="img"><img src="/dailychan/resources/images/shop/ico_view_06.png" alt=""></div>
												<div class="tit">서비스감동</div>
												<div class="bar"></div>
												<div class="txt">
													고객님들의 건강하고 신선한 먹거리를<br>
													위해 오아시스는 5시간 이내의 빠른<br>
													배송을 24시간 쉬지 않고<br>
													제공하여 드립니다.   
												</div>
											</div>
										</li>
									</ul>
								</div>
								
							</div>
						
							<!----//  20170207 수정 : 디자인 및 구성 변경  ---->
							<div class="wd900 tab2" style="display: none;">
								<ul class="prodCareWrap">
									<li>
										<div class="careWrap">
											<div class="img"><img src="/dailychan/resources/images/shop/view_img_01.jpg" alt="" style="width:100%"></div>
											<div class="tit"><img src="/dailychan/resources/images/shop/prod_img_07.gif" alt="유전자 재조합식품 (GMO)제한관리"></div>
											<div class="txt">
												한 생물의 유용한 유전자를 다른 생물에 삽입하여 새로운  품종을 만드는 유전자 재조합 기술로 인류의 식품생산량에는 일대 혁신이 일어났지만, 인체에 의부작용을 우려하는 목소리는 사그라지지 않고 있습니다. 국내에서 시판되는 유전자 재조합 식품의 대부분을 차지하는 것은 미국에서 수입된 콩과 옥수수를 원료로 하는 것으로, 유전자 재조합 식품의 안전성에 논란을 불러 오는 것이 바로 이 유전자 재조합을 거친 콩이 알레르기를 일으킬 확률이 높다는 연구결과와 사례들입니다. <br>
												유전자 재조합 기술을 가하는 식품에 새로운 단백질이 생성되면서 이 이질적인 단백질이 우리 몸속에서 알레르기를 일으키게 되는데, 이는 특히 면연력이 약한 유아들에게는 치명적일 수도 있습니다.<br>
												오아시스는 100% 국내산 친환경 방식으로 재배된 콩과 옥수수를 원재료로 사용한 식품만을 엄격하게 선별하여 제조, 제공, 관리하고 있으므로 안심하고 드실 수 있습니다.
											</div>
										</div>
									</li>
									<li>
										<div class="careWrap">
											<div class="img"><img src="/dailychan/resources/images/shop/view_img_02.jpg" alt="" style="width:100%"></div>
											<div class="tit"><img src="/dailychan/resources/images/shop/prod_img_08.gif" alt="잔류농약 속성검사"></div>
											<div class="txt">
												오아시스에서 판매하는 모든 농산물은 농림수산부의 농산물 품질관리원에서 잔류농약 검사와 안정성 검사를 거쳐 합격인증을 받은 식품들입니다.<br>
												하지만 여러분께 더욱 안전한 먹거리를 제공하기 위해 사내 안전검사센터를 설치하여 주기적으로 다시 한번 자체검사를 실시, 인체에 유해한 농약성분이 남아있지 않은지 여부를 철저하게 검사하고 있습니다.<br>
												잔류농약 속성검사는 집파리의 머리에서 추출한 신경전달 효소와 농산물에서 채취한 잔류농약을 반응시켜 효소의 저해 정도로 잔류농약 유무의 판별 기준으로 삼으며, 이러한 검사를 통해 양성반응을 보이는 농산물은 즉시 출고가 금지됩니다.<br>
											</div>
										</div>
									</li>
									<li>
										<div class="careWrap">
											<div class="img"><img src="/dailychan/resources/images/shop/view_img_03.jpg" alt="" style="width:100%"></div>
											<div class="tit"><img src="/dailychan/resources/images/shop/prod_img_09.gif" alt="방사능 검사"></div>
											<div class="txt">
												2011년 3월 일본에서 원전사고가 있은 후 국내에서도 방사능에 대한 우려의 목소리가 높아지고 있습니다.<br>
												이에 오아시스에서는 2011년 4월부터 사내 안전검사 검사센터에서 잔류농약의 검사와 더불어 방사능 검사 또한 엄격하게 실시하고 있습니다.<br>
												오아시스의 방사능 검출 기준은 서울시 식품안전과의 기준과 같은 단위 면적당 0.5베크럴로, 다행히 현재까지 이러한 기준치를 넘는 식품은 발견되지 않고 있습니다.<br>
												앞으로도 만전을 기해 안전한 먹거리만을 전달하도록 노력하는 오아시스가 되겠습니다.   
											</div>
										</div>
									</li>
								</ul>
								<!-- // -->
								
								<div class="wrapMoreOasis2">
									<h3>알고 사면 더욱 좋은 오아시스</h3>
									<ul class="more_oasis2">
										<li>
											<div class="careWrap">
												<div class="tit">믿고 먹을 수 있는<br>오아시스</div>
												<div class="txt">
													전통있는 친환경 유기농 농가와 직거래, 계약재배를 통해 철저하게 품질을 관리하고 있습니다.<br>
													안전하고 신선한 친환경 유기농 농산물을 일반 농산물과 비교해도 될 만큼 저렴하게 제공해 드립니다.<br>
													<br>
													단, 유기농 파프리카, 애호박, 가지 등 뿌리열매 채소는 동절기 수확량 부족에 따른 가격 폭등으로 인하여 최상급 품질의 일반채소를 산지가격 그대로 유기농 채소와 함께 공급하고 있습니다. 
												</div>
											</div>
										</li>
										<li>
											<div class="careWrap">
												<div class="tit">신선함이 가득한<br>오아시스</div>
												<div class="txt">
													신선식품은 취급이 까다로워 전자상거래 업계에서 비중이 적으나 저희 오아시스는 고객님께 건강하고 신선한 제품을 제공하기 위한 고집을 지키기 위해 전체 상품중 신선 식품의 비중을 전제품의 70% 이상으로 유지하여 다양한 신선식품을 제공해 드립니다. 
												</div>
											</div>
										</li>
										<li>
											<div class="careWrap">
												<div class="tit">화학첨가물 없는<br>오아시스</div>
												<div class="txt">
													오아시스의 제품에는 일체의 화학첨가제를 사용하지 않습니다.<br>
													특히 향미증진제는 재료 본연의 맛을 내는 첨가제로서 뿐만 아니라 신선도의 구분을 감추는 첨가제로 오아시스의 제품에서는 절대 사용하지 않습니다.<br>
													화학첨가물을 일체 사용하지 않고 신선한 재료로 만들어 격이 다른 가공 식품을 제공해 드립니다. 
												</div>
											</div>
										</li>
									</ul>
								</div>
							<!--	<div class="wrapMoreOasis2">
									<h3>오아시스가 드리는 감동</h3>
									<ul class="more_oasis2">
										<li >
											<div class="careWrap" style="height:200px">
												<div class="tit">가격감동</div>
												<div class="txt">
													   산지직거래를 통해 국내 최저의 유통마진을 실현하여 동일 제품 중 국내 최저가로 제공합니다.<br/>
													   특히 제주우유, 동물복지유정란, 한우 등의 상품은 타사의 동일 상품비교 시 최대 50%가 저렴합니다.
												</div>
											</div>
										</li>
										<li>
											<div class="careWrap" style="height:200px">
												<div class="tit">품질감동</div>
												<div class="txt">
													고객님의 건강한 식탁을 위해 전통있는 유기농 농가들과 계약재배로 믿을 수 있고 신선한 친환경 유기농 농산물을 취급하며, 화학첨가물이 전혀 들어있지 않은 건강한 가공식품만을 고집합니다.
												</div>
											</div>
										</li>
										<li>
											<div class="careWrap" style="height:200px">
												<div class="tit">서비스감동</div>
												<div class="txt">
													전자상거래업계 최초로 24시간 배송시스템인 ‘오아시스 24’를 운영하여 오전 9시부터 저녁 12시까지 주문 시 5시간 이내에 배송하며, 00시부터 오전 9시까지 주문 시 오전 12시까지 고객님에게 배송해 드립니다.
												</div>
											</div>
										</li>
									</ul>
								</div>-->
							</div>
						
							<div class="wd900 tab3" style="display: none;">
								<!-- 배송안내 -->
								
									<div style="text-align:center">
	                                    <table width="900" border="0" cellspacing="0" cellpadding="0" sizset="18" style="display:inline-block">
	                                        <tbody sizset="18">
	                                            <tr sizset="18">
	                                                <td sizset="18">
	                                                    <img src="/dailychan/resources/sp_images/product/info_t01.jpg">
	                                                </td>
	                                            </tr>
	                                            <tr sizset="19">
	                                                <td sizset="19">
	                                                    <table width="900" border="0" cellspacing="0" cellpadding="0">
	                                                        <tbody> 
	                                                            <tr>
	                                                                <td height="1" bgcolor="#e1e2e3" colspan="3"></td>
	                                                            </tr>
	                                                            
	                                                                
	                                                                    <tr>
	                                                                        <td width="250" height="30" style="padding: 7px 25px 7px 25px;" bgcolor="#f7f7f7">
	                                                                            <font color="#625c56"><strong>상품명</strong></font>
	                                                                        </td>
	                                                                        <td width="1" bgcolor="#e1e2e3"></td>
	                                                                        <td style="padding-top: 10px; padding-bottom: 10px; padding-left: 15px;">
	                                                                            제주청정우유 900ml
	                                                                        </td>
	                                                                    </tr>
	                                                                    <tr>
	                                                                        <td height="1" bgcolor="#e1e2e3" colspan="3"></td>
	                                                                    </tr>
	                                                                
	                                                            
	                                                                
	                                                                    <tr>
	                                                                        <td width="250" height="30" style="padding: 7px 25px 7px 25px;" bgcolor="#f7f7f7">
	                                                                            <font color="#625c56"><strong>식품의유형</strong></font>
	                                                                        </td>
	                                                                        <td width="1" bgcolor="#e1e2e3"></td>
	                                                                        <td style="padding-top: 10px; padding-bottom: 10px; padding-left: 15px;">
	                                                                            우유
	                                                                        </td>
	                                                                    </tr>
	                                                                    <tr>
	                                                                        <td height="1" bgcolor="#e1e2e3" colspan="3"></td>
	                                                                    </tr>
	                                                                
	                                                            
	                                                                
	                                                                    <tr>
	                                                                        <td width="250" height="30" style="padding: 7px 25px 7px 25px;" bgcolor="#f7f7f7">
	                                                                            <font color="#625c56"><strong>용량/수량/크기</strong></font>
	                                                                        </td>
	                                                                        <td width="1" bgcolor="#e1e2e3"></td>
	                                                                        <td style="padding-top: 10px; padding-bottom: 10px; padding-left: 15px;">
	                                                                            900ml
	                                                                        </td>
	                                                                    </tr>
	                                                                    <tr>
	                                                                        <td height="1" bgcolor="#e1e2e3" colspan="3"></td>
	                                                                    </tr>
	                                                                
	                                                            
	                                                                
	                                                                    <tr>
	                                                                        <td width="250" height="30" style="padding: 7px 25px 7px 25px;" bgcolor="#f7f7f7">
	                                                                            <font color="#625c56"><strong>생산자 및 공급자</strong></font>
	                                                                        </td>
	                                                                        <td width="1" bgcolor="#e1e2e3"></td>
	                                                                        <td style="padding-top: 10px; padding-bottom: 10px; padding-left: 15px;">
	                                                                            제주축협 유가공장 (제주시 한림읍 한창로 1015)
	                                                                        </td>
	                                                                    </tr>
	                                                                    <tr>
	                                                                        <td height="1" bgcolor="#e1e2e3" colspan="3"></td>
	                                                                    </tr>
	                                                                
	                                                            
	                                                                
	                                                                    <tr>
	                                                                        <td width="250" height="30" style="padding: 7px 25px 7px 25px;" bgcolor="#f7f7f7">
	                                                                            <font color="#625c56"><strong>원산지</strong></font>
	                                                                        </td>
	                                                                        <td width="1" bgcolor="#e1e2e3"></td>
	                                                                        <td style="padding-top: 10px; padding-bottom: 10px; padding-left: 15px;">
	                                                                            제주도
	                                                                        </td>
	                                                                    </tr>
	                                                                    <tr>
	                                                                        <td height="1" bgcolor="#e1e2e3" colspan="3"></td>
	                                                                    </tr>
	                                                                
	                                                            
	                                                                
	                                                                    <tr>
	                                                                        <td width="250" height="30" style="padding: 7px 25px 7px 25px;" bgcolor="#f7f7f7">
	                                                                            <font color="#625c56"><strong>제조년월일/품질유지기한</strong></font>
	                                                                        </td>
	                                                                        <td width="1" bgcolor="#e1e2e3"></td>
	                                                                        <td style="padding-top: 10px; padding-bottom: 10px; padding-left: 15px;">
	                                                                            별도표기
	                                                                        </td>
	                                                                    </tr>
	                                                                    <tr>
	                                                                        <td height="1" bgcolor="#e1e2e3" colspan="3"></td>
	                                                                    </tr>
	                                                                
	                                                            
	                                                                
	                                                                    <tr>
	                                                                        <td width="250" height="30" style="padding: 7px 25px 7px 25px;" bgcolor="#f7f7f7">
	                                                                            <font color="#625c56"><strong>원재료 및 함량</strong></font>
	                                                                        </td>
	                                                                        <td width="1" bgcolor="#e1e2e3"></td>
	                                                                        <td style="padding-top: 10px; padding-bottom: 10px; padding-left: 15px;">
	                                                                            1등급원유 100%(제주특별자치도 목장산)
	                                                                        </td>
	                                                                    </tr>
	                                                                    <tr>
	                                                                        <td height="1" bgcolor="#e1e2e3" colspan="3"></td>
	                                                                    </tr>
	                                                                
	                                                            
	                                                                
	                                                                    <tr>
	                                                                        <td width="250" height="30" style="padding: 7px 25px 7px 25px;" bgcolor="#f7f7f7">
	                                                                            <font color="#625c56"><strong>영양성분</strong></font>
	                                                                        </td>
	                                                                        <td width="1" bgcolor="#e1e2e3"></td>
	                                                                        <td style="padding-top: 10px; padding-bottom: 10px; padding-left: 15px;">
	                                                                            1회 제공량 : 1컵 200ml / 약 5회 제공량 900ml<br>열량 134kcal<br>탄수화물 10.2g(4%)<br>당류 5g<br>단백질 6.4g(10%)<br>지방 7.4g(16%)<br>포화지방4.4g(30%)<br>트랜스지방0g(0%)<br>콜레스테롤18mg(6%)<br>나트륨86.6mg(6%)<br>칼슘210mg(30%)
	                                                                        </td>
	                                                                    </tr>
	                                                                    <tr>
	                                                                        <td height="1" bgcolor="#e1e2e3" colspan="3"></td>
	                                                                    </tr>
	                                                                
	                                                            
	                                                                
	                                                            
	                                                                
	                                                            
	                                                                
	                                                            
	                                                                
	                                                            
	                                                                
	                                                                    <tr>
	                                                                        <td width="250" height="30" style="padding: 7px 25px 7px 25px;" bgcolor="#f7f7f7">
	                                                                            <font color="#625c56"><strong>보관/취급방법</strong></font>
	                                                                        </td>
	                                                                        <td width="1" bgcolor="#e1e2e3"></td>
	                                                                        <td style="padding-top: 10px; padding-bottom: 10px; padding-left: 15px;">
	                                                                            냉장보관
	                                                                        </td>
	                                                                    </tr>
	                                                                    <tr>
	                                                                        <td height="1" bgcolor="#e1e2e3" colspan="3"></td>
	                                                                    </tr>
	                                                                
	                                                            
	                                                                
	                                                                    <tr>
	                                                                        <td width="250" height="30" style="padding: 7px 25px 7px 25px;" bgcolor="#f7f7f7">
	                                                                            <font color="#625c56"><strong>소비자상담문의</strong></font>
	                                                                        </td>
	                                                                        <td width="1" bgcolor="#e1e2e3"></td>
	                                                                        <td style="padding-top: 10px; padding-bottom: 10px; padding-left: 15px;">
	                                                                            1577-0098
	                                                                        </td>
	                                                                    </tr>
	                                                                    <tr>
	                                                                        <td height="1" bgcolor="#e1e2e3" colspan="3"></td>
	                                                                    </tr>
	                                                                
	                                                            
	                                                        </tbody>
	                                                    </table>
	                                                </td>
	                                            </tr>
	                                        </tbody>
	                                    </table>
                                    </div>
                                
                                
                                <div style="text-align:center; margin-top:20px">
                                    <img src="http://www.oasis.co.kr:8580/product/2646/notice/notice2646_503f072c-586e-4cf5-872a-e8d90957a31c.png" alt="">
                                </div>
                            
							</div>
							
						  <!-- 
							<div class="wd900 tab4"  style="display: none;">
                                <div class="delivery_step_area2">
                                    <table cellpadding="0" cellspacing="0" border="0">
                                        <colgroup>
                                            <col width="220px" />
                                            <col width="*" />
                                        </colgroup>
                                        <tr>
                                            <td class="guide_1">
                                                <h1>OASIS 24</h1>
                                            </td>
                                            <td>
                                                <span class="tit">24시간을 밝히는 오아시스 배송(업계최초 업계유일)</span>
                                                <span class="desc">
                                                    <strong>오아시스 주간배송</strong><br/>
                                                    <p></p><span style="color:#333333;">
                                                    ▶ 오아시스 주간 배송은 주문 후 3시간 이내 배송<br/>
                                                    ▶ 오전 9시 부터 오후 8시까지 주문하시면 지역매장에서 배송해드립니다.<br/>
                                                    ▶ 오후 8시 이후 주문하시면 다음날 오전중 배송해 드립니다.<br/>
													▶ 지역매장에서 알뜰포장 방식으로 배송해드립니다. (과포장X)</span>
                                                   <p style="height:10px;"></p>
                                                    <span style="color:#333333;">오아시스 배송가능 지역은 서울 강남구, 송파구, 강동구, 광진구, 성남분당구, 용인수지구,위례전지역입니다.</span><br/>
                                                    타 지역은 일반 택배 배송으로 진행됩니다. 빠른시일 이내에 서비스를 확대하도록 하겠습니다.<br/>
                                                   <p></p><br/>
												     <strong>오아시스 새벽배송</strong><br/>
                                                    <p></p><span style="color:#333333;">
                                                    ▶ 오후 8시까지 주문하시면 다음날 새벽 배송해 드립니다.<br/>
                                                    ▶ 서울, 경기 전지역 서비스 확대 실시 예정 (6월 25일 부터 )<br/>
                                                    ▶ 공동현관 출입방법 및 연락방법 필수, 미입력시 새벽배송 불가</span>
                                                <p style="height:10px;"></p>
                                                    <span style="color:#333333;">공동현관 출입방법: 비밀번호 입력, 자유출입, 기타 방법 작성 중 선택<br/>
                                                  연락방법: 전화 또는 문자 선택<br/></span>
                                                   <p></p>
                                                    <strong>상온/냉동 및 산지직송 상품</strong>은 일부 상품에 따라 일반 택배처리 될 수 있습니다.<br/>
                                                    <br/>
                                                </span>
                                                <img class="arrow" src="/images/shop/ico_arrow.gif" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <span class="line"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="guide_2">
                                                <h1>일반 택배</h1>
                                            </td>
                                            <td>
                                                <span class="tit">오아시스24 배송이외 지역은 택배 발송</span>
                                                <span class="desc">
                                                    오아시스24 배송이 불가능한 지역은 저녁6시까지 주문 결제상품을 당일 발송합니다.<br/>
                                                    주말에는 제품의 신선도를 위해 배송을 하지 않습니다.<br/>
                                                    별도 배송 요청이 있을 경우 별도 요청건을 우선 배송합니다.<br/>
                                                    명절, 공휴일 등 택배사의 사정에 따라 다소 지연될 수 있습니다.<br/>
                                                    <br/><br/>
                                                </span>
                                                <img class="arrow" src="/images/shop/ico_arrow.gif" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <span class="line"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="guide_3">
                                                <h1>산지직송 배송</h1>
                                            </td>
                                            <td>
                                                <span class="tit">제품수령은 주문완료 후 1~2일 소요</span>
                                                <span class="desc">
                                                    산지에서 직접배송하며, 생산지의 배송 정책에 따라 다르게 부과됩니다.<br/>
                                                    <br/><br/>
                                                </span>
                                                <img class="arrow" src="/images/shop/ico_arrow.gif" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <span class="line"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="guide_4">
                                                <h1>배송비</h1>
                                            </td>
                                            <td>
                                                <span class="tit">3만원 이상 주문시 배송비 무료!</span>
                                                <span class="desc">
                                                    주문금액이 3만원 미만일 시 배송비 3,000원<br/>
                                                    산지직송 배송은 배송 정책에 따라 다르게 부과 됩니다.<br/>
                                                    <br/><br/>
                                                </span>
                                                <img class="arrow" src="/images/shop/ico_arrow.gif" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div> -->
						
						
					<div class="wd900 tab4" style="display: none;">
                        <div class="commentWrap">
                            <p class="gTxt">
                              <img src="/dailychan/resources/images/shop/prod_txt_01.jpg" alt="배송완료 상품은 주문일로 부터 100일 이내에 작성이 가능합니다. 일반평 100포인트/ 포토평 300포인트 오픈 프로모션 기간동안 지급 됩니다.">
                           </p>

                           <!--구매후기-->
                           <div id="commentList" style="min-height:700px">







<script type="text/javascript">
$(document).ready(function() {
	$(".cmMoreBtn").click(function() {

        var more = $(this).parent().parent().next();
        if (more.css("display") == "none") {
            $(this).parent().parent().parent().find(".comMore").hide();
            more.show();
        } else {
            $(this).parent().parent().parent().find(".comMore").hide();
            more.hide();
        }
        
    })
    
    $(".cmMoreCloseBtn").click(function() {
        $(this).parent().parent().removeClass("cmMoreLi");
        if ($(this).attr("id") == "moreClose1") {
         $(this).parent().parent().addClass("cmImgLi");
         }
    })
});
</script>
 <div class="cmTitWrap">
   <a href="#" class="cmTit cmTit_on" id="all" onclick="paging('2646',1,1); return false;">전체 <span>(9708)</span></a>
   <a href="#" class="cmTit2" id="photo" onclick="paging('2646',3,1); return false;">포토 구매후기<span>(4890)</span></a>
   
   <div class="clear"></div>
</div>
 <div>
		            </div><div>
		            </div><div>
		            </div><div>
		            </div><div>
		            </div><table class="tableCom mgT10">
    <colgroup>
        <col width="100">
        <col width="100">
        <col width="*">
        <col width="100">
        <col width="125">
    </colgroup>
    <thead>
        <tr>
            <th>번호</th>
            <th>고객만족도</th>
            <th>구매후기</th>
            <th>작성자</th>
            <th>작성일</th>
        </tr>
    </thead>
    <tbody>
       
        
        
        
            
                <tr class="notice list" style="font-weight:bold">
                    <td class="biTit"><p class="noticeBg">공지</p></td>
                    <td></td>
                    <td class="tL1"><a href="#" class="cmMoreBtn" onclick="; return false;">구매후기를 남겨 주시면 포인트가 적립됩니다.<br> 베스트후기로 선정되시면 10,000포인트를 <br> 적립해 드립니다.</a></td>
                    <td>관리자</td>
                    <td>2019-04-10</td>
                </tr>
                <tr class="comMore">
                    <td></td>
                    <td colspan="4" style="overflow-x:hidden">
                        <p><span style="color: rgb(102, 102, 102); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 14px;">"소중한 구매후기 감사합니다."&nbsp;&nbsp;</span></p><div class="bodCont" id="vDescription" style="margin: 0px; padding: 10px 0px; border: 0px; min-height: 200px; line-height: 19.2px;"><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">&nbsp;</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">우리 오아시스는&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">고객님의</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">소중한 사용후기를&nbsp;</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">토대로 더욱 더 좋은 상품과 서비스로 발전할 수</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">있도록&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">최선을 다하겠습니다.</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">&nbsp;</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">3월 베스트 후기 당첨자 30분은 아래와 같습니다.&nbsp;</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">매달 베스트</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">후기를 선정하여 다음달&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">10일에 발표될&nbsp;</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">예정입니다.</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">감사합니다.&nbsp;</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;">&nbsp;</p><div align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial;"><br></div><span style="color: rgb(102, 102, 102); font-family: 나눔고딕, NanumGothic, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: 14px;"><div align="left">2019년 3월 베스트 후기 당첨자 (총 30명)<br><br></div></span></div><span style="font-size: 10pt;">islimyoo***</span><div><span style="font-size: 10pt;">jinkyung1***</span></div><div><span style="font-size: 10pt;">25353***</span></div><div><span style="font-size: 10pt;">jhpark1***</span></div><div><span style="font-size: 10pt;">ame***</span></div><div><span style="font-size: 10pt;">smom***</span></div><div><span style="font-size: 10pt;">hiso***</span></div><div><span style="font-size: 10pt;">4030***</span></div><div><span style="font-size: 10pt;">ata***</span></div><div><span style="font-size: 10pt;">101387***</span></div><div><span style="font-size: 10pt;">6299***</span></div><div><span style="font-size: 10pt;">hyeoni***</span></div><div><span style="font-size: 10pt;">hiso***</span></div><div><span style="font-size: 10pt;">yeseu***</span></div><div><span style="font-size: 10pt;">skhye***</span></div><div><span style="font-size: 10pt;">han***</span></div><div><span style="font-size: 10pt;">85486***</span></div><div><span style="font-size: 10pt;">102a***</span></div><div><span style="font-size: 10pt;">jmh9***</span></div><div><span style="font-size: 10pt;">joann***</span></div><div><span style="font-size: 10pt;">eun0***</span></div><div><span style="font-size: 10pt;">redgisel***</span></div><div><span style="font-size: 10pt;">happyb***</span></div><div><span style="font-size: 10pt;">unyj***</span></div><div><span style="font-size: 10pt;">1041076***</span></div><div><span style="font-size: 10pt;">125093***</span></div><div><span style="font-size: 10pt;">5601***</span></div><div><span style="font-size: 10pt;">anne0***</span></div><div><span style="font-size: 10pt;">road9***</span></div><span style="font-size: 10pt;">ilji***</span><span style="font-size: 10pt;">​</span><div class="bodCont" id="vDescription" style="margin: 0px; padding: 10px 0px; border: 0px; min-height: 200px; line-height: 19.2px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;"><br>고객정보 보호를 위해 고객님 아이디 중 일부를&nbsp;</span><p>&nbsp;</p><p align="left" style="border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">마스킹&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">처리하였습니다.</span></p><p align="left" style="border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">&nbsp;</span></p><p align="left" style="border: 0px;">&nbsp;</p><div align="left"><span style="color: rgb(102, 102, 102); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 14px;">이벤트에 참여해주신 모든 분들께 감사 인사드립니다.</span></div><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;"><div align="left"><span style="margin: 0px; padding: 0px; border: 0px;">매월 진행되는 리뷰 이벤트에 많은 참여 부탁드립니다.</span><span style="color: rgb(68, 68, 68); font-size: 12px; margin: 0px; padding: 0px; border: 0px;">&nbsp;</span></div></span><p>&nbsp;</p></div><p><span style="color: rgb(102, 102, 102); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 14px; margin: 0px; padding: 0px; border: 0px;">감사합니다. ​</span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(68, 68, 68); margin: 0px; padding: 0px; border: 0px;">&nbsp;</span></p>
                    </td>
                </tr>
            
            
            	
            	
		        <tr>
		                <td>9708</td>
		                <td>
		                <div class="cmStarBg">
		                
		                    
		                    
		                    
		                    
		                    <p class="starWd5"></p>
		                
		                <span><em>5</em>/5</span>
		                </div> <!--별0개 : starWd0 / 별1개 : starWd01/ 별2개 : starWd2 / 별3개 : starWd3 / 별4개 : starWd4 / 별5개 : starWd5 / -->
		                </td>
		                <td class="tL1">
		                    <a href="#" class="cmMoreBtn" onclick="; return false;">
		                        우유 고소해요 저렴하고 맛있어요 아기도 잘먹네요
		                        
		                        <!--포토 구매후기일 경우 추가-->
		                        
		                        <img src="/dailychan/resources/images/shop/prod_icon_03.png" alt="포토 구매후기" class="icon_photoCom">
		                        
		                        <!--//포토 구매후기일 경우 추가-->
		                    </a>
		                </td> 
		                <td>babb****</td>
		                <td>2019.04.22</td>
		            </tr>
		            
		             <tr class="comMore" style="display:none;">
		                <td colspan="5" class="tL0">
		                	<div class="tL0">
			                    우유 고소해요 저렴하고 맛있어요 아기도 잘먹네요
			                    
			                    <div class="pcImgWrap mgT12">
			                        <img src="http://www.oasis.co.kr:8580/comment/2019/4/22/comment_19233_be30b0a8-9943-4515-ac6b-924476e42811.jpg " alt="" style="max-width:650px">
			                    </div>
			                    
			                    
		                    </div>
		                    
		                </td>
		            </tr>
		            
		        
            	
            	
		        <tr>
		                <td>9707</td>
		                <td>
		                <div class="cmStarBg">
		                
		                    
		                    
		                    
		                    
		                    <p class="starWd5"></p>
		                
		                <span><em>5</em>/5</span>
		                </div> <!--별0개 : starWd0 / 별1개 : starWd01/ 별2개 : starWd2 / 별3개 : starWd3 / 별4개 : starWd4 / 별5개 : starWd5 / -->
		                </td>
		                <td class="tL1">
		                    <a href="#" class="cmMoreBtn" onclick="; return false;">
		                        제주청정우유라고 하니 좋은것 같아서 사서 마셨어요. 고...
		                        
		                        <!--포토 구매후기일 경우 추가-->
		                        
		                        <!--//포토 구매후기일 경우 추가-->
		                    </a>
		                </td> 
		                <td>pur****</td>
		                <td>2019.04.22</td>
		            </tr>
		            
		             <tr class="comMore" style="display:none;">
		                <td colspan="5" class="tL0">
		                	<div class="tL0">
			                    제주청정우유라고 하니 좋은것 같아서 사서 마셨어요. 고소하고 맛있는것 같아요.
			                    
			                    
		                    </div>
		                    
		                </td>
		            </tr>
		            
		        
            	
            	
		        <tr>
		                <td>9706</td>
		                <td>
		                <div class="cmStarBg">
		                
		                    
		                    
		                    
		                    
		                    <p class="starWd5"></p>
		                
		                <span><em>5</em>/5</span>
		                </div> <!--별0개 : starWd0 / 별1개 : starWd01/ 별2개 : starWd2 / 별3개 : starWd3 / 별4개 : starWd4 / 별5개 : starWd5 / -->
		                </td>
		                <td class="tL1">
		                    <a href="#" class="cmMoreBtn" onclick="; return false;">
		                        맛있고 좋네요! 가격도 괜찮구요~ 담에 또 사먹을게요
		                        
		                        <!--포토 구매후기일 경우 추가-->
		                        
		                        <!--//포토 구매후기일 경우 추가-->
		                    </a>
		                </td> 
		                <td>pur****</td>
		                <td>2019.04.22</td>
		            </tr>
		            
		             <tr class="comMore" style="display:none;">
		                <td colspan="5" class="tL0">
		                	<div class="tL0">
			                    맛있고 좋네요! 가격도 괜찮구요~ 담에 또 사먹을게요
			                    
			                    
		                    </div>
		                    
		                </td>
		            </tr>
		            
		        
            	
            	
		        <tr>
		                <td>9705</td>
		                <td>
		                <div class="cmStarBg">
		                
		                    
		                    
		                    
		                    
		                    <p class="starWd5"></p>
		                
		                <span><em>5</em>/5</span>
		                </div> <!--별0개 : starWd0 / 별1개 : starWd01/ 별2개 : starWd2 / 별3개 : starWd3 / 별4개 : starWd4 / 별5개 : starWd5 / -->
		                </td>
		                <td class="tL1">
		                    <a href="#" class="cmMoreBtn" onclick="; return false;">
		                        정말 최고입니다 이 가격 이 퀄리티 절대 없죠 
		                        
		                        <!--포토 구매후기일 경우 추가-->
		                        
		                        <!--//포토 구매후기일 경우 추가-->
		                    </a>
		                </td> 
		                <td>spee****</td>
		                <td>2019.04.22</td>
		            </tr>
		            
		             <tr class="comMore" style="display:none;">
		                <td colspan="5" class="tL0">
		                	<div class="tL0">
			                    정말 최고입니다 이 가격 이 퀄리티 절대 없죠 
			                    
			                    
		                    </div>
		                    
		                </td>
		            </tr>
		            
		        
            	
            	
		        <tr>
		                <td>9704</td>
		                <td>
		                <div class="cmStarBg">
		                
		                    
		                    
		                    
		                    
		                    <p class="starWd5"></p>
		                
		                <span><em>5</em>/5</span>
		                </div> <!--별0개 : starWd0 / 별1개 : starWd01/ 별2개 : starWd2 / 별3개 : starWd3 / 별4개 : starWd4 / 별5개 : starWd5 / -->
		                </td>
		                <td class="tL1">
		                    <a href="#" class="cmMoreBtn" onclick="; return false;">
		                        제주청정우유 신선하고 맛도 좋아 자주 구매 합니다
		                        
		                        <!--포토 구매후기일 경우 추가-->
		                        
		                        <img src="/dailychan/resources/images/shop/prod_icon_03.png" alt="포토 구매후기" class="icon_photoCom">
		                        
		                        <!--//포토 구매후기일 경우 추가-->
		                    </a>
		                </td> 
		                <td>nina****</td>
		                <td>2019.04.22</td>
		            </tr>
		            
		             <tr class="comMore" style="display:none;">
		                <td colspan="5" class="tL0">
		                	<div class="tL0">
			                    제주청정우유 신선하고 맛도 좋아 자주 구매 합니다
			                    
			                    <div class="pcImgWrap mgT12">
			                        <img src="http://www.oasis.co.kr:8580/comment/2019/4/22/comment_17520_788e5e1a-511c-4c99-a91a-6a98e8afa1c8.jpg " alt="" style="max-width:650px">
			                    </div>
			                    
			                    
		                    </div>
		                    
		                </td>
		            </tr>
		            
		        
        
        
       
    </tbody>
</table>     

<!--페이징-->
<div class="pagingWrap productCommentPaging" style="transform:translate3d(0px, 0px, 0px)">
	
        
	    
	        <a class="on" onclick="paging('2646','1','1'); return false;">1</a>
	    
	        <a onclick="paging('2646','1','2'); return false;">2</a>
	    
	        <a onclick="paging('2646','1','3'); return false;">3</a>
	    
	        <a onclick="paging('2646','1','4'); return false;">4</a>
	    
	        <a onclick="paging('2646','1','5'); return false;">5</a>
	    
	        <a onclick="paging('2646','1','6'); return false;">6</a>
	    
	        <a onclick="paging('2646','1','7'); return false;">7</a>
	    
	        <a onclick="paging('2646','1','8'); return false;">8</a>
	    
	        <a onclick="paging('2646','1','9'); return false;">9</a>
	    
	        <a onclick="paging('2646','1','10'); return false;">10</a>
	    
	    
	    	<a onclick="paging('2646','1','11'); return false;" class="pgBtn_next" style="cursor:pointer">
	    		<span>게시판의 다음 페이지로 가기</span>
	    	</a>
	    	<a onclick="paging('2646','1','1942'); return false;" class="pgBtn_last" style="cursor:pointer">
	    		<span>게시판의 끝 페이지로 가기</span>
	    	</a>
	    
	
</div>
<input type="hidden" id="premiumPage" value="">
<input type="hidden" id="commentPage" value="1">
<input type="hidden" id="page" value="1"></div>
                           <!--//구매후기-->
                        </div>
                     </div>
							
							<div class="wd900 tab5" style="display: none;">
                                <div class="commentWrap">

                                    <!--상품문의-->
                                    <div id="qnaList">
                                        <div class="cmTitWrap">

                                            <div class="cmTit3">
                                                상품문의
                                            </div>
                                            
                                            
                                        </div>

                                        <!-- txt : 상품문의 안내사항 -->
                                        <div class="txt_cm_area" style="margin-top:10px;">
                                            <div>
                                                - 가격, 판매자, 교환/환불 및 배송 등에 해당 상품 자체와 관련없는 문의는 고객센터 내 1:1 문의하기를 이용하세요.<br>
                                                - "해당 상품 자체" 와 관계없는 글, 양도, 광고성, 욕설, 비방, 도배 등의 글은 예고없이 노출제한, 삭제 등의 조치가 취해질 수 있습니다.<br>
                                                <!-- - 문의 하신 상담내용은 고객님의 메일로도 확인하실 수 있습니다.<br /> -->
                                                - 고객센터 답변가능시간 : 오전 9시 30분 ~오후 6시 30분(토/일/공휴일 제외)
                                            </div>
                                        </div>
                                        <table class="tableCom mgT10">
                                            <colgroup>
                                                <col width="100">
                                                <col width="100">
                                                <col width="*">
                                                <col width="100">
                                                <col width="125">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th>문의유형</th>
                                                    <th>답변상태</th>
                                                    <th>제목</th>
                                                    <th>문의자</th>
                                                    <th>등록일</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            
                                                
                                                
                                                    
                                                        
                                                        
                                                        <tr>
                                                            <td>
                                                                
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    상품
                                                                
                                                            </td>
                                                            <td>
                                                                
                                                                    <span class="reply_end">[답변완료]</span>
                                                                    
                                                                
                                                            </td>
                                                            <td class="tL1">
                                                                
                                                                    
                                                                    
                                                                        
                                                                            
                                                                                <a href="#" onclick="return false;">
                                                                                    무항생제우유 맞나요?
                                                                                </a>
                                                                            
                                                                            
                                                                        
                                                                    
                                                                
                                                                
                                                                
                                                            </td>
                                                            <td>purin1***</td>
                                                            <td>2019.04.21</td>
                                                        </tr>
                                                        
                                                            <tr class="comMore">
                                                                <td colspan="2">
                                                                    &nbsp;
                                                                </td>
                                                                <td colspan="3" class="tL1">
                                                                    고객님 안녕하세요. 빛이되는 오아시스입니다.<br><br>문의하신 상품은 일반 제주청정우유입니다.<br>감사합니다.
                                                                    
                                                                    <p class="txt_qna_end">
                                                                        상품담당자 답변 2019.04.22
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                        
                                                    
                                                        
                                                        
                                                        <tr>
                                                            <td>
                                                                
                                                                    
                                                                    
                                                                    
                                                                    기타
                                                                    
                                                                
                                                            </td>
                                                            <td>
                                                                
                                                                    <span class="reply_end">[답변완료]</span>
                                                                    
                                                                
                                                            </td>
                                                            <td class="tL1">
                                                                
                                                                    
                                                                    
                                                                        
                                                                            
                                                                                <a href="#" onclick="return false;">
                                                                                    요거트를 만들었는데  일반우유와 달리 만들어지지 않아서요  저지방우유처럼  흐물거리게 되었어요   저지방우유는 아니지요??
                                                                                </a>
                                                                            
                                                                            
                                                                        
                                                                    
                                                                
                                                                
                                                                
                                                            </td>
                                                            <td>throb***</td>
                                                            <td>2019.04.19</td>
                                                        </tr>
                                                        
                                                            <tr class="comMore">
                                                                <td colspan="2">
                                                                    &nbsp;
                                                                </td>
                                                                <td colspan="3" class="tL1">
                                                                    고객님 안녕하세요. 빛이되는 오아시스입니다.<br><br>문의하신 상품은 저지방우유는 아닙니다.<br>감사합니다.
                                                                    
                                                                    <p class="txt_qna_end">
                                                                        상품담당자 답변 2019.04.22
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                        
                                                    
                                                        
                                                        
                                                        <tr>
                                                            <td>
                                                                
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    상품
                                                                
                                                            </td>
                                                            <td>
                                                                
                                                                    <span class="reply_end">[답변완료]</span>
                                                                    
                                                                
                                                            </td>
                                                            <td class="tL1">
                                                                
                                                                    
                                                                    
                                                                        
                                                                            
                                                                                <a href="#" onclick="return false;">
                                                                                    저도 궁긍해요<br>4월정기세일 특가면 언제까지 인가요?
                                                                                </a>
                                                                            
                                                                            
                                                                        
                                                                    
                                                                
                                                                
                                                                
                                                            </td>
                                                            <td>34721***</td>
                                                            <td>2019.04.18</td>
                                                        </tr>
                                                        
                                                            <tr class="comMore">
                                                                <td colspan="2">
                                                                    &nbsp;
                                                                </td>
                                                                <td colspan="3" class="tL1">
                                                                    고객님 안녕하세요. 빛이되는 오아시스입니다.<br><br>문의하신 상품의 행사기간은 아직 <br>미정입니다.<br>정확한 답변을 못해 드려 죄송합니다.<br>감사합니다.
                                                                    
                                                                    <p class="txt_qna_end">
                                                                        상품담당자 답변 2019.04.19
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                        
                                                    
                                                        
                                                        
                                                        <tr>
                                                            <td>
                                                                
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    상품
                                                                
                                                            </td>
                                                            <td>
                                                                
                                                                    <span class="reply_end">[답변완료]</span>
                                                                    
                                                                
                                                            </td>
                                                            <td class="tL1">
                                                                
                                                                    
                                                                    
                                                                        
                                                                            
                                                                                <a href="#" onclick="return false;">
                                                                                    저지방도 있었으면 좋겠어요 ㅜㅜ
                                                                                </a>
                                                                            
                                                                            
                                                                        
                                                                    
                                                                
                                                                
                                                                
                                                            </td>
                                                            <td>rkg***</td>
                                                            <td>2019.04.18</td>
                                                        </tr>
                                                        
                                                            <tr class="comMore">
                                                                <td colspan="2">
                                                                    &nbsp;
                                                                </td>
                                                                <td colspan="3" class="tL1">
                                                                    고객님 안녕하세요. 빛이된느 오아시스입니다.<br><br>고객님의 좋은의견 본사담당MD분께 <br>전달하도록 하겠습니다.<br>감사합니다.
                                                                    
                                                                    <p class="txt_qna_end">
                                                                        상품담당자 답변 2019.04.18
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                        
                                                    
                                                        
                                                        
                                                        <tr>
                                                            <td>
                                                                
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    상품
                                                                
                                                            </td>
                                                            <td>
                                                                
                                                                    <span class="reply_end">[답변완료]</span>
                                                                    
                                                                
                                                            </td>
                                                            <td class="tL1">
                                                                
                                                                    
                                                                    
                                                                        
                                                                            
                                                                                <a href="#" onclick="return false;">
                                                                                    4월정기세일이라함은 4월말까지 내내 이가격인건가요?
                                                                                </a>
                                                                            
                                                                            
                                                                        
                                                                    
                                                                
                                                                
                                                                
                                                            </td>
                                                            <td>tndk***</td>
                                                            <td>2019.04.18</td>
                                                        </tr>
                                                        
                                                            <tr class="comMore">
                                                                <td colspan="2">
                                                                    &nbsp;
                                                                </td>
                                                                <td colspan="3" class="tL1">
                                                                    고객님 안녕하세요. 빛이되는 오아시스입니다.<br><br>문의하신 상품의 행사기간은 아직 <br>미정입니다.<br>정확한 답변을 못해 드려 죄송합니다.<br>감사합니다.
                                                                    
                                                                    <p class="txt_qna_end">
                                                                        상품담당자 답변 2019.04.19
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                        
                                                    
                                                
                                            
                                            </tbody>
                                        </table>
                                        <script type="text/javascript">
                                           $(document).ready(function(){
                                              $('.pViewTabCon .tableCom .tL1 a').click(function(){
                                                 $(this).parent().parent().next().toggle();
                                              });
                                           });
                                        </script>
                                        
                                        <!-- 페이징 -->
                                        <div class="pagingWrap">
                                            
                                                
                                                
                                                    <a href="#" class="on" onclick="productQnaPaging('2646','all','1'); return false;">1</a>
                                                
                                                    <a href="#" onclick="productQnaPaging('2646','all','2'); return false;">2</a>
                                                
                                                    <a href="#" onclick="productQnaPaging('2646','all','3'); return false;">3</a>
                                                
                                                    <a href="#" onclick="productQnaPaging('2646','all','4'); return false;">4</a>
                                                
                                                    <a href="#" onclick="productQnaPaging('2646','all','5'); return false;">5</a>
                                                
                                                    <a href="#" onclick="productQnaPaging('2646','all','6'); return false;">6</a>
                                                
                                                    <a href="#" onclick="productQnaPaging('2646','all','7'); return false;">7</a>
                                                
                                                
                                                    <a onclick="productQnaPaging('2646','all','8'); return false;" class="pgBtn_next" style="cursor:pointer">
                                                        <span>게시판의 다음페이지로 가기</span>
                                                    </a>
                                                    <a onclick="productQnaPaging('2646','all',''); return false;" class="pgBtn_last" style="cursor:pointer">
                                                        <span>게시판의 마지막페이지로 가기</span>
                                                    </a>
                                                
                                            
                                            <input type="hidden" id="productQnaPage" value="1">
                                            <input type="hidden" id="productQnaGbn" value="all">
                                        </div>
                                        <!--// 페이징 -->

                                    </div>
                                   

                                </div>
                            </div>
                             <!--//상품문의-->
							<!-- //컨텐츠 Tab -->
						</div>
					</div>
					<!-- //상품 정보 -->
				
				</div>
				<!-- //내용 입니다 -->
			</div>
			<!-- //오른쪽 영역 -->
		</div>
	</div>
	<!-- //컨텐츠 -->
	
    <div class="oasisLayerPop3" style="height: 700px; display: none;">
    	<form id="commentForm" action="/myPage/writeComment" enctype="multipart/form-data" method="post">
        <div class="oasisLayerPop_in">
            <div class="oasisLPtit" style="position:relative;">
                <strong>구매후기 작성</strong>
                <div style="position:absolute; width: 27px;height: 27px;top: 27px;right: 26px;">
                        <a href="#" onclick="closeCommentPop(); return false;" class="popOasisDeliveryClose"></a>
                    </div>
            </div>

            <div class="oasisLPconWrap" style="height:600px">
                <div class="oasisLPcon1">
                    <div class="productImg">
                        <span><img src="http://www.oasis.co.kr:8580/product/2646/thumb/thumb_2646d79c1e73-5983-4d66-98a2-6ff8a0b32f15.jpg" alt="상품이미지"></span>
                        <strong id="title">&lt;4월 정기Sale특가&gt;제주청정우유 900ml</strong>
                    </div>
                    <div class="satisfy">
                        <div class="wrigtStarBg">
                           <a href="#" class="on" id="star1" onclick="starRating(1); return false;"></a>
                           <a href="#" class="on" id="star2" onclick="starRating(2); return false;"></a>
                           <a href="#" class="on" id="star3" onclick="starRating(3); return false;"></a>
                           <a href="#" class="on" id="star4" onclick="starRating(4); return false;"></a>
                           <a href="#" class="on" id="star5" onclick="starRating(5); return false;"></a>
                           <strong><em id="rate">5.0</em>/5</strong>
                           <div class="clear"></div>
                        </div>
                        <p class="starBg01" style="display:none">아쉽네요!!</p> <!--별1개 : starBg01/ 별2개 : starBg2 / 별3개 : starBg3 / 별4개 : starBg4 / 별5개 : starBg5  -->
                        <p class="starBg02" style="display:none">그냥그래요!</p>
                        <p class="starBg03" style="display:none">보통이예요!</p>
                        <p class="starBg04" style="display:none">좋아요!</p>
                        <p class="starBg05" style="display:">최고예요!</p>
                    </div>
                </div>
                
                 <div class="oasisLPcon2">
                    <table class="tableComWrite">
                        <colgroup>
                            <col width="110">
                            <col width="*">
                        </colgroup>
                        <tbody>
                            <tr style="display:none">
                                <th>만족도</th>
                                <td>
                                    <ul>
                                        <li class="pcIcon1">
                                            <strong>배송</strong>
                                            <div class="selboxWrap" style="width:150px;">
                                                <a href="#" class="now" id="deliveryText">빨라요</a>
                                                <ul class="selboxOpen">
                                                    <li><a href="#" onclick="setDeliveryRate('SLOW','느려요'); return false;">느려요</a></li>
                                                    <li><a href="#" onclick="setDeliveryRate('SOSO','괜찮아요'); return false;">괜찮아요</a></li>
                                                    <li><a href="#" onclick="setDeliveryRate('FAST','빨라요'); return false;">빨라요</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        
                                        <li class="pcIcon2">
                                            <strong>가격</strong>
                                            <div class="selboxWrap" style="width:150px;">
                                                <a href="#" class="now" id="priceText">싸게 샀어요</a>
                                                <ul class="selboxOpen">
                                                    <li><a href="#" onclick="setPriceRate('HIGH','안 싸네요'); return false;">안 싸네요</a></li>
                                                    <li><a href="#" onclick="setPriceRate('SOSO','괜찮아요'); return false;">괜찮아요</a></li>
                                                    <li><a href="#" onclick="setPriceRate('LOW', '싸게 샀어요'); return false;">싸게 샀어요</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clear"></div>
                                </td>
                            </tr>
                            <tr>
                                <th>구매후기</th>
                                <td>
                                    <div class="cmTxtInput">
                                    <textarea class="cmMtinput" placeholder="해당상품의 리뷰와 무관한 내용이나 동일 문자의 반복 등 부적합한
내용일 때는 통보없이 삭제 및 지급된 포인트가 회수될 수 있습니다.

내용을 입력해 주세요.
(20자 이상 3,000자 미만)" id="commentContent" name="commentContent" style="resize:none;">                                    </textarea>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>사진 등록</th>
                                <td>
                                    <div class="cmAddPhotoWrap">
                                        <input type="text" readonly="readonly" id="photoName"> <a href="#" class="cmAddPhotoBtn" onclick="imageUpload(); return false;">사진찾기</a> 
                                     </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <div class="comWriteBanner">
                        <!--  <img src="/images/shop/prod_banner_02.jpg" alt="오아시스 구매후기 오픈 프로모션!" /> -->
                    </div>
                        
                </div>
                
                <div class="oasisLPcon3">
                     <a href="#" onclick="commentAddCheck(); return false;">등록하기</a>
                     <a href="#" class="oasisMapClose2" onclick="closeCommentPop(); return false;">취소하기</a>
                </div>
             </div>
                
            <div class="comWriteClose">
                <a href="#" class="oasisMapClose2" onclick="closeCommentPop(); return false;"><span>닫기</span></a>
            </div>
            <input type="hidden" id="premiumYn" name="premiumYn">
            <input type="file" name="commentFile" id="commentFile" style="height: 0; width: 0; display:none">
            <input type="hidden" id="starRating" name="starRating" value="5">
            <input type="hidden" id="orderId" name="orderId">
            <input type="hidden" id="productId" name="productId" value="2646">
            <input type="hidden" id="productPriceId" name="productId" value="4545">
            <input type="hidden" id="orderProductId" name="orderProductId"> 
            <input type="hidden" id="commentId" name="commentId">
            <input type="hidden" id="deliveryRate" name="deliveryRate" value="FAST">
            <input type="hidden" id="priceRate" name="priceRate" value="LOW">
        </div>
    </form>
    </div>
    <div class="oasisDim"></div>
    
    <div class="oasisLayerPop4" style="height:580px">
	    <div class="oasisLayerPop_in">
			<div class="oasisLPtit">
				<strong class="comLayerTit">상품문의하기</strong>
				 <div style="position:absolute; width: 27px;height: 27px;top: 27px;right: 26px;">
                        <a href="#" onclick="closeProductQnaForm(); return false;" class="popOasisDeliveryClose"></a>
                    </div>
			</div>
			
			<div class="oasisLPconWrap">
			    <form id="productQnaForm" method="post">
					<div class="comLayerCon">
						 <div class="oasisLPcon1" style="margin:15px">
							문의하실 분야를 선택하신 후 내용을 입력하신 다음 "문의" 버튼을 눌러주세요.
						</div>
						 <div class="oasisLPcon2" style="padding: 0 20px;">
							<table class="tableComWrite">
								<colgroup>
									<col width="100">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th>문의분야</th>
										<td>
											<ul class="faqSelectList2">
												<li style="padding-bottom:0px;">
													<span class="radios">
														<input type="radio" name="radioQnaType" id="radioQnaType1" value="1" checked="checked">
														<label for="radioQnaType1"></label>
													</span>
													<label for="radioQnaType1">상품</label>
												</li>
												<li style="padding-bottom:0px;">
													<span class="radios">
														<input type="radio" name="radioQnaType" id="radioQnaType2" value="2">
														<label for="radioQnaType2"></label>
													</span>
													<label for="radioQnaType2">배송</label>
												</li>
												<li style="padding-bottom:0px;">
													<span class="radios">
														<input type="radio" name="radioQnaType" id="radioQnaType3" value="3">
														<label for="radioQnaType3"></label>
													</span>
													<label for="radioQnaType3">취소/교환/반품</label>
												</li>
											 	<li> style="padding-bottom:0px;" <span="" class="radios">
														<input type="radio" name="radioQnaType" id="radioQnaType4" value="4">
														<label for="radioQnaType4"></label>
													
													<label for="radioQnaType4">주문/결제</label>
												</li>
												<li style="padding-bottom:0px;">
													<span class="radios">
														<input type="radio" name="radioQnaType" id="radioQnaType5" value="5">
														<label for="radioQnaType5"></label>
													</span>
													<label for="radioQnaType5">기타</label>
												</li> 
											</ul>
										</td>
									</tr>
									<tr>
										<th>상품명</th>
										<td>
											<div class="product_name">
												&lt;4월 정기Sale특가&gt;제주청정우유 900ml
											</div>
										</td>
									</tr>
									<tr>
										<th>문의 내용</th>
										<td>
											<div class="cmTxtInput">
												<textarea class="cmMtinput" placeholder="내용을 입력해주세요. (3,000자 미만)" id="question"></textarea>
											</div>
											<div class="txt_textarea">
												“해당 상품 자체”와 관계없는 글,양도,광고성,욕설,비방,도배 등의 글은 예고없이 <br>
												노출제한, 삭제 등의 조치가 취해질 수 있습니다.<br>
												한번 등록한 상담내용은 수정이 불가능합니다. <br>
												수정을 원하시는 경우, 삭제 후 재등록 하셔야 합니다. 
											</div>
										</td>
									</tr>
									<tr>
										<th>답변 알림</th>
										<td>
											<div>
												<span class="checks">
													<input type="checkbox" id="productQnaSmsAlarmYn" checked="checked">
													<label for="productQnaSmsAlarmYn"></label>
												</span>&nbsp;
												<label for="productQnaSmsAlarmYn">답변 후 문자보내주세요</label>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
			
						</div>
			
						<div class="btn_secret_area">
							<div><!-- 문의하신 상담내용은 고객님의 메일로도 확인하실 수 있습니다. --></div>
			
							<!-- btn : 비밀글로 문의하기 -->
							<span class="checks">
								<input type="checkbox" id="productQnaOpenYn">
								<label for="productQnaOpenYn"></label>
							</span>
							<label for="productQnaOpenYn">비밀글로 문의하기</label>
						</div>
						
						<div class="oasisLPcon3">
							 <a href="#" onclick="writeProductQna();">문의</a>
							 <a href="#" class="oasisMapClose2" onclick="closeProductQnaForm()">취소</a>
						</div>
					
						<input type="hidden" id="qnaType" name="qnaType" value="1">
						<input type="hidden" id="openYn" name="openYn" value="Y">
						<input type="hidden" id="productId" name="productId" value="2646">
			    	</div>
			    </form>
			</div>
		</div>
	</div>
	
	<div class="productCommentPop" style="height:320px;overflow-y:hidden;display: none;">
    	<form id="productCommentForm" action="/myPage/writeProductComment" method="post">
        <div class="oasisLayerPop_in">
            <div class="oasisLPtit" style="position:relative;">
                <strong>구매후기 답글 작성</strong>
                <div style="position:absolute; width: 27px;height: 27px;top: 27px;right: 26px;">
                	<a href="#" onclick="closeProductCommentPop(); return false;" class="popOasisDeliveryClose"></a>
                </div>
            </div>

            <div class="oasisLPconWrap" style="height:256px">
            	<div class="oasisLPcon2">
            		<table class="tableComWrite" style="border-top:none;">
                        <colgroup>
                            <col width="*">
                        </colgroup>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="cmTxtInput">
                                    <textarea class="cmMtinput" placeholder="해당상품의 리뷰와 무관한 내용이나 동일 문자의 반복 등 부적합한
내용일 때는 통보없이 삭제 될 수 있습니다.

내용을 입력해 주세요.
(20자 이상 3,000자 미만)" id="productCommentContent" name="productCommentContent" style="resize:none;"></textarea>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="oasisLPcon3" style="margin-top: 20px;padding-bottom:0px">
                     <a href="#" onclick="addProductComment(); return false;">등록하기</a>
                     <a href="#" class="oasisMapClose2" onclick="closeProductCommentPop(); return false;">취소하기</a>
                </div>
             </div>
             <input type="hidden" id="ppCommentId" name="ppCommentId">
             <input type="hidden" id="pCommentId" name="pCommentId">
        </div>
    </form>
    </div>

</div>


<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","361005804747507");fbq("track","PageView");</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=361005804747507&amp;ev=PageView&amp;noscript=1"></noscript>

<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","291411411372810");fbq("track","PageView");</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=291411411372810&amp;ev=PageView&amp;noscript=1"></noscript>
<script type="text/javascript" id="" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script><script type="text/javascript" id="" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript" id="">kakaoPixel("7029685262753547819").pageView();</script>
<script type="text/javascript" id="">kakaoPixel("2706104510211014363").pageView();</script></body></html>