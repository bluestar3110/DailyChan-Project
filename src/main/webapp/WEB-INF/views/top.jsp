<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/commons.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_shop.css" />



<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/jquery-ui.min.js"></script>

</head>
<body>
<!-- header -->
	<div id="header">

		<!-- 상단 헤더 영역 -->
		<div class="header_area">
			<div class="contents">
	
				<!-- 마이페이지 -->
				<div class="mypage_list">
					<ul>
						
							<li><a href="/dailychan/login">로그인</a></li>
							<li><a href="/dailychan/join/list" onclick="fbq('track', 'Join');">회원가입</a></li>
						
						
						<li><a href="/dailychan/product/reviewList">베스트 후기</a></li>
						<li><a href="/dailychan/myPage/orderList">주문/배송조회</a></li>
						<li class="end">
							<a href="/dailychan/cart/list">장바구니
								
							</a>
						</li>
					</ul>
				</div>
	
			<div class="mypage_list_left">
					<ul>
						<li><a href="/dailychan/myPage/main">마이페이지</a></li>
						<li><a href="/dailychan/help/faqMain">고객센터</a></li>
						
					    <li class="end"><a href="/login">1:1 상담</a></li>
						
						
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
                    <span><a class="ctrList5" href="/dailychan/event/openPromotion/3"></a></span>
                </li>
                <li class="gnb_cate"><span><a class="ctrList3 " href="/dailychan/product/list?categoryId=1"></a></span></li>
                <li class="gnb_cate"><span><a class="ctrList6 " href="/dailychan/product/new"></a></span></li>
                <li class="gnb_cate"><span><a class="ctrList4 " href="/dailychan/product/oh"></a></span></li>    
                <li class="gnb_cate"><span><a class="ctrList1 " href="/dailychan/product/today"></a></span></li>
                <li class="gnb_cate"><span><a class="ctrList2 " href="/dailychan/product/best"></a></span></li>
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
                    <li><span><a href="/dailychan/event/openPromotion/3">구매후기 이벤트</a></span></li>
                    <li><span><a href="/dailychan/product/list?categoryId=57&page=1&sort=priority&direction=desc&rows=60">외식 같은 집밥</a></span></li>
                    <li><span><a href="/dailychan/product/list?categoryId=59&page=1&sort=priority&direction=desc&rows=60">환절기 건강식품</a></span></li> 
                    <li><span><a href="/dailychan/product/list?categoryId=58&page=1&sort=priority&direction=desc&rows=60">간편선물세트</a></span></li>
                    <li><span><a href="/dailychan/product/list?categoryId=60&page=1&sort=priority&direction=desc&rows=60">아침식사대용</a></span></li>
                    <li><span><a href="/dailychan/product/list?categoryId=61&page=1&sort=priority&direction=desc&rows=60">우리아이 안심</a></span></li>
                    <li><span><a href="/dailychan/product/list?categoryId=62&page=1&sort=priority&direction=desc&rows=60">고객추천</a></span></li>
                    <li><span><a href="/dailychan/product/list?categoryId=80&page=1&sort=priority&direction=desc&rows=60">따뜻한 영양간식</a></span></li>
                    <div class="clear"></div>
                 </ul>
            </div>
        </div>
    </div>
</div>

		<!-- //gnb 영역 -->
		
		<!-- 상품검색 form -->
		<form id="productSearchForm" method="get" action="/dailychan/product/search">
			<input type="hidden" name="keyword"		value="" />
			<input type="hidden" name="page"		value="" />
			<input type="hidden" name="sort"		value="" />
			<input type="hidden" name="direction"	value="" />
			<input type="hidden" name="rows" />
		</form>
		<!--// 상품검색 form -->
		
		<!-- 상품 카테고리 form -->
		<form id="productListForm" method="get" action="/dailychan/product/list">
			<input type="hidden" name="categoryId"	value="" />
			<input type="hidden" name="page"		value="" />
			<input type="hidden" name="sort"		value="" />
			<input type="hidden" name="direction"	value="" />
			<input type="hidden" name="rows" />
		</form>
		<!--// 상품 카테고리 form -->	


</body>
</html>