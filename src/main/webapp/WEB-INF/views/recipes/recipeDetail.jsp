<%@ page contentType="text/html; charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데일리찬</title>

<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/notosanskr.css">
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_shop.css">
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/flick/jquery-ui.min.css">
<link rel="icon" href="/dailychan/resources/images/x-icon.ico" type="/dailychan/resources/images/x-icon.ico" />

<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.cookie.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery.form.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/placeholders.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/clipboard.min.js"></script>
<script type="text/javascript" src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" src="https://t1.daumcdn.net/postcode/api/core/190416/1555410100831/190416.js"></script>


<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_shop.js?dummy=5.05"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_common.js?dummy=5.12"></script>

</head>
<body>

<div class="allWrap">
    <!-- 헤더 -->
    
<div id="header">

		<!-- 상단 헤더 영역 -->
		<div class="header_area">
			<div class="contents">
	
		  <div class="contentsArea" id="sec_notice_view">
        <div class="contentsWrap">

<div class="notice_view_area">
                    <div id="recipe_category">
	                    <ul class="category_list">
	                        <li class="menuon">
	                            <a href="/company/story/recipeList">
	                               <span class="ico-menu1on">전체보기</span>
	                            </a>
	                        </li>
	                         
	                            <li>
	                                <a href="/company/story/recipeList?categoryNo=18">
	                                   <span class="ico-menu2">국/찌개/전골</span>
	                                </a>
	                            </li>
	                         
	                            <li>
	                                <a href="/company/story/recipeList?categoryNo=19">
	                                   <span class="ico-menu3">밥/죽</span>
	                                </a>
	                            </li>
	                         
	                            <li>
	                                <a href="/company/story/recipeList?categoryNo=20">
	                                   <span class="ico-menu4">반찬/김치</span>
	                                </a>
	                            </li>
	                         
	                            <li>
	                                <a href="/company/story/recipeList?categoryNo=21">
	                                   <span class="ico-menu5">일품요리</span>
	                                </a>
	                            </li>
	                         
	                            <li>
	                                <a href="/company/story/recipeList?categoryNo=22">
	                                   <span class="ico-menu6">간단요리</span>
	                                </a>
	                            </li>
	                         
	                            <li>
	                                <a href="/company/story/recipeList?categoryNo=23">
	                                   <span class="ico-menu7">면류/파스타</span>
	                                </a>
	                            </li>
	                         
	                            <li>
	                                <a href="/company/story/recipeList?categoryNo=24">
	                                   <span class="ico-menu8">간식/음료</span>
	                                </a>
	                            </li>
	                         
	                            <li>
	                                <a href="/company/story/recipeList?categoryNo=25">
	                                   <span class="ico-menu9">베이킹</span>
	                                </a>
	                            </li>
	                        
	                     </ul>
                    </div>
                    <dl>
                        <!-- title -->
                        <dt>
                            <div>
                                너는 제목이다!!
                            </div>
                            <span><!--2018-10-04--></span>
                        </dt>
                        <!-- //title -->
                        <!-- contents -->
                        <dd style="padding-top:10px">
                            <div class="noticeSnsWrap">
                                <div class="recipe_counter">
                                    <a href="#;" onclick="setRecipeWishlist(406, this)" class="receipe_view_off">찜</a>
                                    <span id="wishCount" style="padding-left:5px; display:inline-block;">2</span></div>
                                <a href="#" data-clipboard-text="https://www.oasis.co.kr/company/story/recipeDetail/BRD3/406" class="shareLink"></a>
                                <a id="fbCopyLink" href="https://www.facebook.com/sharer/sharer.php?u=https://www.oasis.co.kr/company/story/recipeDetail/BRD3/406" class="shareFacebook"></a>
                                <a href="javascript:sendLink();" class="shareKakao"></a>
                            </div>
                            <div style="clear:both; margin:70px 0 100px">
                                <p><img src="/dailychan/resources/images/바지락미역국.jpg" alt="상세정보 이미지">&nbsp;</p>
                               <!-- 이미지 띄우기! --> 
                            </div>
                            
                                <div class="deal_area oh_hot_deal_area" style="padding-bottom:0; width:1026px">
                                    <dl style="border-top:none">
                                      
                                    </dl>
                                </div>
                            
                        </dd>
                          <!-- btn : 목록보기 -->
                <!-- 0527, 수정-->
                
              <div class="btn_center btn_green">
                    <a href="/dailychan/recipemain.action"><span>목록보기</span></a>
                </div>  <!-- //btn : 목록보기 -->
            <br><br>           
                        <!-- //contents -->
                    </dl>
                    
                    
                </div>
                </div>
                
                </div>
                </div>
                </div>
                
                </div>
                </div>
                
</body>
</html>