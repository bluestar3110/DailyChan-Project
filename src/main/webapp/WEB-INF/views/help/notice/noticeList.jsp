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
                        
                            



<!-- //oasisLayerPop (1:1상담신청) -->

                        <div class="mypage-lnb">
                            <ul>
                                
                                    <li >
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
                                <li class="on">
                                        <a href="/dailychan/notice.action">공지사항</a>
                                        
                                        
                                    </li>
                                
                            </ul>
                        </div>
                   
                               <!-- 서브 카테고리 -->
                        <div class="mypage-contents">
                        <div class="mypage-subtit" style="margin-bottom:0">
                                    <h4 style="float:left; padding-top:5px">공지사항</h4>
                                </div>
                            <!-- 검색영역 -->
                <div class="notice_search_area">
                    <input type="text" id="contentKeyword" value="" >
                    <a href="#" onclick="searchContent(); return false;"><span>검색</span></a>
                </div>
                <!-- //검색영역 -->
                
                <!-- 게시판 , 리스트 -->
                <div class="notice_list_area">
                    <table cellpadding="0" cellspacing="0" border="0" class="notice_table">
                        <colgroup>
                            <col width="105" />
                            <col width="*" />
                            <col width="165" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>등록일</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                                <tr>
                                    <td>
                                        42
                                    </td>
                                    <td class="td_left">
                                        <a href="/company/story/detail/NTC1/1715?page=1&keyword=">[공지] 새벽배송 경기도 수원시 전지역, 경기도 용인시 기흥구 주문마감 연장</a>
                                    </td>
                                    <td>
                                        2019-04-22
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td>
                                        41
                                    </td>
                                    <td class="td_left">
                                        <a href="/company/story/detail/NTC1/1714?page=1&keyword=">[공지] 영동식품 젓갈류, 과태료 처분 공지</a>
                                    </td>
                                    <td>
                                        2019-04-17
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td>
                                        40
                                    </td>
                                    <td class="td_left">
                                        <a href="/company/story/detail/NTC1/1678?page=1&keyword=">[공지] 새벽배송 서울시 광진구, 강동구 주문마감 연장</a>
                                    </td>
                                    <td>
                                        2019-04-16
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td>
                                        39
                                    </td>
                                    <td class="td_left">
                                        <a href="/company/story/detail/NTC1/1648?page=1&keyword=">[공지] 고객센터 운영시간 연장 안내</a>
                                    </td>
                                    <td>
                                        2019-04-12
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td>
                                        38
                                    </td>
                                    <td class="td_left">
                                        <a href="/company/story/detail/NTC1/1624?page=1&keyword=">[3월 당첨자 발표] 베스트 후기 30분을 선정하여 10,000포인트를 드립니다.</a>
                                    </td>
                                    <td>
                                        2019-04-10
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td>
                                        37
                                    </td>
                                    <td class="td_left">
                                        <a href="/company/story/detail/NTC1/1425?page=1&keyword=">[1차 SNS 구매후기 당첨자 발표] 생생 구매후기남기고 오아시스 쿠폰 받으세요.</a>
                                    </td>
                                    <td>
                                        2019-03-14
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td>
                                        36
                                    </td>
                                    <td class="td_left">
                                        <a href="/company/story/detail/NTC1/1356?page=1&keyword=">[2월 당첨자 발표] 베스트 후기 30분을 선정하여 10,000포인트를 드립니다.</a>
                                    </td>
                                    <td>
                                        2019-03-08
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td>
                                        35
                                    </td>
                                    <td class="td_left">
                                        <a href="/company/story/detail/NTC1/1279?page=1&keyword=">[공지] 새벽배송 서초구 주문마감 연장</a>
                                    </td>
                                    <td>
                                        2019-02-25
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td>
                                        34
                                    </td>
                                    <td class="td_left">
                                        <a href="/company/story/detail/NTC1/1252?page=1&keyword=">[공지] 신규 가입 혜택 변경 안내</a>
                                    </td>
                                    <td>
                                        2019-02-22
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td>
                                        33
                                    </td>
                                    <td class="td_left">
                                        <a href="/company/story/detail/NTC1/1198?page=1&keyword=">[공지] 새벽배송 주문 마감 변경 안내</a>
                                    </td>
                                    <td>
                                        2019-02-09
                                    </td>
                                </tr>
                            
                        </tbody>
                    </table>
                </div>
                <!-- //게시판 , 리스트 -->
                
                <!--페이징-->
                <div class="pagingWrap">
                    
                        
                        
                            <a href="javascript:contentPage(1);" class='on' >1</a>
                        
                
                        
                    
                </div>
                <!--//페이징-->
                
                <form id="contentSearchForm">
                    <input type="hidden" name="page"    value="1" />
                    <input type="hidden" name="keyword" value="" />
                </form>
               
               <form id="faqContentForm" method="get">
			        <input type="hidden" name="keyword"     value="" />
			        <input type="hidden" name="page"        value="" />
			        <input type="hidden" name="categoryNo"  value="" />
			    </form>
                <!-- //내용 입니다 -->
                        </div>
            <!-- //오른쪽 영역 -->
                </div>
            </div>
        </div>
    </div>        
    <!-- //컨텐츠 -->
                  
                    <form id="contentForm" method="get">
                        <input type="hidden" name="keyword" value="">
                        <input type="hidden" name="page" value="1">
                        <input type="hidden" name="categoryNo" value="17">
                    </form>
              
             
       
</body>
</html>