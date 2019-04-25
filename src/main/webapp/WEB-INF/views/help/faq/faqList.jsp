<%@ page contentType="text/html; charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_mypage.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/common.css" />
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

<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_common.js"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_shop.js"></script>



</head>
<body>
<div class="content"> 
                <!-- 내용 입니다 -->
                
            <!-- mypage -->
                <div class="mypage-wrap">
                    <div class="mypage-personal">
                        <div class="personal-info" style=" height: 141px;">
                            <p class="help_title">고객센터</p>              
                        </div>
                        <div class="personal-status" style=" height: 140px; padding-top:50px;">
                            <ul>
                                <p class="help_search">FAQ검색</p>
                                    <div class="cusBannerSearch" style="width: 60%;float: left;margin-top: 0px;">       
                                        <input type="text" id="faqKeyword" class="inputWd710 help_input" value="" placeholder="자주 찾는 질문을 검색해 보세요~^^">
                                        <a href="#" onclick="faqSearch(); return false;" style=" height: 40px;color: #fff;">검색</a>                  
                                    </div>
                            </ul>
                        </div>
                    </div>
                    <div class="mypage-contents-wrap">
                        
                            
                                
                            
                            
                            
                            
                            
                            
                        
                        
                        











                        <div class="mypage-lnb">
                            <ul>
                                
                                    <li class="on">
                                        <a href="/dailychan/faqList.action">FAQ</a>
                                        
                                        
                                    </li>
                                
                                    <li>
                                        <a href="/dailychan/deliveryRule.action">이용안내</a>
                                        
                                        
                                            <ul>
                                            
                                                <li><a href="/dailychan/deliveryRule.action">배송정책</a></li>
                                            
                                                <li><a href="/dailychan/cancelRule.action">취소/교환/반품</a></li>
                                            
                                                <li><a href="/dailychan/selfRefund.action">Self환불서비스</a></li>
                                            
                                            </ul>
                                        
                                    </li>
                                
                                    <li>
                                        <a href="/dailychan/qnaList.action">1:1 친절상담</a>
                                        
                                        
                                            <ul>
                                            
                                                <li><a href="/dailychan/qnaList.action">상담내역</a></li>
                                            
                                                <li><a href="javascript:openQuestionDialog();">상담하기</a></li>
                                            
                                            </ul>
                                        
                                    </li>
                                
                                    <li>
                                        <a href="/dailychan/notice.action">공지사항</a>
                                        
                                        
                                    </li>
                                
                            </ul>
                        </div>
                   
                    <!-- 서브 카테고리 -->
                        <div class="mypage-contents">
<!-- 서브 카테고리 -->
                  <div class="faqMenuBlock faqlist">
	                <ul>
	                    
	                        <li class="on">
	                            <a href="#" onclick="selectTab(17); return false;">BEST 10</a>
	                        </li>
	                    
	                        <li class="">
	                            <a href="#" onclick="selectTab(1); return false;">회원/정보</a>
	                        </li>
	                    
	                        <li class="">
	                            <a href="#" onclick="selectTab(2); return false;">주문/결제</a>
	                        </li>
	                    
	                        <li class="">
	                            <a href="#" onclick="selectTab(3); return false;">배송</a>
	                        </li>
	                    
	                        <li class="">
	                            <a href="#" onclick="selectTab(4); return false;">취소/교환/반품</a>
	                        </li>
	                    
	                        <li class="">
	                            <a href="#" onclick="selectTab(5); return false;">서비스/기타</a>
	                        </li>
	                    
	                   </ul>
	               </div>
                    <!--// 서브 카테고리 -->
                    
                    
                    
                        
                        
                            <!-- qna리스트 -->
                            <ul class="qnaList">
                                
                                    <li>
                                        <strong class="question">
                                            <a href="#" onclick="return false;">
                                                <span class="question_q">
                                                    <img src="/dailychan/resources/images/customer/web_ico_q.png" alt="질문">
                                                </span>신선 상품의 상태가 좋지 않아요. 
                                            </a>
                                        </strong>
                                        <div class="answer">
                                        <span class="answer_a"><img src="/dailychan/resources/images/customer/web_ico_a.png" alt="답변"></span>
                                        <p><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 11pt;">&nbsp;</span></p><p><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 11pt;">오아시스에서는 항상 고객 여러분께&nbsp;</span></p><p><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 11pt;">신선한 상품을 제공하고자&nbsp;</span><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 11pt;">노력하고 있습니다.&nbsp;</span></p><p><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 11pt;">&nbsp;</span></p><p><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 11pt;">구입하신 상품 중&nbsp;</span></p><p><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 11pt;">품질에 이상이 있는 상품을&nbsp;</span><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 11pt;">구입하신 고객님께서는</span></p><p><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 11pt;"> <a href="https://m.oasis.co.kr/myPage/refundProductList" style="display:inline-block; height:29px; line-height:42px"><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 11pt; color: rgb(108, 164, 53); background-color: rgb(255, 255, 255);"><b>Self 환불 서비스</b></span></a>를 이용해 신청 주십시오.&nbsp;</span></p><p><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 11pt;">&nbsp;</span></p><p><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 11pt;">확인 후 즉시 환불해 드리겠습니다. ​</span></p><p><span style="font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; font-size: 12pt;">&nbsp;</span></p>
                                        </div>
                                    </li>
                                
                                
                            </ul>
                        
                    
                    
                    <!--페이징-->
                    <div class="pagingWrap">
                        
                            
                            
                                <a href="javascript:faqPage(1);" class="on">1</a>
                            
                            
                        
                    </div>
                    <!--//페이징-->
                    <div id="view_icon" style="margin:0; padding:0">
                                <ul class="list_icon">
                                    <li>
                                        <a href="/dailychan/faqList.action " class="bg_main link_item1"> FAQ</a>
                                    </li>
                                    <li>
                                        <a href="/dailychan/notice.action" class="bg_main link_item2"> 공지사항</a>
                                    </li>
                                    
			                        
			                             <li class="end">
			                                 <a href="javascript:openQuestionDialog();" class="bg_main link_item3">1:1친절상담</a>
			                             </li>
			                         
                                    <li>
                                        <a href="/dailychan/deliveryRule.action" class="bg_main link_item4">이용안내</a>
                                    </li> 
                                    <li style="margin-right:0px">
                                        <a href="/myPage/refundProductList" class="bg_main link_item5 zero">환불서비스</a>
                                    </li> 
                                    <li>
                                        <a href="/myPage/orderList" class="bg_main link_item6">주문배송조회</a>
                                    </li> 
                                    <li>
                                        <a href="/myPage/wishList" class="bg_main link_item7">찜내역</a>
                                    </li>   
                                    <li>
                                        <a href="/myPage/frequencyList" class="bg_main link_item8">자주구매상품</a>
                                    </li> 
                                    <li>
                                        <a href="/myPage/pointList" class="bg_main link_item9">포인트내역</a>
                                    </li> 
                                    <li style="margin-right:0px">
                                        <a href="/myPage/couponList" class="bg_main link_item10 zero">쿠폰내역</a>
                                    </li>   
                                    <li>
                                        <a href="/myPage/commentList" class="bg_main link_item11">구매후기</a>
                                    </li> 
                                    <li>
                                        <a href="/dailychan/qnaList.action" class="bg_main link_item12">상품문의내역</a>
                                    </li>   
                                    <li>
                                        <a href="/myPage/invite" class="bg_main link_item13">친구추천</a>
                                    </li> 
                                    <li>
                                        <a href="/event/openPromotion/1" class="bg_main link_item14">오픈이벤트</a>
                                    </li> 
                                    <li style="margin-right:0px">
                                        <a href="/dailychan/review.action" class="bg_main link_item15">베스트구매후기</a>
                                    </li>   
                                </ul>
                            </div> <!--아이콘 끝-->
                    <form id="contentForm" method="get">
                        <input type="hidden" name="keyword" value="">
                        <input type="hidden" name="page" value="1">
                        <input type="hidden" name="categoryNo" value="17">
                    </form>
                    
                </div>
                <!-- //내용 입니다 -->
            </div>
            </div>
             
            </div>
</body>
</html>