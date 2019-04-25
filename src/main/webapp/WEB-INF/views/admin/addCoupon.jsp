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


<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="title" content="데일리찬::믿을 수 있는 먹거리" />
<meta name="description" content="세상에는 없는 가격! 데일리찬에는 있습니다! 업계 최초 24시간 배송서비스!" />

<meta property="og:title" content="데일리찬::믿을 수 있는 먹거리" />
<meta property="og:type" content="website" />
<meta property="og:description" content="세상에는 없는 가격! 데일리찬에는 있습니다! 업계 최초 24시간 배송서비스!" />
<meta property="og:url" content="http://192.168.16.2:8080/dailychan/" />
<meta property="og:image" content="/dailychan/resources/images/etc/oasis_kakao.jpg"/>
<meta name="naver-site-verification" content="3899c51fb285431259219d5399363f4ef440e1b6"/>

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
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_common.js?dummy=5.04"></script>


	<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_mypage.css" />
	
	

<!-- 현진이 스크립트 -->


<!-- 회원검색 -->
<script type="text/javascript">

	function searchId(){
		
		var f = document.searchForm;
		
		f.action = "addCoupon.action";
		f.submit();
		
	}


</script>

<!-- 쿠폰발급시 다 눌렀는지 첵크 -->
<script type="text/javascript">

function name() {
	
	var f = document.myForm;
	var str = f.value
	
	
	
}



</script>



<!-- //현진이 스크립트 -->


</head>

<body>
<div class="allWrap">

	<!-- 컨텐츠 -->
	<div class="contentsArea">
		<div class="contentsWrap">
			
			<div class="content"> 
				<!-- mypage -->
				<div class="mypage-wrap">

					<div class="mypage-personal">
						<div class="personal-info">
							<div class="grade">
								
									
									
										<i class="icon-grade family">member</i>
									
								
							</div>
							<div class="name"><b>관리자</b><em>님</em></div>

						</div>

						<div class="personal-status">
							<ul>
								<li>
									<a href="/dailychan/myPage/orderList">
										<i class="icon-mypage ps-order"></i>
										<font size="15pt"><b>최근 주문내역</b></font>
										<span><em>0건</em></span>
									</a>
								</li>
								<li>
									<a href="/dailychan/myPage/pointList">
										<i class="icon-mypage ps-chat"></i>
										<b>상품 문의내역</b>
										<span><em>0건</em></span>
									</a>
								</li>
								<li>
									<a href="/dailychan/myPage/couponList">
										<i class="icon-mypage ps-chat"></i>
										<b>1:1 상담내역</b>
										<span><em>0건</em></span>
									</a>
								</li>
								<li>
									<a href="/dailychan/myPage/qnaList">
										<i class="icon-mypage ps-point"></i>
										<b>환불 요청내역</b>
										<span><em>0건</em></span>							
									</a>
								</li>						
							</ul>
						</div>
					</div>


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
										<a href="/dailychan/admin/addPoint">포인트 발급</a>
										
									</li>
								
									<li>
										<a href="/dailychan/admin/coupon">쿠폰 발급</a>

										
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
						
							<!-- 쿠폰 발급을 위한 회원 검색창 -->
							<div class="mypage-cblock">
								<div class="mypage-subtit" align="center">
									<font  style=" font-family: 나눔고딕; font-size: 20pt; color: green; font-weight: bolder;"  > 회원별 쿠폰 발급</font>
									<p></p>
								</div>
									<div class="orderTit2 conS1">
									<div class="mypage-subtit">
										<h4>회원검색</h4>
										<p></p>
									</div>
									<div class="orderTbl2" style="border:solid 1px #ddd">
										<div class="mypage-orderinfo-wrap">
										
										<table style="border-top:1px solid #ddd">
				                            <colgroup>
				                                <col width="143px" />
				                                <col width="185px" />
				                            </colgroup>
				                            
				                            <tbody>	                            		
			                                    <tr>
			                                        <th scope="row"><span class="starBg">&nbsp;&nbsp;&nbsp;I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D</span></th>
			                                        <td>
				                                        <form action="" name="searchForm" method="post">
				                                        	<input type="text" name="price" id="price" style="height: 30px" class="inputWd260" value="" maxlength="50" data-user="" />
				                                       		<input type="button" value="검 색" style="height: 30px"  onclick="searchId();"/>
				                                        </form>
			                                        </td>	                                   
			                                    </tr>
			                                    <tr>
			                                        <th scope="row"><span class="starBg">&nbsp;&nbsp;&nbsp;결&nbsp;&nbsp;&nbsp;과&nbsp;&nbsp;&nbsp; </span></th>
			                                        <td>
				                                       	
				                                       	<!-- 그냥 값을 불러올 수 있게 하면 됨(input box 불필요) -->
				                                       	<input type="text" name="price" id="price" style="height: 30px" class="inputWd260" value="" maxlength="50" data-user="" />
					                                        
			                                        </td>
				                            	</tr>
		                                    </tbody>
		                         		</table>
		      		
		                         		</div>	
			                  		</div>
		                  		</div>
							</div>
							
							<!-- 회원쿠폰 발급 창-->
							<div class="mypage-cblock">
								<div class="mypage-subtit">
									<h4>쿠폰 발급</h4>
								</div>
									<div class="orderTbl2" style="border:solid 1px #ddd">
										<div class="mypage-orderinfo-wrap">
											<table style="border-top:1px solid #ddd; " >
					                            <colgroup>
					                                <col width="143" />
					                                <col width="143" />
					                                 <col width="143" />
					                                <col width="143" />
					                                <col width="100" />
					                            </colgroup>
					                            <tbody>
						                            <tr>
					                            	
				                                        <td><font style="font-weight: bold">ID</font></td>
				                                        <td><font style="font-weight: bold">쿠폰명</font></td>
				                                        <td><font style="font-weight: bold">시작날짜</font></td>
				                                        <td><font style="font-weight: bold">마감날짜</font></td>
				                                        <td><font style="font-weight: bold">발급</font></td>
						                           	</tr>    
						                           	<tr>
						                            
			                                        <td><input type="text" name="join_id"  value="" maxlength="50" /></td>
			                                        <td>
			                                        	<select name="coupon_name">
			                                        		<option value="">쿠폰A:10,000원</option>
			                                        		<option  value="">쿠폰A:5,000원</option>
			                                        		<option  value="">쿠폰A:1,000원</option>
			                                        	</select>			                                        
			                                        </td>
			                                        <td>2019/04/25</td>
			                                        <td>2019/04/27</td>
			                                        <td><input type="button" style="height: 30px;" value="쿠폰발급"/> </td>
					                            </tr>
						                           	                       	
						                        </tbody>
			                         		</table>
						                 <%--    <table style="border-top:1px solid #ddd; " >
					                            <colgroup>
					                                <col width="143" />
					                                <col width="143" />
					                                <col width="143" />
					                                <col width="143" />
					                                <col width="100" />
					                            </colgroup>
					                            <tr>
						                            <span style="height:10px;"></span>
			                                        <td><input type="text" name="memeber_id"  value="" maxlength="50" /></td>
			                                        <td>
			                                        	<select name="coupon_name">
			                                        		<option value="">쿠폰A:10,000원</option>
			                                        		<option  value="">쿠폰A:5,000원</option>
			                                        		<option  value="">쿠폰A:1,000원</option>
			                                        	</select>			                                        
			                                        </td>
			                                        <td>2019/04/25</td>
			                                        <td>2019/04/27</td>
			                                        <td><input type="button" style="height: 30px;" value="쿠폰발급"/> </td>
					                            </tr>
				                            	 <tr>
				                            	 	<span style="height:10px;"></span>
			                                        <td>id</td>
			                                        <td></td>
			                                        <td></td>
			                                        <td></td>
			                                        <td></td>
				                            	</tr>
			                         		</table> --%>
                         				</div>
									</div>
							</div>
						
						<!-- 버튼 -->
						
						  <div  style="padding-left:300px; padding-top:20px">
					      	<span>
					      	
					      	<!-- 돌아가기 -->
					      	<img src="/dailychan/resources/images/admin/K_button2.png" alt="" 
					      	onclick="javascript:location.href='main'"/>       
					      	</span>
                           
					      </div>
						
							
						</div>

					</div>
				</div>


			</div>

		</div>
	</div>

</div>
</body>
</html>