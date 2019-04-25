<%@ page contentType="text/html; charset=UTF-8"%>
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

    
    <script type="text/javascript" src="https://xpay.uplus.co.kr/xpay/js/xpay_crossplatform.js"></script>
    <script type="text/javascript" src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
    <script src="https://kmpay.lgcns.com:8443/js/dlp/client/kakaopayDlpConf.js" charset="utf-8"></script>
    <script src="https://kmpay.lgcns.com:8443/js/dlp/client/kakaopayDlp.min.js" charset="utf-8"></script>
    
    <script type="text/javascript">
        var LGD_window_type = null;
        var paying = false;
        var nopay = false;
        
        var TOTAL_PRICE = "10100";
        
        $(document).ready(function() {
            
            LGD_window_type = $("#CST_WINDOW_TYPE").val();

            // 포인트 모두사용에 대한 이벤트
            $("#useAllPoint").click( function() {
                var checked = $(this).is(":checked");
                var point = $("#point").text().replace(/\,/g, "");
                var price = Number(TOTAL_PRICE) - Number($("#usageCoupon").val());
                var usePoint = 0;
                
                if(point)
                    point = Number(point);
                else 
                    point = 0;
                
                if (checked) {
                    if (point >= price) {
                        usePoint = price;
                    } else {
                        usePoint = point;
                    }
                } else {
                    usePoint = 0;
                }
                
                // 사용 포인트 변경 및 이벤트 생성
                $("#usePoint").val(usePoint).change();
            });
            
            // 사용 포인트 숫자만 입력되는 input 설정
            $("#usePoint").keyup( function() {
                var point = String($(this).val()).replace(/\..*|[^\d]/g,"");    // 숫자 이외의 문자 체크
                // 사용자가 input 직접입력하는 경우에 모두사용 체크해제
                $("#useAllPoint").attr('checked', false);
                $(this).val(point);
            });
            
            // 사용 포인트 변경 시 이벤트
            $("#usePoint").change( function() {
                var usePoint = Number($(this).val());
                var point = $("#point").text().replace(/\,/g, "");
                var price = Number(TOTAL_PRICE) - Number($("#usageCoupon").val());
                var usagePoint = 0;
                
                if(point)
                    point = Number(point);
                else 
                    point = 0;
                
                if (usePoint > 0) {
                    if (usePoint > point) {
                        alert("가용한 포인트를 초과할 수 없습니다.\r\n고객님의 가용 가능한 포인트는 " + point +"P 이며 \r\n마이페이지 > 포인트 내역 Tab에서  포인트를 확인 하실 수 있습니다.\r\n가용포인트와 적립된 포인트가 다를 경우 재 로그인  해 보시길 바라며 \r\n그래도 다를 경우 고객센터에 문의 바랍니다.");
                        usagePoint = 0;
                    } else if (usePoint > price) {
                        // 결제 금액을 초과하면 결제금액으로 세팅
                        usagePoint = price;
                    } else {
                        usagePoint = usePoint;
                    }
                } else {
                    usagePoint = 0;
                }
                
                updatePayment(usagePoint);
                $(this).val(usagePoint);
            });
            
            /*
            * 쿠폰 사용 이벤트
            */
            $("#couponId").change( function() {
                var couponId = $(this).val();
                var coupon = 0;
                var usageCoupon = 0;
                var price = Number(TOTAL_PRICE);
                
                if (couponId) {
                    $.ajax({
                        url : contextPath + "/order/check/coupon/" + couponId,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                          if (data.status == 'OK') {
                            coupon = data.data;
                            if (coupon) {
                                coupon = Number(coupon);
                            }
                            
                            if (coupon > 0) {
                                if (coupon > price) {
                                    // 결제 금액을 초과하면 결제금액으로 세팅
                                    usageCoupon = price;
                                } else {
                                    usageCoupon = coupon;
                                }
                            } else {
                                usageCoupon = 0;
                            }
                            
                            updatePaymentByCoupon(usageCoupon);
                          } else {
                              $("#couponId").val("");
                              updatePaymentByCoupon(0);
                              alert(data.message);
                          }
                        }
                    });
                } else {
                    updatePaymentByCoupon(0);
                }
                
            })      
        });
                        
        /**
         * 포인트 변경에 따른 결제내역 업데이트
         */
        function updatePayment(point) {
            var price = Number(TOTAL_PRICE);
            var paymentPrice = price - point - $("#usageCoupon").val();
            
            $("#usagePoint").val(point);
            $(".usagePoint").text(comma(Number(-point)));
            $(".paymentPrice").text(comma(Number(paymentPrice)));
            // 카카오페이
            $("#Amt").val(paymentPrice);
            $("#WooriPoint").val(point);
            // xpay
            $("#LGD_AMOUNT").val(paymentPrice);
            $("#WOORI_POINT").val(point);
            
            if (paymentPrice == 0) {
                $(".optWrap").css("visibility", "hidden");
                // 최종결제금액이 0원인 경우 결제수단을 NOPAY로 세팅
                $("input[name='usablePay']").filter(function() {
                    return $(this).is(':checked');
                }).prop('checked', false);
                $("input[name='usablePay']").filter(function() {
                    return this.value == 'NOPAY'
                }).prop('checked', true);
            } else {
                $(".optWrap").css("visibility", "visible");
                // 최종결제금액이 0원이 아닌 경우 결제수단을 KAKAO로 세팅
                $("input[name='usablePay']").filter(function() {
                    return $(this).is(':checked');
                }).prop('checked', false);
                $("input[name='usablePay']").filter(function() {
                    //return this.value == 'KAKAO';
                    return this.value == 'SC0010';
                }).prop('checked', true);
                //카카오 설명 show
                descPaymentType($("input[name='usablePay']:checked").val());
            }
        }
        
        /**
         * 쿠폰 적용에 따른 결제내역 업데이트
         */
        function updatePaymentByCoupon(coupon) {
            var price = Number(TOTAL_PRICE);
            var paymentPrice = price -  $("#usagePoint").val() - coupon;
            
            $("#usageCoupon").val(coupon)
            $(".usageCoupon").text(comma(Number(-coupon)));
            $(".paymentPrice").text(comma(Number(paymentPrice)));
            // 카카오페이
            $("#Amt").val(paymentPrice);
            $("#WooriPoint").val(point);
            // xpay
            $("#LGD_AMOUNT").val(paymentPrice);
            $("#WOORI_POINT").val(point);
            
            if (paymentPrice == 0) {
                $(".optWrap").css("visibility", "hidden");
                // 최종결제금액이 0원인 경우 결제수단을 NOPAY로 세팅
                $("input[name='usablePay']").filter(function() {
                    return $(this).is(':checked');
                }).prop('checked', false);
                $("input[name='usablePay']").filter(function() {
                    return this.value == 'NOPAY'
                }).prop('checked', true);
            } else {
                $(".optWrap").css("visibility", "visible");
                // 최종결제금액이 0원이 아닌 경우 결제수단을 KAKAO로 세팅
                $("input[name='usablePay']").filter(function() {
                    return $(this).is(':checked');
                }).prop('checked', false);
                $("input[name='usablePay']").filter(function() {
                    //return this.value == 'KAKAO';
                    return this.value == 'SC0010';
                }).prop('checked', true);
                //카카오 설명 show
                descPaymentType($("input[name='usablePay']:checked").val());
            }
            
            $("#usePoint").val($("#usagePoint").val()).change();
        }
                        
        function launchCrossPlatform() {
            lgdwin = openXpay(document.getElementById("LGD_PAYINFO"),
                    "service", LGD_window_type, null, "", "");
        }
 
        function launchKakaoPay() {
            kakaopayReady();
        }
        
        function launchSmilePay() {
            smilepayReady();
        }
        
        function getFormObject() {
            return document.getElementById("LGD_PAYINFO");
        }

        // 인증결과 처리
        function payment_return(respMessage, respCode, payKey) {
            if (respCode == "0000") {
                paying = false;
                document.getElementById("LGD_PAYKEY").value = payKey;
                document.getElementById("LGD_PAYINFO").target = "_self";
                document.getElementById("LGD_PAYINFO").action = "/xpay/payres";
                document.getElementById("LGD_PAYINFO").submit();
            } else {
                alert("LGD_RESPCODE (결과코드) : " + respCode + "\n"
                        + "LGD_RESPMSG (결과메시지): " + respMessage);
                closeIframe();
            }
        }

        function descPaymentType(paymentType) {
            if (paymentType == "KAKAO") {
                $("#descKAKAO").show();
                $("#descSMILE").hide();
                $("#descSC0010").hide();
                $("#descSC0060").hide();
                $(".paymentWrap").css("min-height", "260px");
            } else if (paymentType == "SMILE") {
                $("#descKAKAO").hide();
                $("#descSMILE").show();
                $("#descSC0010").hide();
                $("#descSC0060").hide();
                $(".paymentWrap").css("min-height", "260px");
            } else if (paymentType == "SC0010") {
                $("#descKAKAO").hide();
                $("#descSMILE").hide();
                $("#descSC0010").show();
                $("#descSC0060").hide();
                $(".paymentWrap").css("min-height", "260px");
            } else if (paymentType == "SC0060") {
                $("#descKAKAO").hide();
                $("#descSMILE").hide();
                $("#descSC0010").hide();
                $("#descSC0060").show();
                $(".paymentWrap").css("min-height", "350px");
            } else {
                $("#descKAKAO").hide();
                $("#descSMILE").hide();
                $("#descSC0010").hide();
                $("#descSC0060").hide();
                $(".paymentWrap").css("min-height", "260px");
            }
        }
        
        $(window).on("beforeunload", function() {
            if (paying && !nopay) {
                return "결제를 취소하시겠습니까?";
            }
        });

        /**
         * kakaopay를 통해 결제를 시작합니다.
         */
        function kakaopay(osName) {

            // tid가 있을 경우.
            if (document.kakaoPayForm.tid.value != '') {
                paying = false;
                
                var nextUrl;

                // 결제 창
                if(osName == 'WEB')
                    nextUrl = document.kakaoPayForm.next_redirect_pc_url.value;
                else
                    nextUrl = document.kakaoPayForm.next_redirect_mobile_url.value;
                
            } else {
                alert(document.kakaoPayForm.msg.value);
            }

            $("#kakaopayLayerIframe").attr("src", nextUrl);
            popHeightControl("kakaopay_layer", "block");
        }
        
        function closeKakaopay() {
            popHeightControl("kakaopay_layer", "none");
        }
        
        
        function successKakaopay(orderId) {
            popHeightControl("kakaopay_layer", "none");
            location.href = contextPath + "/order/complete/" + orderId;
        }
        
        
        function kakaopayReady() {
            // order id 설정
            document.kakaoPayForm.elements['oid'].value = $("#LGD_OID").val();
            
            // form에 iframe 주소 세팅
            document.kakaoPayForm.target = "txnIdGetterFrame";
            document.kakaoPayForm.action = "/kakaopay/ready";
            document.kakaoPayForm.acceptCharset = "utf-8";
            if (kakaoPayForm.canHaveHTML) { // detect IE
                document.charset = kakaoPayForm.acceptCharset;
            }

            // post로 iframe 페이지 호출
            document.kakaoPayForm.submit();

            // payForm의 타겟, action을 수정한다
            document.kakaoPayForm.target = "";
            document.kakaoPayForm.action = "/kakaopay/approve";
            document.kakaoPayForm.acceptCharset = "utf-8";
            if (kakaoPayForm.canHaveHTML) { // detect IE
                document.charset = kakaoPayForm.acceptCharset;
            }

        }
        
        
        /**
         * smilepay를 통해 결제를 시작합니다.
         */
        function smilepay(osName) {

            // tid가 있을 경우.
            if (document.smilePayForm.tid.value != '') {
                paying = false;
                
                var nextUrl;

                // 결제 창
                if(osName == 'WEB')
                    nextUrl = document.smilePayForm.next_redirect_pc_url.value;
                else
                    nextUrl = document.smilePayForm.next_redirect_mobile_url.value;
                
            } else {
                alert(document.smilePayForm.msg.value);
            }

        }
        
        
        function smilepayReady() {
            // form에 iframe 주소 세팅
            document.smilePayForm.target = "txnIdGetterFrame";
            document.smilePayForm.action = "/smilepay/ready";
            document.smilePayForm.acceptCharset = "utf-8";
            if (payForm.canHaveHTML) { // detect IE
                document.charset = smilePayForm.acceptCharset;
            }

            // post로 iframe 페이지 호출
            document.smilePayForm.submit();

            // payForm의 타겟, action을 수정한다
            document.smilePayForm.target = "";
            document.smilePayForm.action = "/smilepay/liteResult";
            document.smilePayForm.acceptCharset = "utf-8";
            if (smilePayForm.canHaveHTML) { // detect IE
                document.charset = smilePayForm.acceptCharset;
            }
            // getTxnId.jsp의 onload 이벤트를 통해 cnspay() 호출

        }
        
        function autoHypenPhone(str) {
            str = str.replace(/[^0-9]/g, '');
            var tmp = '';
            if (str.length < 11) {
                return str;
            } else {
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3, 4);
                tmp += '-';
                tmp += str.substr(7);
                return tmp;
            }
            return str;
        }

        var submitFunc = function cnspaySubmit(data) {
            if (data.RESULT_CODE === '00') {
                // 매뉴얼 참조하여 부인방지코드값 관리
                document.smilePayForm.submit();
            } else if (data.RESULT_CODE === 'KKP_SER_002') {
                // X버튼 눌렀을때의 이벤트 처리 코드 등록
                alert('[RESULT_CODE] : ' + data.RESULT_CODE
                        + '\n[RESULT_MSG] : ' + data.RESULT_MSG);
            } else {
                alert('[RESULT_CODE] : ' + data.RESULT_CODE
                        + '\n[RESULT_MSG] : ' + data.RESULT_MSG);
            }
        };
        
        // 결제 요청
        function requestPayment() {             
            
	            if ( (10100 - $("#usagePoint").val() - $("#usageCoupon").val()) < 10000) {
	                alert('상품 주문은 배송비를 제외한 실 결제금액 10,000원 이상부터 가능합니다.');
	                return;
	            }
            
                        
            if(!$("#agreement").get(0).checked){
                alert('주문서 동의가 필요합니다.');
                return;
            }
   
            var unreleasedInfo = "unreleasedPoint";
            if($("#unreleasedPayment").is(":checked")) {
                //unreleasedInfo += "결제수단으로 환불";
                unreleasedInfo = "unreleasedPayment";
            } else if($("#unreleasedPoint").is(":checked")) {
                //unreleasedInfo += "포인트 환불 (미출고 상품가의 5% 추가 보상 지급)";
                unreleasedInfo = "unreleasedPoint";
            } else if($("#changeProduct").is(":checked")) {
                //unreleasedInfo += "대체상품으로 교환배송";
                unreleasedInfo = "changeProduct";
            } else if($("#deliveryNextDay").is(":checked")) {
                unreleasedInfo = "deliveryNextDay";
            }
            
            var orderUserName = '황병열';
            var orderUserTel = '01053054710';
            var userName = '황병열';
            var zoneCode = '03426';
            var postCode = '122-821';
            var address1 = '서울 은평구 서오릉로17길 21-11';
            var address2 = '501호';
            var oldAddress1 = '서울 은평구 구산동 147-20';
            var tel = '01053054710';
            var usagePoint = $.trim($("#usagePoint").val());
            var usageCoupon = $.trim($("#usageCoupon").val());
            var couponId = $.trim($("#couponId").val());
            var userOasisYn = '';
            var deliveryTime = 'DT4';
            var oasisProductYn = 'Y';
            var saveAddress = 'true';
            var latitude = '';
            var longitude = '';
            var daybreakDeliveryYn = 'Y';
            var recoveryWrapperYn = 'N';
            var deliveryStoreId = '0';
            var packingType = 'P2';
            var usablePay = $("input[name='usablePay']:checked").val();
            var smsNoticeCode = 'S1';
            var doorKey = '3628';
            var orderRequestMsg = '';
            var recycleYn = 'Y';
            
            if (!usablePay) {
                alert("결제수단을 선택해주세요.");
                $("input[name='usablePay']").focus();
                return;
            }
            
            $("#LGD_CUSTOM_USABLEPAY").val(usablePay);

            var deliveryMessage = $("#deliveryMessage").val();
            
            var param = {
                paymentType : usablePay,
                buyerName : orderUserName,
                buyerTel : orderUserTel,
                receiver : userName,
                zoneCode : zoneCode,
                postCode : postCode,
                address1 : address1,
                address2 : address2,
                oldAddress1 : oldAddress1,
                tel : tel,
                totalPayment : $("#LGD_AMOUNT").val(),
                orderRequestMsg : orderRequestMsg,
                unreleasedInfo : unreleasedInfo,
                usagePoint : usagePoint,
                usageCoupon : usageCoupon,
                couponId : couponId,
                oasisYn : userOasisYn,
                deliveryTimeCode : deliveryTime,
                oasisProductYn : oasisProductYn,
                saveAddress : saveAddress,
                latitude : latitude,
                longitude : longitude,
                daybreakDeliveryYn: daybreakDeliveryYn,
                smsNoticeCode: smsNoticeCode,   
                doorKey: doorKey,
                recoveryWrapperYn : recoveryWrapperYn,
                deliveryStoreId: deliveryStoreId,
                packingType: packingType,
                recycleYn: recycleYn
            };

            var cartIds = [];
            $(".order_product").each(function() {
                cartIds.push($(this).data("cartid"));
            });

            param.cartIds = cartIds;
            
            $('#LGD_PAYINFO [name="LGD_BUYERPHONE"]').val('01053054710');

            var formData = {};
            var formDataArray = $("#LGD_PAYINFO").serializeArray();
            for (i in formDataArray) {
                formData[formDataArray[i].name] = formDataArray[i].value;
            }
            
            param.formData = JSON.stringify(formData);
            
            
            param.chosenEventProductId = 4;
            
            
            if (usablePay == "NOPAY") {
                $.ajax({
                    url : contextPath + "/order/requestNoPay",
                    type : "POST",
                    data : param,
                    dataType : "json",
                    success : function(response) {
                        if (response.status == "OK") {
                            paying = true;
                            nopay = true;
                            var data = response.data;
                            
                            alert("결제가 완료되었습니다. 주문내역으로 이동합니다.");
                            location.href = contextPath + "/order/complete/" + data.orderId;
                        } else {
                            alert(response.message + "\n장바구니로 이동합니다.");
                            location.href = contextPath + "/cart/list";
                        }
                    }
                });
            } else {
                $.ajax({
                    url : contextPath + "/order/request",
                    type : "POST",
                    data : param,
                    dataType : "json",
                    success : function(response) {
                        if (response.status == "OK") {
                            paying = true;
                            var data = response.data;
                            $("#LGD_OID").val(data.LGD_OID);
                            $("#LGD_HASHDATA").val(data.LGD_HASHDATA);
                            $("#LGD_CUSTOM_USABLEPAY").val(
                                    data.LGD_CUSTOM_USABLEPAY);
                            $("#LGD_TIMESTAMP").val(data.LGD_TIMESTAMP);
    
                            $("#EdiDate").val(data.LGD_TIMESTAMP);
    
                            if (usablePay == "KAKAO")
                                launchKakaoPay();
                            else if (usablePay == "SMILE")
                                launchSmilePay();
                            else
                                launchCrossPlatform();
                        } else {
                            alert(response.message + "\n장바구니로 이동합니다.");
                            location.href = contextPath + "/cart/list";
                        }
                    }
                });
            }
            
        }
    </script>
</head>

<body>
<div class="allWrap">
    <!-- header -->
    
    <!-- // header -->
    
    <!-- 컨텐츠 -->
    <div class="contentsArea" id="sec_order_pay">
        <div class="contentsWrap">
            <!-- 오른쪽 영역 -->
            <div class="content">
                <!-- 내용 입니다 -->
                <div class="orderStepWrap">
                    <!-- 주문단계 -->
                    <div class="orderStepImg">
                        <img src="/dailychan/resources/images/order/order_ico_step3.png" alt="주문단계 - 3. 주문결제" />
                    </div>
                    <div style="background-color:#f5f5f5; height:36px; color:#6ca437; font-size:16px; font-weight:bold;text-align:center; padding-top:22px">
                        상품 주문은 배송비를 제외한 실 결제금액 10,000원 이상부터 가능합니다.
                    </div>
                    <!--// 주문단계 -->
                    <!-- 안내문구  -->
                    <div style="padding-top:58px"> 
                        <ul style="padding-bottom:30px;">
	                        <li style="font-size:20px; font-weight:bold; float:left; color:#333">주문 상품 <span style="color:#6ca437">2</span>건</li>
	                        <li style="float:right">새벽배송이나 매장배송으로 산지직송 상품을 주문하시는경우 산지에서 별도로 직송합니다.</li>
                        </ul>
                    </div>
                    <div style="clear:both"></div>
                    <!--// 안내문구  --> 
                    <!-- 주문상품 -->
                        
                            <div style="border: 1px solid #ddd; padding:20px">
                            <div class="orderTbl">
                                <div style="border-top:2px solid #6ca437"></div>
	                            <table class="corp_products" id="corp_products">
	                                <colgroup>
	                                    <col width="40px" />
	                                    <col width="" />
	                                    <col width="105px" />
	                                    <col width="135px" />
	                                    <col width="95px" />
	                                    <col width="109px" />
	                                    <col width="100px" />
	                                </colgroup>
	                                <thead>
	                                    <tr>
		                                    <th scope="col">No.</th>
		                                    <th scope="col">상품정보</th>
		                                    <th scope="col">판매가</th>
		                                    <th scope="col">할인금액</th>
		                                    <th scope="col">수량</th>
		                                    <th scope="col">구매가</th>
	                                        <th scope="col">배송정보</th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                    
	                                        
	                                        
	                                        
	                                        
	                                            
	                                            
	                                        
	                                        
	                                        
	                                            
	                                        
	                                        
	                                        
	                                        
	                                        <tr class="order_product" data-cartid="3654388">
	                                            <td class="odTd1">1</td>
	                                            <th scope="row" class="odTh" style="height:70px;">
	                                                <span class="odThImg">
	                                                    <img src="http://www.oasis.co.kr:8580/product/2849/thumb/thumb_28491f31333d-346f-466d-9487-e56c7a7b5d48.jpg" alt="상품 섬네일" style="max-width:70px;max-height:70px"/>
	                                                </span>
	                                                <4월 정기Sale특가> 자연이란 동물복지유정란 10구입
	                                                
	                                            </th>
	                                            <td class="odTd1">4,500</td>
	                                            <td class="odTd2">
	                                                
	                                                    
	                                                    
	                                                        2,500
	                                                        <p><em>[55%]</em> 하루 2개까지</p>
	                                                    
	                                                
	                                            </td>
	                                            <td class="odTd1">2</td>
	                                            <td class="odTd4">4,000</td>
	                                            <td class="odTd5" style="border-right:none" rowspan="2">
	                                                <p class="fnB" id="wrcDeliveryPrice">
	                                                    3,000
	                                                </p>
	                                            </td>
	                                        </tr>
	                                    
	                                    
	                                        
	                                        
	                                        
	                                        
	                                            
	                                            
	                                        
	                                        
	                                        
	                                            
	                                        
	                                        
	                                        
	                                        
	                                        <tr class="order_product" data-cartid="3654303">
	                                            <td class="odTd1">2</td>
	                                            <th scope="row" class="odTh" style="height:70px;">
	                                                <span class="odThImg">
	                                                    <img src="http://www.oasis.co.kr:8580/product/2646/thumb/thumb_2646d79c1e73-5983-4d66-98a2-6ff8a0b32f15.jpg" alt="상품 섬네일" class="thum" />
	                                                </span>
	                                                <4월 정기Sale특가>제주청정우유 900ml
	                                                
	                                            </th>
	                                            <td class="odTd1">4,500</td>
	                                            <td class="odTd2">
	                                                
	                                                    
	                                                    
	                                                        3,000
	                                                        <p><em>[66%]</em> 하루 2개까지</p>
	                                                    
	                                                
	                                            </td>
	                                            <td class="odTd1">2</td>
	                                            <td class="odTd4">3,000</td>
	                                        </tr>
	                                    
	                                </tbody>
	                            </table>
                            </div>
                        <ul class="orderTotalBox">
	                        <li class="orderTotal_l" style="padding-left:10px">총 주문금액<span class="valp groupTotalPrice" style="font-weight:bold; padding-left:10px">10,000</span><span>원</span></li>
	                        <li class="orderTotal_e" style="padding-left:10px">총 배송비<span class="valp deliveryPrice" style="padding-left:10px">3,000</span><span>원</span></li>
	                        <li class="orderTotal_p" style="padding-left:10px">총 할인금액<span class="valp discount" style="padding-left:10px">11,000</span><span>원</span></li>
	                        <li class="orderTotal_m" style="padding-left:10px">총 상품금액<span class="valp groupPrice" style="padding-left:10px">18,000</span><span>원</span></li>
                        </ul>
                        <div class="clear"></div>
                        </div>
                    
                    
                    
                    
                    
                    
                    
                    
                    <div style="border: 1px solid #ddd; padding:20px; margin-top:30px">
                        <div class="orderTbl" style="border-top:2px solid #6ca437">
                            <table>
                                <colgroup>
                                    <col width="40px" />
                                    <col width="" />
                                    <col width="105px" />
                                    <col width="135px" />
                                    <col width="95px" />
                                    <col width="109px" />
                                    <col width="100px" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">No.</th>
                                        <th scope="col">상품정보</th>
                                        <th scope="col">판매가</th>
                                        <th scope="col">할인금액</th>
                                        <th scope="col">수량</th>
                                        <th scope="col">구매가</th>
                                        <th scope="col">배송정보</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="order_product">
                                        <td class="odTd1">1</td>
                                        <th scope="row" class="odTh" style="height:70px;">
                                            <span class="odThImg">
                                                <img src="http://www.oasis.co.kr:8580/product/3221/thumb/thumb_32217c37bf13-6eef-4de5-9446-5bee3698b9bc.jpg" alt="상품 섬네일" style="max-width:70px;max-height:70px"/>
                                            </span>
                                            미인계닭가슴살 3종 100g X 3개
                                        </th>
                                        <td class="odTd1">5100</td>
                                        <td class="odTd2">5000</td>
                                        <td class="odTd1">1</td>
                                        <td class="odTd4">100</td>
                                        <td class="odTd5" style="border-right:none"><p class="fnB">0</p></td>
                                        
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <ul class="orderTotalBox" style="height: 0px;border-top: 1px solid #dddddd;border-bottom: 0px;"></ul>
                        <div class="clear"></div>
                        </div>
                    
                

                        
                <!-- 포인트/혜택사용하기 -->
                <h4 class="orderTit2" style="padding-top:50px">결제수단</h4>
                <div style="border:solid 1px #ddd; width:1026px;  background-color:#f5f5f5">
                    <div style="background-color:#fff">
                        <div class="orderTbl2" style=" width: 685px; float: left; height:auto;background:#fff">
                            <div style="border-bottom:2px solid #6ca437; font-size:16px; font-weight:bold; color:#333; padding:10px 0">포인트/혜택사용하기</div>
                            <table>
                                <colgroup>
                                    <col width="140px" />
                                    <col width="" />
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row"><span class="checkBg">포인트 사용</span></th>
                                        <td>
                                            <input type="hidden" id="usagePoint" value="0"/>
                                            <input type="text" id="usePoint" maxlength="10" value="0" class="inputWd140 floatL" />
                                            <span class="pointTxt floatL" style="padding:5px"><img src="/images/order/orderIcon8.png" alt="포인트"/></span>
                                            <span class="checks floatL" style="top:5px">
                                                <input type="checkbox" id="useAllPoint" /><label for="useAllPoint"></label>
                                            </span>
                                            <label for="useAllPoint">
                                                <p class="pointTxt2 floatL" style="padding-top:5px; padding-left:8px; cursor:pointer">보유포인트 <em>(<span id="point">0</span>P)</em></p>
                                            </label>
                                            <div class="clear" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"><span class="checkBg">쿠폰 사용</span></th>
                                        <td>
                                            <input type="hidden" id="usageCoupon" value="0"/>
                                            <select id="couponId" style="height:30px; width:250px">
                                                <option value="">사용안함</option>
                                                
                                                    <option value="132664">가입 선물 쿠폰 (3,000원)</option>
                                                
                                            </select>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div style="height:40px"></div>
                            <div style="border-bottom:2px solid #6ca437; font-size:16px; font-weight:bold; color:#333; padding-bottom:10px">결제방법</div>
                            <!-- 결제수단 -->
                            <div class="optWrap" >
                                <div style="padding-bottom: 10px;">
                                    <table>
                                        <colgroup>
                                            <col width="110px" />
                                            <col width="" />
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="payment">
                                                        <span class="radios">
                                                            <input type="radio" id="usablePay2" name="usablePay" value="SC0010" onClick="descPaymentType('SC0010');" checked="checked"/>
                                                            <label for="usablePay2" />
                                                        </span>
                                                        <label for="usablePay2" >
                                                            <p style="cursor:pointer">신용카드</p>
                                                        </label>
                                                        <span class="radios">
                                                            <input type="radio" id="usablePay3" name="usablePay" value="SC0040" onClick="descPaymentType('SC0040');" />
                                                            <label for="usablePay3" />
                                                        </span>
                                                        <label for="usablePay3" >
                                                            <p style="cursor:pointer">무통장 입금 (가상계좌)</p>
                                                        </label>
                                                        <span class="radios">
                                                            <input type="radio" id="usablePay4" name="usablePay" value="SC0060" onClick="descPaymentType('SC0060');" />
                                                            <label for="usablePay4" />
                                                        </span>
                                                        <label for="usablePay4" >
                                                            <p style="cursor:pointer">휴대폰결제</p>
                                                        </label>
                                                        <span class="radios">
                                                            <input type="radio" id="usablePay1" name="usablePay" value="KAKAO" onClick="descPaymentType('KAKAO');"  />
                                                            <label for="usablePay1" />
                                                        </span>
                                                        <label for="usablePay1">
                                                            <p style="cursor:pointer;">kakaoPay</p>
                                                        </label>
                                                        
                                                        <input type="radio" style="visibility:hidden" name="usablePay" value="NOPAY" />
                                                    </div>  
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                
                                <ul class="paymentTxt" id="descKAKAO" style="display: none;">
                                    <li>가장 빠른 모바일결제 <img src="/images/shop/mark_bg_white_s.png" alt="카카오페이" />
                                        <ul>
                                            <li>카카오페이 결제 시 화면 아래 '결제하기' 버튼을 클릭하시면 카카오페이 인증 창이 나타납니다.</li>
                                            <li>카카오페이 인증 창에서 정보를 입력하신 후 결제해주세요.</li>
                                        </ul>
                                    </li>
                                </ul>
                                
                                <ul class="paymentTxt" id="descSMILE" style="display: none;">
                                    <li>가장 빠른 모바일결제 <img src="/images/shop/mark_bg_white_s.png" alt="스마일페이" />
                                        <ul>
                                            <li>스마일페이 결제 시 화면 아래 '결제하기' 버튼을 클릭하시면 스마일페이 인증 창이 나타납니다.</li>
                                            <li>스마일페이 인증 창에서 정보를 입력하신 후 결제해주세요.</li>
                                            <li>Internet Explorer사용시 SmilePay URL( www.mysmilepay.com )을 신뢰할 수 있는 사이트로 등록하거나 브라우저 보안등급을 "낮음"으로 설정하셔야 합니다.</li>
                                        </ul>
                                    </li>
                                </ul>
                                
                                <ul class="paymentTxt" id="descSC0010">
                                    <li>신용카드 결제 시 화면 아래 ‘결제하기’버튼을 클릭하시면 신용카드 결제 창이 나타납니다.</li>
                                    <li>신용카드 결제 창을 통해 입력되는 고객님의 카드 정보는 128bit로 안전하게 암호화되어 전송되며, 승인 처리 후 카드 정보는 승인 성공/실퍠 여부에 상관없이 자동으로 폐기되므로 안전합니다.</li>
                                    <li>신용카드 결제 신청 시 승인 진행에 다소 시간이 소요될 수 있으므로 ‘중지’, ‘새로고침’을 누르지 마시고 결과 화면이 나타날 때까지 기다려 주십시오.</li>
                                </ul>
                                
                                <ul class="paymentTxt" id="descSC0060" style="display: none;">
                                    <li>오아시스에서 휴대폰으로 결제 가능한 최대 금액은 월 30만원이나, 개인별 한도금액은 통신사 및 개인 설정에 따라 <br />다를 수 있습니다.</li>
                                    <li>휴대폰으로 결제하신 금액은 익월 휴대폰 요금에 함께 청구되며 별도의 수수료는 부과되지 않습니다.</li>
                                    <li>휴대폰 소액결제로 구매하실 경우 현금영수증이 발급되지 않습니다.
                                        <ul>
                                            <li>미납/체납중인 휴대폰 요금이 있을 경우</li>
                                            <li>이동통신사 가입기간(번호이동포함) 6개월 이하인 경우</li>
                                            <li>외국인, 미성년자 요금제, 법인휴대폰, 선불요금제인 경우</li>
                                            <li>LGT 이용자 중 통신사로 [자동결제] 차단 신청하신 경우</li>
                                        </ul>
                                    </li>
                                    <li>휴대폰 소액결제로 결제하신 상품을 취소할 경우 결제하신 당월 말까지 가능합니다.</li>
                                    <li>휴대폰결제관련 문의사항은 LG유플러스전자결제 고객센터 1544-7772 또는 오아시스 고객센터 1577-0098으로 <br />연락주시기 바랍니다.</li>
                                </ul>
                                <!--// 결제수단 -->
                            </div>
                
                            </div>
                            <!-- 미 출고시 조치방법 -->
                            <div class="orderTbl2" style="width: 260px; float: left; height:auto; border:none">
                            <div style="border-bottom:2px solid #8b8b8b; font-size:16px; font-weight:bold; color:#333; padding:10px 0">미출고시 조치방법</div>
                                <table>
                                    <colgroup>
                                        <col width="110px" />
                                        <col width="" />
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                             <td style="padding-left:0; border-bottom:none">
                                                <div class="payment unreleasedWrap">
                                                    <span class="radios">
                                                        <input type="radio" id="unreleasedPoint" name="unreleased" value="unreleasedPoint" checked="checked"/>
                                                        <label for="unreleasedPoint" />
                                                    </span>
                                                    <label for="unreleasedPoint" >
                                                        <p style="cursor:pointer">포인트 환불</br> (미출고 상품가의 5% 추가 보상 지급)</p>
                                                    </label>
                                                    <div class="clear"></div>
                                                    <span class="radios">
                                                        <input type="radio" id="unreleasedPayment" name="unreleased" value="unreleasedPayment"/>
                                                        <label for="unreleasedPayment" />
                                                    </span>
                                                    <label for="unreleasedPayment" >
                                                        <p style="cursor:pointer">결제수단으로 환불</p>
                                                    </label>
                                                    <div class="clear"></div>
                                                    <span class="radios">
                                                        <input type="radio" id="changeProduct" name="unreleased" value="changeProduct"/>
                                                        <label for="changeProduct" />
                                                    </span>
                                                    <label for="changeProduct" >
                                                        <p style="cursor:pointer">대체상품으로 교환</br> (대체상품이 없을경우, 포인트로 환불해드립니다)</p>
                                                    </label>
                                                    <div class="clear"></div>
                                                    <span class="radios">
                                                        <input type="radio" id="deliveryNextDay" name="unreleased" value="deliveryNextDay"/>
                                                        <label for="deliveryNextDay" />
                                                    </span>
                                                    <label for="deliveryNextDay" >
                                                        <p style="cursor:pointer">다음날 결품없이 전품목 함께 받기</p>
                                                    </label> 
                                                    <div class="clear"></div>
                                                </div>  
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            </div>                  
                            <!--// 미 출고시 조치방법 -->
                            <div style="clear:both"></div>
                        </div>
                       
                        <!--// 포인트/혜택사용하기 -->
                                </div>
                    <div class="clear" />


                     <!-- 포인트/혜택사용하기 -->
                        <h4 class="orderTit2" style="padding-top:50px">주문서 동의</h4>
                    <div style="border:solid 1px #ddd; width:1026px">
                        <div style="background-color:#fff">
                            <div class="orderTbl2" style=" width: 685px; float: left; height:auto;background:#fff">
                            <div style="border-bottom:2px solid #6ca437; font-size:16px; font-weight:bold; color:#333; padding:10px 0">주문서 동의</div>
                                <table>
                                    <colgroup>
                                        <col width="" />
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <td>
                                              <div class="checkWrap">
                            <span class="checks"><input type="checkbox" id="agreement" /><label for="agreement" /></span>
                            <label for="agreement" >
                                <span class="checkTxt2" style="cursor:pointer">주문서 동의</span>
                            </label>
                                주문할 상품의 상품명,가격,배송정보를 확인하였으며, 구매에 동의합니다.</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(전자상거래법 제8조 제2항)</p>

                        </div>
                                            </td>
                                        </tr>
                                    
                                    </tbody>
                                </table>
                        <div style="height:40px"></div>
                            <div style="border-bottom:2px solid #6ca437; font-size:16px; font-weight:bold; color:#333; padding-bottom:10px">꼭 확인하세요.</div>
    <!-- 결제수단 -->
                            <div>
                                <div style="padding-top:20px">
                                    <table>
                                        <tbody>
                                            <tr>
                                                <ul class="paymentTxt" style="display:inline-block; margin-bottom:30px">
                            <li style="font-size:14px; color:red; margin-bottom:10px">신규 회원 가입선물은 첫 구매 3만원 이상 결제시 드립니다.</li>
                            <li style="font-size:14px; margin-bottom:10px">구매 후 품절로 인하여 카드 취소/환불/입금등이 필요한 경우, 고객님의 불편을 최소화 하기 위해 결제금액의 5%를 포인트로 보상해 드리고 있습니다. (품절로 인한 포인트 환불 시 5%추가 보상지급)<br/>
                        적립 추가 5%+환불금액은 마이페이지에서 확인가능합니다.</li>
                            <li style="font-size:14px; margin-bottom:10px">포인트 보상 대신 결제 부분 취소를 원하시는 경우 1:1 고객센터에 메모 남겨주시면 24시간 이내에 취소하여 드리겠습니다. (핸드폰 결제 또는 안심결제시는 제외)</li>
                        </ul>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                
                            
                            </div>
                
                            </div>
                            <!-- 최종결제금액 -->
                            <div style="width: 260px; float: left; height:auto;  padding:20px">
                            <div style="border-bottom:2px solid #8b8b8b; font-size:16px; font-weight:bold; color:#333; padding:10px 0">최종 결제금액</div>
                        <div class="orderTbl3">
                            <table>
                                <colgroup>
                                    <col width="140px" />
                                    <col width="" />
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row">총 상품금액</th>
                                        <td>7,100<span>원</span></td>
                                    </tr>
                                    <!-- 
                                    <tr>
                                        <th scope="row">총 할인금액</th>
                                        <td>11,000<span>원</span></td>
                                    </tr>
                                     -->
                                    <tr>
                                        <th scope="row">포인트 사용금액</th>
                                        <td><span class="valp usagePoint">0</span><span>원</span></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">쿠폰 적용금액</th>
                                        <td><span class="valp usageCoupon">0</span><span>원</span></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">총 배송비</th>
                                        <td>3,000<span>원</span></td>
                                    </tr>
                                      <tr>
                                     <td colspan="2" style=" border-bottom:1px solid #ddd">
                                        </td>
                                    </tr>
                                    <tr>
                                     <th scope="row" style="color:#e53433">최종 결제금액</th>
                                        <td>
                                            </td>
                                    </tr>
                                    
                                      <tr>
                                        <td colspan="2">
                                            <em class="paymentPrice" id="sumSummary">10,100</em>
                                            <span>원</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                            </div>                          </div>                  
                            <!--// 최종결제금액 -->

    
                            <div style="clear:both"></div>
                                    
                        </div>

                                <div class="orderBtnWrap_green" style="padding-top:20px">
                        <a href="#" class="orderBtngreen" onclick="requestPayment(); return false;">결제하기</a>                      
                    </div>
                       
                        <!--// 포인트/혜택사용하기 -->
                    <!--// 최종결제 금액 확인 -->
                    
                    <form method="post" name="LGD_PAYINFO" id="LGD_PAYINFO" action="/xpay/payres" style="height: 0; width: 0;">
                        <input type="hidden" name="LGD_CUSTOM_SWITCHINGTYPE"    id="LGD_CUSTOM_SWITCHINGTYPE"   value="IFRAME" />
                        <input type="hidden" name="LGD_CUSTOM_PROCESSTYPE"      id="LGD_CUSTOM_PROCESSTYPE"     value="TWOTR" />
                        <input type="hidden" name="CST_WINDOW_TYPE"             id="CST_WINDOW_TYPE"            value="iframe" />
                        <input type="hidden" name="LGD_CUSTOM_SKIN"             id="LGD_CUSTOM_SKIN"            value="red" />
                        <input type="hidden" name="LGD_WINDOW_VER"              id="LGD_WINDOW_VER"             value="2.5" />
                        <input type="hidden" name="LGD_VERSION"                 id="LGD_VERSION"                value="JSP_Non-ActiveX_Paynow" />
                        
                        <input type="hidden" name="CST_PLATFORM"                id="CST_PLATFORM"               value="service" />
                        <input type="hidden" name="CST_MID"                     id="CST_MID"                    value="wcoop03" />
                        <input type="hidden" name="LGD_MID"                     id="LGD_MID"                    value="wcoop03" />
                        
                        <input type="hidden" name="LGD_BUYER"                   id="LGD_BUYER"                  value="황병열" />
                        <input type="hidden" name="LGD_BUYEREMAIL"              id="LGD_BUYEREMAIL"             value="anews0927@gmail.com" />
                        <input type="hidden" name="LGD_BUYERPHONE"              id="LGD_BUYERPHONE"             value="">
                        <input type="hidden" name="LGD_AMOUNT"                  id="LGD_AMOUNT"                 value="10100" />
                        <input type="hidden" name="LGD_PRODUCTINFO"             id="LGD_PRODUCTINFO"            value="<4월 정기Sale특가> 자연이란 동물복지유정란 10구입 외 1개" />
                        <input type="hidden" name="WOORI_POINT"                 id="WOORI_POINT"                value="0" />
                        
                        <input type="hidden" name="LGD_CASNOTEURL"              id="LGD_CASNOTEURL"             value="https://www.oasis.co.kr:443/xpay/casNote" />
                        <input type="hidden" name="LGD_RETURNURL"               id="LGD_RETURNURL"              value="https://www.oasis.co.kr:443/xpay/authenticationResult" />
                        
                        <input type="hidden" name="LGD_OID"                     id="LGD_OID"                    value="" />
                        <input type="hidden" name="LGD_HASHDATA"                id="LGD_HASHDATA"               value="" />
                        <input type="hidden" name="LGD_CUSTOM_USABLEPAY"        id="LGD_CUSTOM_USABLEPAY"       value="" />
                        <input type="hidden" name="LGD_TIMESTAMP"               id="LGD_TIMESTAMP"              value="" />
                        
                        <input type="hidden" name="LGD_RESPCODE"                id="LGD_RESPCODE"               value="" />
                        <input type="hidden" name="LGD_RESPMSG"                 id="LGD_RESPMSG"                value="" />
                        <input type="hidden" name="LGD_PAYKEY"                  id="LGD_PAYKEY"                 value="" />
                        <input type="hidden" name="LGD_CUSTOM_ROLLBACK"         id="LGD_CUSTOM_ROLLBACK"        value="" />
                        
                        <input type="hidden" name="LGD_ENCODING"            value="UTF-8" /> 
                        <input type="hidden" name="LGD_ENCODING_NOTEURL"    value="UTF-8" /> 
                        <input type="hidden" name="LGD_ENCODING_RETURNURL"  value="UTF-8" />
                        
                        <input type="hidden" name="chosenEventProductId"        id="chosenEventProductId"       value="4" />
                    </form>
                    
                    <form name="kakaoPayForm" id="kakaoPayForm" action="/kakaopay/approve" method="post">
                        <!-- 필수 -->
                        <input type="hidden" name="PayMethod"   id="PayMethod"      value="KAKAOPAY"/>
                        <input type="hidden" name="GoodsName"   id="GoodsName"      value="<4월 정기Sale특가> 자연이란 동물복지유정란 10구입 외 1개"/>
                        <input type="hidden" name="Amt"         id="Amt"            value="10100"/>
                        <input type="hidden" name="BuyerId"     id="BuyerId"        value="anews0927"/>
                        <input type="hidden" name="oid"         id="oid"            value=""/>

                        <!-- ready 응답 -->
                        <input type="hidden" id="tid"                       value=""/>
                        <input type="hidden" id="next_redirect_app_url"     value=""/>
                        <input type="hidden" id="next_redirect_mobile_url"  value=""/>
                        <input type="hidden" id="next_redirect_pc_url"      value=""/>
                        <input type="hidden" id="android_app_scheme"        value=""/>
                        <input type="hidden" id="ios_app_scheme"            value=""/>
                        <input type="hidden" id="created_at"                value=""/>
                        <input type="hidden" id="msg"                       value=""/>
                        <input type="hidden" id="code"                      value=""/>
                        <input type="hidden" id="resultStatusCode"          value=""/>
                        
                        <!-- DLP호출에 대한 응답 -->
                        <input type="hidden" name="SPU"             id="SPU"                value=""/>
                        <input type="hidden" name="SPU_SIGN_TOKEN"  id="SPU_SIGN_TOKEN"     value=""/>
                        <input type="hidden" name="MPAY_PUB"        id="MPAY_PUB"           value=""/>
                        <input type="hidden" name="NON_REP_TOKEN"   id="NON_REP_TOKEN"      value=""/>
                    </form>
                    
                    <form name="smilePayForm" id="smilePayForm" action="/smilepay/liteResult" method="post">
                        <!-- 필수 -->
                        <input type="hidden" name="PayMethod"   id="PayMethod"      value="SMILEPAY"/>
                        <input type="hidden" name="GoodsName"   id="GoodsName"      value="<4월 정기Sale특가> 자연이란 동물복지유정란 10구입 외 1개"/>
                        <input type="hidden" name="Amt"         id="Amt"            value="10100"/>
                        <input type="hidden" name="BuyerId"     id="BuyerId"        value="anews0927"/>

                        <!-- ready 응답 -->
                        <input type="hidden" id="tid"                       value=""/>
                        <input type="hidden" id="next_redirect_app_url"     value=""/>
                        <input type="hidden" id="next_redirect_mobile_url"  value=""/>
                        <input type="hidden" id="next_redirect_pc_url"      value=""/>
                        <input type="hidden" id="android_app_scheme"        value=""/>
                        <input type="hidden" id="ios_app_scheme"            value=""/>
                        <input type="hidden" id="created_at"                value=""/>
                        <input type="hidden" id="msg"                       value=""/>
                        <input type="hidden" id="code"                      value=""/>
                        
                        <!-- DLP호출에 대한 응답 -->
                        <input type="hidden" name="SPU"             id="SPU"                value=""/>
                        <input type="hidden" name="SPU_SIGN_TOKEN"  id="SPU_SIGN_TOKEN"     value=""/>
                        <input type="hidden" name="MPAY_PUB"        id="MPAY_PUB"           value=""/>
                        <input type="hidden" name="NON_REP_TOKEN"   id="NON_REP_TOKEN"      value=""/>
                    </form>
                    
                    <input type="hidden" id="userId" value="anews0927"/>
                    
                </div>
                <!-- //내용 입니다 -->
            </div>
            <!-- //오른쪽 영역 -->
        </div>
        <!-- LayerPopup의 Target DIV 생성 -->
        <div id="kakaopay_layer" style="z-index:9999999; display:none; position:absolute; top:111px; left:50%;margin-left:-200px;width:440px;height:540px;">
            <iframe name="kakaopayLayerIframe" id="kakaopayLayerIframe" src="" style="width:100%; height:100%" frameborder="0" scrolling="no"></iframe>
        </div>
        <!-- <div id="kakaopay_layer" style="z-index:9999999; display:none; position:absolute; top:111px; left:50%;margin-left:-200px;width:440px;height:540px;"></div> -->
        <iframe name="txnIdGetterFrame" id="txnIdGetterFrame" style="height:0; width:0;display:none"></iframe>
    </div>
    <!-- //컨텐츠 -->
        </div>
    </div>
</div>
        
    
    <!-- footer -->
  
    <!-- // footer -->
</div>
</body>
</html>
 