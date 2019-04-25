<%@ page contentType="text/html; charset=UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" href="/dailychan/resources/images/webicon/Icon-Small-72.png" />
<link rel="apple-touch-icon-precomposed" href="/dailychan/resources/images/webicon/Icon-Small-50@2x.png" sizes="96x96" />
<link rel="apple-touch-icon-precomposed" href="/dailychan/resources/images/webicon/Icon-Small-72@2x.png" sizes="144x144" />
<link rel="apple-touch-icon-precomposed" href="/dailychan/resources/images/webicon/Icon-Small-60@3x.png" sizes="192x192" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/notosanskr.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_shop.css" />
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

<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/js/oasis_shop.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/js/oasis_common.js"></script>

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
            // 부분 선택.
            $(".chk_product").click(function() {
                var $corpProducts = $(this).parents(".corp_products");
                
                if ($corpProducts.find(".chk_product:not(:checked)").length == 0) {
                    $corpProducts.find(".chk_group").get(0).checked = true;
                } else {
                    $corpProducts.find(".chk_group").get(0).checked = false;
                }
                
                if ($(".chk_product:not(:checked)").length == 0) {
                    $("#checkAll").get(0).checked = true;
                } else {
                    $("#checkAll").get(0).checked = false;
                }
                calculate();
            });
            
            // 그룹 선택.
            $(".chk_group").click(function() {
                var flag = this.checked;
                var $corpProducts = $(this).parents(".corp_products");
                $corpProducts.find(".chk_product").each(function() {
                    this.checked = flag;
                });
                
                if ($(".chk_product:not(:checked)").length == 0) {
                    $("#checkAll").get(0).checked = true;
                } else {
                    $("#checkAll").get(0).checked = false;
                }
                calculate();
            });
            
            // 수량 Up
            $(".btnUp").click(function() {
                var $row = $(this).parents("tr");
                var $quantity = $(this).parent().find(".quantity");
                var quantity = parseInt($quantity.val()) + 1;
                var buyLimit = $row.data("buylimit")?parseInt($row.data("buylimit")):0;
                
                
                if(buyLimit > 0 && quantity > buyLimit) {
                    //alert(buyLimit + "개 이상은 구매 할 수 없습니다.");
                    return false;
                }
                
                
                $quantity.val( quantity );
                return false;
            });
            
            // 수량 Down
            $(".btnDown").click(function() {
                var $quantity = $(this).parent().find(".quantity");
                var quantity = parseInt($quantity.val()) - 1;
                if (quantity < 1) quantity = 1;
                $quantity.val( quantity );
                return false;
            });
            
            // 수량 Update
            $(".btnUpdate").click(function() {
                var $row = $(this).parents("tr");
                var cartId = $row.data("cartid");
                var quantity = $row.find(".quantity").val();
                var buyLimit = $row.data("buylimit")?parseInt($row.data("buylimit")):0;
                
                
                if(buyLimit > 0 && quantity > buyLimit) {
                    alert(buyLimit + "개 이상은 구매 할 수 없습니다.");
                    quantity = buyLimit;
                }
                
                
                location.href = "update/" + cartId + "/" + quantity;
                
                return false;
            });
            
            // 상품 삭제.
            $(".btnDeleteRow").click(function() {
                if (confirm("삭제하시겠습니까?")) {
                    var $row = $(this).parents("tr");
                    var cartId = $row.data("cartid");
                    location.href = "delete/" + cartId;
                }
                
                return false;
            });
            
            // 전체상품 계산.
            calculate();
        });
        
        function deleteCarts() {
            var $selectedRows = $(".chk_product:checked");
            
            if ($selectedRows.length == 0) {
                alert("삭제 할 상품을 선택해주세요.");
            }
            else if (confirm("삭제하시겠습니까?")) {
                var selectedCartIds = [];
                
                $selectedRows.each(function() {
                    selectedCartIds.push($(this).parents("tr").data("cartid"));
                });
                
                $.ajax({
                    url : contextPath + "/cart/delete",
                    type: "POST",
                    dataType: "json",
                    data: { cartIds: selectedCartIds },
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
        
        function selectedProductToWishList() {
            var $selectedRows = $(".chk_product:checked");
            
            if ($selectedRows.length == 0) {
                alert("상품을 선택해주세요.");
            }
            else {
                var selectedProductKeies = [];
                
                $selectedRows.each(function() {
                    selectedProductKeies.push($(this).parents("tr").data("productid"));
                });
                
                addWishLists(selectedProductKeies);
            }
        }
        
        function calculate() {
            var totalPrice = 0;
            var totalDeliveryPrice = 0;
            var totalDiscount = 0;
            
            var corpPrice = 0;
            var corpDiscount = 0;

            var sanjiPrice = 0;
            var sanjiDiscountedPrice = 0;
            var sanjiDeliveryPrice = 0;
            
            var totSanjiPrice = 0;
            var totSanjiDiscountedPrice = 0;
            var totSanjiDeliveryPrice = 0;
            
            var isNotDelivery = false;
            var isNotDaybreakDelivery = false;
            var isOnlyDelivery = false;
            
            $(".corp_products").find(".corpDelivery").text(0);
            
            $(".corp_products").each(function() {
                var price = 0;
                var discountedPrice = 0;
                var deliveryPrice = 0;
                
                var oldDeliveryGroup;
                $(this).find(".chk_product:checked").each(function() {
                    var $row = $(this).parents("tr");
                    
                    price           += parseInt($row.data("price"));
                    discountedPrice += parseInt($row.data("discountedprice"));
                    
                    if ($row.data("gbn") != 'sanji' && parseInt($row.data("deliveryprice")) > deliveryPrice)
                        deliveryPrice = parseInt($row.data("deliveryprice"));
                    
                    if ($row.data("gbn") == 'sanji') {
                        if(oldDeliveryGroup && $row.data("delivery_group") != oldDeliveryGroup) {
                            totSanjiPrice += sanjiPrice;
                            totSanjiDiscountedPrice += sanjiDiscountedPrice;
                            
                            if (sanjiDiscountedPrice >= 30000)
                                sanjiDeliveryPrice = 0;
                            
                            totSanjiDeliveryPrice += sanjiDeliveryPrice;
                            $(".corp_products").find(".corpDeliveryPrice_" + oldDeliveryGroup).text(comma(sanjiDeliveryPrice));
                            
                            sanjiPrice = 0;
                            sanjiDiscountedPrice = 0;
                            sanjiDeliveryPrice = 0;
                        }
                        
                        sanjiPrice += parseInt($row.data("price"));
                        sanjiDiscountedPrice += parseInt($row.data("discountedprice"));
                        
                        if (parseInt($row.data("deliveryprice")) > sanjiDeliveryPrice)
                            sanjiDeliveryPrice = parseInt($row.data("deliveryprice"));
                    }
                    
                    if(!isNotDelivery && $row.data("isnotdelivery") )
                        isNotDelivery = true;
                    
                    if(!isNotDaybreakDelivery && $row.data("isnotdaybreakdelivery") )
                        isNotDaybreakDelivery = true;
                    
                    oldDeliveryGroup = $row.data("delivery_group");
                });
                
                if (discountedPrice >= 30000) deliveryPrice = 0;
                
                //totalPrice += discountedPrice;
                totalDeliveryPrice += deliveryPrice;
                totSanjiPrice += sanjiPrice;
                totSanjiDiscountedPrice += sanjiDiscountedPrice;
                
                if (sanjiDiscountedPrice >= 30000)
                    sanjiDeliveryPrice = 0;
                totSanjiDeliveryPrice += sanjiDeliveryPrice;
                
                $(this).find(".corpDeliveryPrice_" + oldDeliveryGroup).text(comma(deliveryPrice));
                if("corp_products" == $(this).attr("id")){
                    corpPrice = price;
                    corpDiscount = discountedPrice;
                    
                    $(".groupPrice").text(comma(price));
                    $(".deliveryPrice").text(comma(deliveryPrice));
                    $(".discount").text(comma(price - discountedPrice));
                    $(".groupTotalPrice").text(comma(discountedPrice + deliveryPrice));
                }
                
                
                if(sanjiDeliveryPrice > 0)
                    $(this).find(".corpDeliveryPrice_" + oldDeliveryGroup).text(comma(sanjiDeliveryPrice));
            });
            //판매자 직배송 상품
            
            totalPrice = corpPrice + totSanjiPrice;
            totalDiscount = (corpPrice - corpDiscount) + (totSanjiPrice - totSanjiDiscountedPrice);
            
            $("#totalPrice").text(comma(totalPrice - totalDiscount));
            $("#totalDiscount").text(comma(totalDiscount));
            $("#totalDeliveryPrice").text(comma(totalDeliveryPrice + totSanjiDeliveryPrice));
            //$("#totalPayment").text(comma(totalPrice + totalDeliveryPrice + totSanjiDeliveryPrice));
            $("#totalPayment").text(comma(totalPrice - totalDiscount + totalDeliveryPrice + totSanjiDeliveryPrice));
            
            if(isNotDelivery || isNotDaybreakDelivery)
                $(".isNotDelivery").show();
            else
                $(".isNotDelivery").hide();
        }
        
        function order(cartId) {
            var $orderForm = $("#orderForm").empty();
            
            if (cartId) {
                $orderForm.append("<input type='text' name='cartId' value='" + cartId + "' />");
            } else {
                if ($(".chk_product:checked").length == 0) {
                    alert("주문 할 상품을 선택해주세요.");
                    return;
                }
                
                $(".chk_product:checked").each(function() {
                    var cartId = $(this).parents("tr").data("cartid");
                    $orderForm.append("<input type='text' name='cartId' value='" + cartId + "' />");
                });
            }
            
            $orderForm.submit();
            
            return;
        }
        
        function orderAll() {
            $(".chk_product").each(function() {
                this.checked = true;
            });
            order();
        }
        
        function checkAllBtn(){
            var flag;
            if($("#checkAll").get(0).checked){
                $("#checkAll").get(0).checked = false;
                flag = false;
            }else{
                $("#checkAll").get(0).checked = true;
                flag = true;
            }
            
            $(".chk_product, .chk_group").each(function() {
                this.checked = flag;
            });
            calculate();
        }
    </script>
</head>

<body>
<div class="allWrap">
		
	<!-- // header -->
	

	
    <!-- // header -->
    
    <!-- 컨텐츠 -->
    <div class="contentsArea" id="sec_order_cart">
        <div class="contentsWrap">
            <!-- 오른쪽 영역 -->
            <div class="content">
                <!-- 내용 입니다 -->
                <div class="orderStepWrap">
            
                    <!-- 주문단계 -->
                    <div class="orderStepImg" style="padding-bottom:58px" >
                        <img src="/dailychan/resources/images/order/order_ico_step1.png" alt="주문단계 - 1.장바구니" />
                    </div>
                    <!--// 주문단계 -->
                    <!-- 안내문구  --> 
                    <ul style="padding-bottom:30px;">
                        <li style="font-size:20px; font-weight:bold; float:left; color:#333">장바구니 상품 <span style="color:#6ca437">0</span>건</li>
                        <li style="float:right">장바구니에 담긴 상품은 14일간 보관되며, 이후 찜목록으로 이동됩니다.</li>
                    </ul>
                    <div style="clear:both"></div>
                    <!--// 안내문구  --> 
                    <!-- 주문상품 -->
                <div style="border: 1px solid #ddd; padding:20px">              
                    
                </div>
            
                    <div style="height:30px"></div>
                        
                    
                    <div class="orderBtnWrap">
                        <div class="selectBtnWrap">
                            <a href="#selectBtnWrap" onclick="checkAllBtn(); return false;">전체선택</a>
                            <input style="display:none;" type="checkbox" id="checkAll" checked="checked" />
                            <a href="#" onclick="selectedProductToWishList(); return false;">선택상품 찜하기</a>
                            <a href="#" onclick="deleteCarts(); return false;">선택삭제</a>
                        </div>
                          <div class="isNotDelivery" style="display:none;">
                        <img src="/images/common/alert.png" alt="택배불가 경고" />
                        <span>배송방법에 따른 배송 불가 상품이 포함되어 있는 경우 해당 상품은 주문 취소 될 수 있습니다.</span>
                       </div>
                    </div>  
                    <div class="orderTotalBox2">
                        <div class="totalOrderPrice">
                            <span class="totalOrderPriceTit">총 주문금액</span>
                            <span class="priceTxt">총 상품금액 <p id="totalPrice">0</p>원</span>
                            <!-- <span class="priceTxt">할인금액 <p id="totalDiscount">0</p>원</span> -->
                            <span class="priceTxt" style="border-bottom:none">배송비 <p id="totalDeliveryPrice">0</p>원</span>
                            <div class="clear"></div>
                        </div>
                        <div class="totalOrderPayment">
                                <span class="totalOrderPaymentTit">결제금액</span>
                                <span class="priceTxt"><p id="totalPayment">0</p>원</span>
                        </div>
                    </div>
                    <div class="clear"></div>
                    
                            
                    <div class="orderBtnWrap">
                        <a href="/main">계속 쇼핑하기</a>
                        <a href="#" onclick="order(); return false;">선택상품 주문하기</a>
                        <a href="#" class="orderBtnRed" onclick="orderAll(); return false;">전체상품 주문하기</a>
                                        
                    </div>
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