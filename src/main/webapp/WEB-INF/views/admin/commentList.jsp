<%@ page contentType="text/html; charset=UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
           $("#commentFile").change(function () {
        	   var file = $("#commentFile").val().split("\\");
        	   $("#photo").val(file[file.length-1]);
           });
       });
       
   function commentAddCheck() {
        $commentContent = $("#commentContent").val();
        $commentImage = $("#commentImage").val();
        $premiumYn = $("#premiumYn").val();
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
          var $form = $("#commentForm");
            $form.ajaxForm({
                dataType: "json",
                success: function(response) {
                    if (response.status == "OK") {  
                        window.location.reload(true);
                    }
                    else {
                        alert(response.message);
                    }
            },  
            error: function() {
                alert("오류가 발생했습니다.");
                }
            });
            $form.submit();
       } 
       
       function writeComment(title, filePath, orderProductId, orderId, productId) {
    	   $("#commentFile").val("");
    	   var imagePath = $("#imagePath").val();
    	   $("#title").text(title);
    	   $("#commentContent").val("");
    	   $("#photo").val("");
    	   $("#orderProductId").val(orderProductId);
    	   $("#orderId").val(orderId);
    	   $("#productId").val(productId);
    	   $("#starRating").val("5");
    	   $("#commentImage").attr("src",imagePath + filePath);
    	   $("#commentId").val("");
    	   $("#star2").addClass("on");
    	   $("#star3").addClass("on");
    	   $("#star4").addClass("on");
    	   $("#star5").addClass("on");
       }
       
       function modifyComment(commentId, orderProductId) {
    	   var imagePath = $("#imagePath").val();
    	   if (orderProductId && orderProductId.length > 0) {
    		   $.ajax({
                   url : contextPath + "/myPage/commentInfo/" + commentId + "/" + orderProductId,
                   type : "GET",
                   dataType : "json",
                   success : function(response) {
                       if (response.status == "OK") {
                           $("#title").text(response.data.productTitle);
                           $("#orderProductId").val(response.data.orderProductId);
                           $("#orderId").val(response.data.orderId);
                           $("#productId").val(response.data.productId);
                           $("#commentImage").attr("src",imagePath + response.data.filePath);
                           $("#commentContent").val(response.data.commentContent);
                           $("#commentId").val(response.data.commentId);
                           $("#photo").val("");
                           if (response.data.deliveryRate == "FAST") {
                               setDeliveryRate("FAST","빨라요");
                           } else if (response.data.deliveryRate == "SOSO") {
                               setDeliveryRate("SOSO","괜찮아요");
                           } else {
                               setDeliveryRate("SLOW","느려요");
                           }
                           if (response.data.priceRate == "HIGH") {
                               setPriceRate("HIGH","안 싸네요");
                           } else if (response.data.priceRate == "SOSO") {
                               setPriceRate("SOSO", "괜찮아요");
                           } else  {
                               setPriceRate("LOW", "싸게 샀어요");   
                           }
                           starRating(response.data.starRating);
                       } else {
                           alert(response.message);
                       }
                   }
               })
    	   } else {
    		   $.ajax({
                   url : contextPath + "/myPage/notOrder/commentInfo/" + commentId,
                   type : "GET",
                   dataType : "json",
                   success : function(response) {
                       if (response.status == "OK") {
                           $("#title").text(response.data.productTitle);
                           $("#orderProductId").val("");
                           $("#orderId").val("");
                           $("#productId").val(response.data.productId);
                           $("#commentImage").attr("src",imagePath + response.data.filePath);
                           $("#commentContent").val(response.data.commentContent);
                           $("#commentId").val(response.data.commentId);
                           $("#photo").val("");
                           if (response.data.deliveryRate == "FAST") {
                               setDeliveryRate("FAST","빨라요");
                           } else if (response.data.deliveryRate == "SOSO") {
                               setDeliveryRate("SOSO","괜찮아요");
                           } else {
                               setDeliveryRate("SLOW","느려요");
                           }
                           if (response.data.priceRate == "HIGH") {
                               setPriceRate("HIGH","안 싸네요");
                           } else if (response.data.priceRate == "SOSO") {
                               setPriceRate("SOSO", "괜찮아요");
                           } else  {
                               setPriceRate("LOW", "싸게 샀어요");   
                           }
                           starRating(response.data.starRating);
                       } else {
                           alert(response.message);
                       }
                   }
               })
    	   }
    	   
       }
       
       function commentRemove(commentId) {
           if (confirm("구매후기를 삭제하시겠습니까?") == true) {
               $.ajax({
                   url : contextPath + "/myPage/commentRemove/" + commentId,
                   type: "GET",
                   dataType: "json",
                   success: function(response) {
                       if (response.status == "OK") {
                           window.location.reload(true);
                       }
                       else {
                           alert(response.message);
                       }
                   }
               })
           } else {
               return;
           }
       }
       
       function contentSubstring(content) {
    	   var s = content.substring(0,200);
    	   return s;
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
        
       function imageUpload() {
           document.getElementById("commentFile").click();
       };
       
       function setDeliveryRate(code,status) {
    	   $("#deliveryRate").val(code);
    	   //$("#deliveryText").text(status).next().hide();
       }
       
       function setPriceRate(code,status) {
    	   $("#priceRate").val(code);
    	   //$("#priceText").text(status).next().hide();
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
								
									
									
										<i class="icon-grade family">family</i>
									
								
							</div>
							<div class="name"><b>관리자</b><em>님</em></div>
						</div>

						<div class="personal-status">
							<ul>
								<li>
									<a href="/dailychan/admin/orderList">
										<i class="icon-mypage ps-order"></i>
										<font size="15pt"><b>최근 주문내역</b></font>
										<span><em>0건</em></span>
									</a>
								</li>
								<li>
									<a href="/dailychan/admin/pointList">
										<i class="icon-mypage ps-chat"></i>
										<b>상품 문의내역</b>
										<span><em>0건</em></span>
									</a>
								</li>
								<li>
									<a href="/dailychan/admin/couponList">
										<i class="icon-mypage ps-chat"></i>
										<b>1:1 상담내역</b>
										<span><em>0건</em></span>
									</a>
								</li>
								<li>
									<a href="/dailychan/admin/qnaList">
										<i class="icon-mypage ps-point"></i>
										<b>환불 요청내역</b>
										<span><em>0건</em></span>							
									</a>
								</li>						
							</ul>
						</div>
					</div>


					<!-- mypage-contents-wrap -->
					<div class="mypage-contents-wrap">
						
						



						<div class="mypage-lnb">
							<a href="/dailychan/admin/main">
								<h3>Admin</h3>
							</a>
							<ul>
									<li>
										<a href="/dailychan/admin/register">상품등록</a>
										
									</li>
									
									<li>
										<a href="/dailychan/admin/recipeRegister">레시피등록</a>
										
									</li>
								
									<li>
										<a href="/dailychan/admin/orderList">주문관리</a>
	
										
									</li>

								
									<li>
										<a href="/dailychan/admin/pointList">포인트 발급</a>
										
									</li>
								
									<li>
										<a href="/dailychan/admin/couponList">쿠폰 발급</a>

										
									</li>
								
									<li>
										<a href="/dailychan/admin/commentList">구매후기</a>
										
										
									</li>
								
									<li>
										<a href="/dailychan/admin/productQnaList">상품문의내역</a>
										
										
									</li>
								
									<li>
										<a href="/dailychan/admin/qnaList">1:1상담내역</a>
										
										
									</li>
								
									<li>
										<a href="/dailychan/admin/refundProductList">환불서비스</a>
										
									</li>
								
									<li>
										<a href="/dailychan/admin/info">회원정보 관리</a>

										
									</li>

							</ul>
						</div>


						<div class="mypage-contents">
							<div class="mypage-cblock">
								<div class="mypage-subtit">
									<h4>미답글 구매후기 (0건)</h4>
								</div>

								<div class="mypage-table mypage-goods-list for-review">
									<table>
										<colgroup>
											<col>
											<col style="width:100px;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">상품정보</th>
												<th scope="col">구매후기</th>
											</tr>
										</thead>
										<tbody>
											
					                        <tr>
					                        	<td colspan="2">
					                            	<div class="maQnaNon">
					                                    <div class="empty-msg">등록할 구매후기가 없습니다.</div>
					                                </div>
				                                </td>
					                        </tr>
					                        
					                        
										</tbody>
									</table>
								</div>
								
								<div class="paging-wrap">
									
								</div>
								
							</div>

							<div class="mypage-cblock">
								<div class="mypage-subtit">
									<h4>작성한 구매후기 (0건)</h4>
									<p></p>
								</div>
								<div class="mypage-table mypage-goods-list">
									<table>
										<colgroup>
											<col>
											<col style="width:80px;">
											<col style="width:110px;">
											<col style="width:90px;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">상품정보</th>
												<th scope="col">포인트</th>
												<th scope="col">작성일</th>
												<th scope="col">구매후기</th>
											</tr>
										</thead>
										<tbody>
											
											<tr>
												<td colspan="4">
													<div class="empty-msg">구매후기가 없습니다.</div>
												</td>
											</tr>
											
											
										</tbody>
									</table>
								</div>
								
								<div class="paging-wrap">
									
								</div>
								
							</div>
						</div>
					</div>
					<!--// mypage-contents-wrap -->
				</div>
				<!--// mypage-wrap -->
			</div>
		</div>
	</div>
    <!-- //컨텐츠 -->
  <div class="oasisLayerPop" style="height:700px">
  <form id ="commentForm"  action="/dailychan/myPage/writeComment" enctype="multipart/form-data" method="post">
        <div class="oasisLayerPop_in">
            <div class="oasisLPtit" style="position:relative">
				<strong class="comLayerTit">구매후기 작성</strong>
				<div style="position:absolute; width: 27px;height: 27px;top: 27px;right: 26px;">
                        <a href="#" onclick="return false;" class="oasisMapClose2 popOasisDeliveryClose"></a>
                    </div>
            </div>
            
            <div class="oasisLPconWrap" style="height:600px">
            	<div class="comLayerCon">
            	
	                <div class="oasisLPcon1">
	                    <div class="productImg">
	                        <span><img src="" id="commentImage" alt="" /></span>
	                        <strong id="title"></strong>
	                    </div>
	                    <div class="satisfy">
	                        <div class="wrigtStarBg">
	                           <a href="#" class="on" id="star1" onClick="starRating(1); return false;"></a>
	                           <a href="#" class="on" id="star2" onClick="starRating(2); return false;"></a>
	                           <a href="#" class="on" id="star3" onClick="starRating(3); return false;"></a>
	                           <a href="#" class="on" id="star4" onClick="starRating(4); return false;"></a>
	                           <a href="#" class="on" id="star5" onClick="starRating(5); return false;"></a>
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
	                           <col width="110" />
	                           <col width="*" />
	                       </colgroup>
	                       <tbody>
	                           <tr style="display:none">
	                               <th>만족도</th>
	                               <td>
	                                   <ul>
	                                   	   <li class="pcIcon1">
                                                <strong>배송</strong>
                                                <span class="selectBoxWrap">
                                                    <label for="deliveryRate">빨라요</label> <!-- 초기 option 값-->
                                                    <select id="deliveryRate" name="deliveryRate">
                                                        <option value="SLOW" selected="selected">느려요</option>
                                                        <option value="SOSO">괜찮아요</option>
                                                        <option value="FAST">빨라요</option>
                                                    </select>
                                                </span>
                                            </li>
                                            
                                            <li class="pcIcon2">
                                                <strong>가격</strong>
                                                <span class="selectBoxWrap">
                                                    <label for="priceRate">싸게 샀어요</label> <!--초기 option 값-->
                                                    <select id="priceRate" name="priceRate">
                                                        <option value="HIGH" selected="selected">안 싸네요</option>
                                                        <option value="SOSO">괜찮아요</option>
                                                        <option value="LOW">싸게 샀어요</option>
                                                    </select>
                                                </span>
                                            </li>
	                                   </ul>
	                                   <div class="clear"></div>
	                               </td>
	                           </tr>
	                           <tr>
	                               <th>구매후기</th>
	                               <td>
	                                   <div class="cmTxtInput">
	                                   <textarea class="cmMtinput" placeholder="해당상품의 리뷰와 무관한 내용이나 동일 문자의 반복 등 부적합한&#13;&#10;내용일 때는 통보없이 삭제 및 지급된 포인트가 회수될 수 있습니다.&#13;&#10;&#13;&#10;내용을 입력해 주세요.&#13;&#10;(20자 이상 3,000자 미만)" id="commentContent" name="commentContent" style="resize:none;">
	                                   </textarea>
	                                   </div>
	                               </td>
	                           </tr>
	                           <tr>
	                               <th>사진 등록</th>
	                               <td>
	                                   <div class="cmAddPhotoWrap">
	                                       <input type="text" readonly="readonly" id="photo"/> <a href="#" class="cmAddPhotoBtn" onClick="imageUpload(); return false;">사진찾기</a> 
	                                    </div>
	                               </td>
	                           </tr>
	                       </tbody>
	                   </table>
	                   
	                   <div class="comWriteBanner">
	                       <!-- <img src="/images/shop/prod_banner_02.jpg" alt="오아시스 구매후기 오픈 프로모션!" />  -->
	                   </div>
                    </div>
                    <div class="oasisLPcon3">
	                     <a href="#" onClick="commentAddCheck(); return false;">등록하기</a>
	                     <a href="#" class="oasisMapClose2" onclick="return false;">취소하기</a>
	                </div>
               </div>
               <!--// 구매후기쓰기 -->
             </div>
                
            <div class="comWriteClose">
                <a href="#" class="oasisMapClose2" onclick="return false;"><span>닫기</span></a>
            </div>
            <input type="hidden" id="premiumYn" name="premiumYn"/>
            <input type="file" name="commentFile" id="commentFile" style="height: 0; width: 0;" />
            <input type="hidden" id="starRating" name="starRating" value="5"/>
            <input type="hidden" id="orderId" name="orderId" />
            <input type="hidden" id="productId" name="productId"/>
            <input type="hidden" id="orderProductId" name="orderProductId"/> 
            <input type="hidden" id="commentId" name="commentId"/>
<!--             <input type="hidden" id="deliveryRate" name="deliveryRate" value="FAST"/> -->
<!--             <input type="hidden" id="priceRate" name="priceRate" value="LOW"/> -->
        </div>
        </form>
    </div>
    <div class="oasisDim"></div>
    
    <input type="hidden" value="http://www.oasis.co.kr:8580" id="imagePath"/>
</div>

</body>
</html>