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
			$("#refundProductImgFile").change(function () {
				var fileObj = document.getElementById("refundProductImgFile").files[0];
				if(fileObj) {
					var imgHtml = "<img src='' alt='상품 이미지' style='max-width:470px;margin-top:10px'/>";
					$("#previewRefundImage").html(imgHtml);
					readFile("refundProductImgFile", $("#previewRefundImage img"));
					
					var file = $("#refundProductImgFile").val().split("\\");
					$("#filePlaceholder").text(file[file.length-1]);
				}
			});
		});
		
		function openRefundWin(orderId, orderProductId, productTitle, productThumb, unitPrice, productCount) {
			$("#refundStatusTitle").text("환불 요청");
			$("#refundId").val("");
			$("#refundOrderId").val(orderId);
			$("#refundOrderProductId").val(orderProductId);
			$("#refundDiscountProductPrice").val(unitPrice * productCount);
			$("#unitPrice").val(unitPrice);
			$("#refundDescription").val("");
			$("#refundProductImgFile").val("");
			$("#refundPercent").val("");
			$("#refundPoint").val("");
			$("#orderProductCount").val(productCount);
			$("#refundTypeT1").prop("checked", false);
			$("#refundTypeT2").prop("checked", false);
			$("#filePlaceholder").text("상품하자의 경우 사진을 등록");
			$("#previewRefundImage").html("");
			
			$("#refundProductTitle").text(productTitle);
			$("#refundProductImage").attr("src", imgUrl + productThumb);
			
			$("#refundDescription").prop("disabled", false);
			$("#refundPercent").prop("disabled", false);
			$("#refundPoint").prop("disabled", false);
			$("#refundTypeT1").prop("disabled", false);
			$("#refundTypeT2").prop("disabled", false);
			$(".cmAddPhotoWrap").show();
			
			$(".disaproveDesc").hide();
			$("#disaproveDesc").text("");
			
			$("#btnCancelRefund").hide();
			$("#btnRequestRefund").show();
			$("#btnRequestRefund").text("환불요청");
			$("#rDiscountedPrice").text(unitPrice * productCount);
			$("#refundProductCount").empty();
			$("#refundProductCount").append('<option value="' + productCount + '">전체</option>');
			for (var i = 1; i < productCount; i++) {
				$("#refundProductCount").append('<option value="' + i + '">'+ i + '</option>');
			}
			
			$("#refundDialog").show();
		}
		
		function closeRefundWin() {
			$("#refundDialog").hide();
		}
		
		function refundImageUpload() {
			document.getElementById("refundProductImgFile").click();
		}
		
		function requestRefundProduct() {
			var $form = $("#refundForm");
			
			var $orderId = $("#refundOrderId");
			var $orderProductId = $("#refundOrderProductId");
			var $refundDescription = $("#refundDescription");
			var $refundProductImgFile = $("#refundProductImgFile");
			var $refundPercent = $("#refundPercent");
			var $refundPoint = $("#refundPoint");
			var refundType = $('input[name="refundType"]:checked').val();
			
			if($orderId.val() == '' || $orderProductId.val() == '') {
				alert('환불 요청할 상품 선택이 잘못되었습니다.\n다시 시도해 주세요.');
				return;
			}
			if(!refundType || refundType == '') {
				alert('환불 유형을 선택 해 주세요.');
				return;
			}
			/* if(refundType == 'T2') {
				if($refundDescription.val() == '') {
					alert('환불 사유를 입력 해 주세요.');
					$refundDescription.focus();
					return;
				}
				if($refundProductImgFile.val() == '') {
					alert('환불 할 상품의 사진을 선택 해 주세요.');
					return;
				}
			} */
			if($refundPercent.val() == '' || $refundPoint.val() == '') {
				alert('환불 받을 포인트를 선택 해 주세요.');
				$refundPercent.focus();
				return;
			}
			
			$form.ajaxForm({
				dataType: "json",
				success: function(response) {
					if (response.status == "OK") {
						alert("환불요청되었습니다.\n승인까지는 2~3일이 소요되며 요청하신 포인트로 환불 처리됩니다.");
						window.location.reload(true);
                    }
                    else {
                        alert(response.message);
                    }
            	}
				, error: function() {
            		alert("오류가 발생했습니다.");
				}
            });
            $form.submit();
		}
		
		function calcRefundPoint() {
			var discountProductPrice = $("#refundDiscountProductPrice").val();
			var unitPrice = $("#unitPrice").val();
			var refundPercent = $("#refundPercent").val();
			var refundProductCount = $("#refundProductCount").val();
			var refundType = $('input[name="refundType"]:checked').val();
			
			var refundPoint = Math.ceil(unitPrice * refundProductCount * refundPercent/1000) * 10;
			
			$("#refundPoint").val( refundPoint );
		}
		
		function calcRefundCount() {
			var discountProductPrice = $("#refundDiscountProductPrice").val();
			var unitPrice = $("#unitPrice").val();
			var refundPercent = $("#refundPercent").val();
            var refundType = $('input[name="refundType"]:checked').val();
            var refundProductCount = $("#refundProductCount").val();
            
            var refundPoint = Math.ceil(unitPrice * refundProductCount * refundPercent/1000) * 10;
            
            $("#refundPoint").val( refundPoint );
            $("#rDiscountedPrice").text(unitPrice * refundProductCount);
		}
		
		function changeRefundType(changedVal) {
			// 미수령 전액환불
			if(changedVal == 'T1') {
				$("#refundPercent").val("100");
				$("#refundType1Wrap").show();
				$("#refundType2Wrap").hide();
			}
			else {
				$("#refundPercent").val("");
				$("#refundType1Wrap").hide();
                $("#refundType2Wrap").show();
			}
			
			calcRefundPoint();
		}
		
		function openRefundInfo(refundId, unitPrice, productCount) {
			$.ajax({
				url : contextPath + "/myPage/refundInfo/" + refundId,
				type : "GET",
				dataType : "json",
				success : function(response) {
					if (response.status == "OK") {
						var data = response.data;
						if(data != null) {
							var refundStatusTitle = "환불 요청 중";
							
							if(data.refundStatus == 'R2')
								refundStatusTitle = "환불 요청 반려";
							else if(data.refundStatus == 'R3' || data.refundStatus == 'R4')
								refundStatusTitle = "환불 완료";
							$("#refundStatusTitle").text(refundStatusTitle);
							$("#refundId").val(data.refundId);
							$("#refundOrderId").val(data.orderId);
							$("#refundOrderProductId").val(data.orderProductId);
							$("#refundDiscountProductPrice").val(unitPrice * productCount);
							$("#unitPrice").val(unitPrice);
							$("#refundDescription").val(data.refundDescription);
							$("#refundProductImgFile").val("");
							$("#refundPercent").val(data.refundPercent);
							$("#refundPoint").val(data.refundPoint);
							$("#filePlaceholder").text("상품하자의 경우 사진을 등록");
							if(data.refundType == 'T1')
								$("#refundTypeT1").prop("checked", true);
							else
								$("#refundTypeT2").prop("checked", true);
							
							$("#refundProductTitle").text(data.productTitle);
							$("#refundProductImage").attr("src", imgUrl + data.productThumb);
							
							if(data.refundStatus == 'R1') {
								$("#btnCancelRefund").show();
								$("#btnRequestRefund").show();
								$("#btnRequestRefund").text("수정");
								
								$("#refundDescription").prop("disabled", false);
								$("#refundPercent").prop("disabled", false);
								$("#refundPoint").prop("disabled", false);
								$("#refundTypeT1").prop("disabled", false);
								$("#refundTypeT2").prop("disabled", false);
								$(".cmAddPhotoWrap").show();
							}
							else {
								$("#refundDescription").prop("disabled", true);
								$("#refundPercent").prop("disabled", true);
								$("#refundPoint").prop("disabled", true);
								$("#refundTypeT1").prop("disabled", true);
								$("#refundTypeT2").prop("disabled", true);
								$(".cmAddPhotoWrap").hide();
								
								$("#btnCancelRefund").hide();
								$("#btnRequestRefund").hide();
							}
							
							if(data.refundImgPath != null) {
								var imgHtml = "<img src='" + imgUrl + data.refundImgPath + "' alt='이미지' style='max-width:470px;margin-top:10px'/>";
								$("#previewRefundImage").html(imgHtml);
							}
							else
								$("#previewRefundImage").html("");
							
							if(data.disaproveDesc != null && data.disaproveDesc != '') {
								$(".disaproveDesc").show();
								$("#disaproveDesc").html("<pre>" + data.disaproveDesc + "</pre>");
							}
							
							$("#rDiscountedPrice").text(unitPrice * productCount);
							$("#refundProductCount").empty();
				            $("#refundProductCount").append('<option value="' + productCount + '">전체</option>');
				            for (var i = 1; i < productCount; i++) {
				                $("#refundProductCount").append('<option value="' + i + '">'+ i + '</option>');
				            }
				            console.log(data.refundProductCount)
				            $("#refundProductCount").val(data.refundProductCount);
							
							$("#refundDialog").show();
						}
						else
							alert("잘못된 요청입니다.");
					}
					else {
						alert(response.message);
					}
				}
			});
		}
		
		function cancelRefundProduct() {
			var refundId = $("#refundId").val();
			$.ajax({
				url : contextPath + "/myPage/cancelRefund/" + refundId,
				type : "GET",
				dataType : "json",
				success : function(response) {
					if (response.status == "OK") {
						alert("환불 요청이 취소되었습니다.");
						window.location.reload(true);
					}
					else {
						alert(response.message);
					}
				}
			});
		}
		
		function openImproveInfo(orderId, orderProductId, productTitle, productThumb) {
			   $("#improveOrderId").val(orderId);
		       $("#improveOrderProductId").val(orderProductId);
	           $("#improveDescription").val("");
	            
	           $("#improveProductTitle").text(productTitle);
	           $("#improveProductImage").attr("src", imgUrl + productThumb);
	            
	           $("#improveDialog").show();
		}
		
		function closeImproveWin() {
            $("#improveDialog").hide();
        }
		
		function requestImproveProduct() {
		    var $form = $("#improveForm");
		    
		    var $orderId = $("#improveOrderId");
		    var $orderProductId = $("#improveOrderProductId");
		    var $improveDescription = $("#improveDescription");
		    
		    if ($orderId.val() == '' || $orderProductId.val() == '') {
		        alert('환불 요청할 상품 선택이 잘못되었습니다.\n다시 시도해 주세요.');
		        return;
		    }
		    
		    if ($improveDescription.val() == '') {
		        alert('내용을 입력해주세요.');
		        return
		    }
		    
		    $form.ajaxForm({
		        dataType: "json",
		        success: function(response) {
		            if (response.status == "OK") {
		            	alert("작성되었습니다.\n보내주신 의견을 토대로 더 나은 상품과 서비스를 제공하겠습니다. 감사합니다.");
	                    window.location.reload(true);
		            }
		            else {
		                alert(response.message);
		            }
		        }
		        , error: function() {
		            alert("오류가 발생했습니다.");
		        }
		    });
		    $form.submit();
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
							<a href="/myPage/main">
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
								
									<li class="on">
										<a href="/dailychan/myPage/refundProductList">환불서비스</a>
										
										
											<ul>
											
												<li class="on"><a href="/dailychan/myPage/refundProductList?refundGbn=R0">환불가능상품</a></li>
											
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
									
				                        
				                        
				                        
				                        	<h4>환불가능상품</h4>
											<p>상품의 배송완료 일자가 1주일 이내인 상품</p>
				                        
				                    
								</div>
								
								
									<div class="mypage-table mypage-goods-list">
										<table>
											<colgroup>
												<col>
											</colgroup>
											<tbody>
												<tr>
													<td>
														<div class="maQnaNon">
						                                    <div class="empty-msg">상품 내역이 없습니다.</div>
						                                </div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								
								
								
							</div>

							<div class="mypage-cblock">
								<div class="mypage-subtit underline">
									<h4>상품환불안내</h4>
								</div>					
								
								<div class="mypage-order-guide">
									<div class="txt-guide-block">
										<ul class="dash">
											<li>배송완료가 된 상품에 한하여 1주일 이내 환불 요청 가능합니다.</li>
											<li>환불 요청 가능한 기간 이후에 환불을 요청 하실 경우는 고객센터로 문의 바랍니다.</li>
											<li>환불 요청 후 담당자의 검토/승인까지는 최대 하루가 소요됩니다.</li>
											<li>환불 요청 이후 보상은 포인트로 지급되며, 결제 수단으로 환불을 원하실 경우 "환불요청"하시지 마시고 고객센터로 문의 바랍니다.</li>
											<li>상품 하자의 경우 상품 상태와 사진을 첨부하여 주시면 상품 개선에 도움이 됩니다.</li>
											<li>사실과 다른 환불 요청의 경우 반려 처리 될 수 있습니다.</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--// mypage-contents-wrap -->
				</div>
				<!--// mypage-wrap -->
				
				<!--  환불 요청  팝업 -->
				<div id="refundDialog" class="mypage-layer-popup-wrap" style="display: none;">
					<div class="mypage-layer-popup">
						<div class="popup-head">
							<h4 id="refundStatusTitle">환불요청</h4>
							<a href="#;" onclick="closeRefundWin();return false;" class="btn-close">닫기</a>
						</div>
						<div class="popup-body">
							<form id="refundForm" action="/myPage/requestRefundOrderProduct" enctype="multipart/form-data" method="post">
							<div class="refund-request">
								<div class="product">
									<span class="good-info">
										<img src="" id="refundProductImage" alt="" />
										<i id="refundProductTitle"></i>
									</span>
								</div>
								<div class="request" style="overflow-y:auto;height:290px">
									<p class="tit">환불 사유</p>
									<div class="fe-row fe-placeholder">
										<textarea placeholder=" 고객님께 불편을 드려 죄송합니다. 고객님의 불편하셨던 사항을 올려주시면 적극 반영하여 향후 동일한 문제점이 발생하지 않도록 조치하도록 하겠습니다. 감사합니다."  
											id="refundDescription" name="refundDescription" cols="30" rows="10"></textarea>
									</div>
									<p class="tit cmAddPhotoWrap">사진 첨부</p> <span style="color: #8e8e8e;"> (사진을 첨부해 주시면 많은 도움이 됩니다.)</span>
									<div id="previewRefundImage"></div>
									<div class="fe-row filebox cmAddPhotoWrap">
										<p id="filePlaceholder">상품하자의 경우 사진을 등록</p>
										<input type="file" name="refundProductImgFile" id="refundProductImgFile" accept="image/x-png,image/gif,image/jpeg">
										<button>사진첨부</button>
									</div>
									<div class="fe-row guide cmAddPhotoWrap">
										이미지 형식의 파일을 첨부할 수 있습니다. 
									</div>
									<p class="tit">환불 유형</p>
									<div class="fe-row fe-placeholder">
										<label class="radio">
											<input type="radio" id="refundTypeT1" name="refundType" value="T1" onClick="changeRefundType(this.value);"><i></i>
											<span>상품 미수령</span>
										</label>
										<label class="radio">
											<input type="radio" id="refundTypeT2" name="refundType" value="T2" onClick="changeRefundType(this.value);"><i></i>
											<span>상품 하자</span>
										</label>
									</div>
									<p class="tit">환불 수량</p>
									<div class="fe-row fe-placeholder guide">
									   <select name="refundProductCount" class="cmMtinput" id="refundProductCount" onchange="calcRefundCount()" style="width:60px;height:27px">
                                            <option value="">전체</option>
                                            
                                            <option value="1">1</option>
                                            
                                        </select>
									</div>
									
									<p class="tit">환불 포인트</p>
									<div id="refundType1Wrap" class="fe-row fe-placeholder guide" style="display:none">
									   본 제품의 구매 가격인 <b id="rDiscountedPrice"></b>포인트를 환불해드립니다. (미수령의 경우 5% 추가 적립)
									</div>
									<div id="refundType2Wrap" class="fe-row fe-placeholder guide">
										상품 가격의&nbsp;
                                   		<select name="refundPercent" class="cmMtinput" id="refundPercent" onchange="calcRefundPoint()" style="width:60px;height:27px">
											<option value="">선택</option>
											
											<option value="10">10</option>
											
											<option value="20">20</option>
											
											<option value="30">30</option>
											
											<option value="40">40</option>
											
											<option value="50">50</option>
											
											<option value="60">60</option>
											
											<option value="70">70</option>
											
											<option value="80">80</option>
											
											<option value="90">90</option>
											
											<option value="100">100</option>
											
										</select> %&nbsp;&nbsp; 
                                   		<input type="text" readonly="readonly" id="refundPoint" name="refundPoint" style="width:70px;display:inline"/>
                                   		&nbsp;포인트
									</div>
									<p class="tit disaproveDesc" style="display:none">담당자 메모</p>
									<div class="fe-row guide disaproveDesc" id="disaproveDesc"></div>
								</div>
								<div class="btn-wrap">
									<a href="#" class="btn green md" id="btnRequestRefund" onClick="requestRefundProduct(); return false;">수정</a>
									<a href="#" class="btn red md" id="btnCancelRefund" style="background-color: #e53433" onClick="cancelRefundProduct(); return false;">환불요청취소</a>
								</div>
							</div>
							<input type="hidden" id="refundOrderId" name="orderId" />
				            <input type="hidden" id="refundOrderProductId" name="orderProductId"/>
				            <input type="hidden" id="refundDiscountProductPrice" name="discountProductPrice" />
				            <input type="hidden" id="unitPrice" name="unitPrice"/>
				            <input type="hidden" id="refundId" name="refundId" />
				            <input type="hidden" id="orderProductCount" name="orderProductCount"/>
				            </form>
						</div>
					</div>
				</div>
				<!--//  환불 요청  팝업 -->
				
				<!-- 개선의견 요청 팝업 -->
				<div id="improveDialog" class="mypage-layer-popup-wrap" style="display: none;">
                    <div class="mypage-layer-popup">
                        <div class="popup-head">
                            <h4 id="refundStatusTitle">개선의견</h4>
                            <a href="#;" onclick="closeImproveWin();return false;" class="btn-close">닫기</a>
                        </div>
                        <div class="popup-body">
                            <form id="improveForm" action="/myPage/requestImproveOrderProduct" method="post">
                            <div class="refund-request">
                                <div class="product">
                                    <span class="good-info">
                                        <img src="" id="improveProductImage" alt="" />
                                        <i id="improveProductTitle"></i>
                                    </span>
                                </div>
                                <div class="request" style="overflow-y:auto;height:290px">
                                    <p class="tit">개선의견</p>
                                    <div class="fe-row fe-placeholder">
                                        <textarea placeholder=" 받아보신 상품의 문제점 또는 개선되었으면 하는 점을 작성해주시면 상품개선에 도움이 됩니다. 작성하신 의견을 토대로 더 나은 상품과 서비스를 준비하도록 최선을 다 하겠습니다. 감사합니다."  
                                            id="improveDescription" name="improveDescription" cols="30" rows="10"></textarea>
                                    </div>
                                </div>
                                <div class="btn-wrap">
                                    <a href="#" class="btn green md" id="btnRequestImprove" onClick="requestImproveProduct(); return false;">작성</a>
                                    <a href="#" class="btn red md" id="btnCancelImprove" style="background-color: #e53433" onClick="closeImproveWin(); return false;">닫기</a>
                                </div>
                            </div>
                            <input type="hidden" id="improveOrderId" name="orderId" />
                            <input type="hidden" id="improveOrderProductId" name="orderProductId"/>
                            </form>
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