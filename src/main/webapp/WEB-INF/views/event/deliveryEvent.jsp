<%@ page contentType="text/html; charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_shop.css" />

<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.cookie.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.form.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/placeholders.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/clipboard.min.js"></script>
<script type="text/javascript" src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
    });
    // test
    function findPostCode(type) {
        new daum.Postcode({
            oncomplete : function(data) {
            	
            	var roadAddress = "";
            	var jibunAddress = "";
            	
                if (data.jibunAddress.length > 0) {
                	jibunAddress = data.jibunAddress;
                    //checkDeliveryTimeStatus(data.roadAddress, data.jibunAddress, type);
                } else {
                	jibunAddress = data.autoJibunAddress;
                    //checkDeliveryTimeStatus(data.roadAddress, data.autoJibunAddress, type);
                }
                
                if (data.roadAddress.length > 0) {
                	roadAddress = data.roadAddress;
                } else {
                	roadAddress = data.autoRoadAddress;
                }
                
                checkDeliveryTimeStatus(roadAddress, jibunAddress, type);
                
            }
        }).open();
    }
    
    function checkDeliveryTimeStatus(address, oldAddress, type) {
    	
        var replaceAddress = address.replace(/ /g, '');
        var replaceOldAddress = oldAddress.replace(/ /g, '');
        
        console.log(replaceAddress);
        console.log(replaceOldAddress);
        
        if (replaceAddress || replaceOldAddress) {
        	if (type == 'oasis') {
        		isOasisDelivery(replaceAddress, replaceOldAddress);	
        	} else {
        		isDaybreakDelivery(replaceAddress, replaceOldAddress);
        	}
            
        } else {
            alert("잘못된 주소입니다.");
        }
    }
    
    function isOasisDelivery(address, oldAddress) {
        var param = {
                address: address,
                oldAddress: oldAddress
            };
        $.ajax({
        	 url : contextPath + "/event/deliveryArea.jsp",
            type: "GET",
            dataType: "json",
            data: param,
            success: function(data) {
            	 if (data.data.oasisDeliveryYn && data.data.oasisDeliveryYn == "Y") {
                     if (data.data.daybreakDeliveryYn == "Y") {
                         $("#oasisDeliveryTxt").text("매장에서 배송과 새벽 배송이 가능한 주소입니다.");
                     } else {
                         $("#oasisDeliveryTxt").text("새벽 배송이 가능한 지역이 아닙니다. 고객님의 상품은 매장에서 배송됩니다.");
                     }
                 } else {
                     if (data.data.daybreakDeliveryYn == "Y") {
                         $("#oasisDeliveryTxt").text("새벽 배송이 가능한 주소입니다. 새벽 배송으로 구매해주세요.");
                     } else {
                         $("#oasisDeliveryTxt").text("새벽 배송이 가능한 지역이 아닙니다. 고객님의 상품은 택배로 배송됩니다.");
                     }
                 }
            }
        });
    }
    

    
    function isDaybreakDelivery(address, oldAddress) {
        var param = {
                address: address,
                oldAddress: oldAddress
            };
        $.ajax({
            url : contextPath + "/event/deliveryArea",
            type: "GET",
            dataType: "json",
            data: param,
            success: function(data) {
                if (data.status == 'OK') {
                    
                	if (data.data.oasisDeliveryYn == "Y") {
                        if (data.data.daybreakDeliveryYn == "Y") {
                            $("#daybreakDeliveryTxt").text("매장배송과 새벽배송이 가능한 주소입니다.");
                        } else {
                            $("#daybreakDeliveryTxt").text("새벽배송이 가능한 지역이 아닙니다. 고객님의 상품은 매장에서 배송됩니다.");
                        }
                    } else {
                        if (data.data.daybreakDeliveryYn == "Y") {
                            $("#daybreakDeliveryTxt").text("새벽배송이 가능한 주소입니다. 새벽배송으로 구매해주세요.");
                        } else {
                            $("#daybreakDeliveryTxt").text("새벽배송이 가능한 지역이 아닙니다. 고객님의 상품은 택배로 배송됩니다.");
                        }
                    }
                } else {
                  alert(data.message);
                }
            }
        });
    }

  
</script>




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
    
    
</script>



</head>
<body>

<div class="openPmWrap">
               <div class="openPmBanner">
            <img src="/dailychan/resources/images/promotion/top_img11.jpg" alt="프로모션 메인 배너">
        </div>
        
        <div style="background:#efefef;; text-align:center" id="oasisDelivery">
            <img src="/dailychan/resources/images/promotion/txt_06_new.png?dummy=0.06" alt="새벽배송 마감연장 ">
        </div>
        <div class="openPmDelivery">
            <a href="javascript:findPostCode()">
                <img src="/dailychan/resources//images/promotion/txt_01.png" alt="원하시는 배송방법으로 선택하세요">
            </a>
        </div>

        <div style="text-align:center; padding-bottom:100px;">
            <ul>
                <a href="#daybreakDelivery"><img src="/dailychan/resources/images/promotion/delivery_btn2b.png" alt="새벽배송" style="padding-right:20px;"></a>
                <a href="#oasisDelivery"><img src="/dailychan/resources/images/promotion/delivery_btn1.png" alt="매장직배송"></a><br>                                            
            </ul>
            <ul style="padding-top:40px;">                               
                <a href="#deliveryareaCheck"><img src="/dailychan/resources/images/promotion/delivery_btn2_2.png" alt="새벽배송 가능 지역 확인" style="padding-right:20px;"></a>               
                <a href="#deliveryTimetable"><img src="/dailychan/resources/images/promotion/delivery_btn1_2.png" alt="매장직배송 시간표 확인"></a>                
            </ul>            
         </div>
         <div class="openPmFooter" id="daybreakDelivery">
                <img src="/dailychan/resources/images/promotion/txt_04.png" alt="오아시스 새벽배송 안내">
            </div>
            <div class="openPmFooter" id="deliveryareaCheck" style="background-color:#fff;">
                <a href="#" onclick="findPostCode('daybreak'); return false;">
                    <img src="/dailychan/resources/images/promotion/txt_05.png" alt="오아시스 새벽배송가능 지역 확인">
                </a>
                <span id="daybreakDeliveryTxt" style="color:#181d7c; font-size:30px; font-weight:bold; margin-top:50px; display:block;"></span>
            </div>         
        <div class="openPmBenefit" id="oasisDelivery">
            <img src="/dailychan/resources/images/promotion/txt_02.png?dummy=0.01" alt="오아시스 매장 직배송 안내 ">
        </div>
        <div class="openPmBenefit" id="deliveryTimetable">
                <img src="/dailychan/resources/images/promotion/txt_02_2.png" alt="오아시스 매장 직배송 시간표 확인 ">
        </div>        
        <div class="openPmBenefit" style="background-color:#fff;">
            <a href="#" onclick="findPostCode('oasis'); return false;">
                <img src="/dailychan/resources/images/promotion/txt_03.png?dummy=0.05" alt="오아시스 매장 직배송 가능 지역 확인">
            </a>
            <br>
            <span id="oasisDeliveryTxt" style="color:#789b48; font-size:30px; font-weight:bold; margin-top:50px; display:block;">
            
            	
            </span>
        </div>
    </div>

</body>
</html>