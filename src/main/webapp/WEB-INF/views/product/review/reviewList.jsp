<%@ page contentType="text/html; charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/review.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/oasis_shop.css" />
<link rel="stylesheet" type="text/css" href="/dailychan/resources/css/notosanskr.css" />
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

<div class="contentsArea" id="sec_review">
        <div class="contentsWrap">
            <!-- top banner-->
            <div class="list_top_banner img_review">
                <div class="contents">
                    <p>
                        &nbsp;
                    </p>
                </div>
            </div>
            <!-- //top banner-->
            
            <!-- 오른쪽 영역 -->
           <script type="text/javascript">
          $(document).ready(function(){
        	     //리스트 아코디언
                  $(function(){
                                var article = (".reTable .moreShow");  
                                
                                $('#reviewContent').on('click', '.reTable .list  td', function() {
                                    var myArticle =$(this).parents().next("tr");  
                                    if($(myArticle).hasClass('moreHide')) {  
                                        $(article).removeClass('moreShow').addClass('moreHide');  
                                        $(myArticle).removeClass('moreHide').addClass('moreShow'); 
                                    }  
                                    else {  
                                        $(myArticle).addClass('moreHide').removeClass('moreShow');  
                                    }  
                                })
                            });
                        })
            </script>
                    
            <div class="content" id="reviewContent">
                <!-- 내용 입니다 -->     
                <div class="productList">
                    <div class="review_table">
                        <table class="tableCom mgT50 reTable">
                            <colgroup>
                                <col width="90">
                                <col width="211">
                                <col width="*">
                                <col width="95">
                                <col width="95">
                                <col width="130">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>상품명</th>
                                    <th>구매후기</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                    <th>고객만족도</th>
                                </tr>
                            </thead>
                            <tbody>
                                
	                                <tr class="notice list">
	                                    <td class="biTit"><p>공지</p></td>
	                                    <td colspan="2" class="tLeft">구매후기를 남겨 주시면 포인트가 적립됩니다.<br> 베스트후기로 선정되시면 10,000포인트를 <br> 적립해 드립니다.</td>
	                                    <td>관리자</td>
	                                    <td>2019-04-10</td>
	                                    <td></td>
	                                </tr>
	                                <tr class="moreArea moreHide">
	                                    <td></td>
	                                    <td colspan="4" class="moreCont">
	                                       <p><span style="color: rgb(102, 102, 102); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 14px;">"소중한 구매후기 감사합니다."&nbsp;&nbsp;</span></p><div class="bodCont" id="vDescription" style="margin: 0px; padding: 10px 0px; border: 0px; min-height: 200px; line-height: 19.2px;"><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">&nbsp;</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">우리 오아시스는&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">고객님의</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">소중한 사용후기를&nbsp;</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">토대로 더욱 더 좋은 상품과 서비스로 발전할 수</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">있도록&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">최선을 다하겠습니다.</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">&nbsp;</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">3월 베스트 후기 당첨자 30분은 아래와 같습니다.&nbsp;</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">매달 베스트</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">후기를 선정하여 다음달&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">10일에 발표될&nbsp;</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">예정입니다.</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">감사합니다.&nbsp;</span></p><p align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial; border: 0px;">&nbsp;</p><div align="left" style="color: rgb(68, 68, 68); font-family: 돋움, dotum, Tahoma, verdana, Helvetica, Arial;"><br></div><span style="color: rgb(102, 102, 102); font-family: 나눔고딕, NanumGothic, sans-serif; margin: 0px; padding: 0px; border: 0px; font-size: 14px;"><div align="left">2019년 3월 베스트 후기 당첨자 (총 30명)<br><br></div></span></div><span style="font-size: 10pt;">islimyoo***</span><div><span style="font-size: 10pt;">jinkyung1***</span></div><div><span style="font-size: 10pt;">25353***</span></div><div><span style="font-size: 10pt;">jhpark1***</span></div><div><span style="font-size: 10pt;">ame***</span></div><div><span style="font-size: 10pt;">smom***</span></div><div><span style="font-size: 10pt;">hiso***</span></div><div><span style="font-size: 10pt;">4030***</span></div><div><span style="font-size: 10pt;">ata***</span></div><div><span style="font-size: 10pt;">101387***</span></div><div><span style="font-size: 10pt;">6299***</span></div><div><span style="font-size: 10pt;">hyeoni***</span></div><div><span style="font-size: 10pt;">hiso***</span></div><div><span style="font-size: 10pt;">yeseu***</span></div><div><span style="font-size: 10pt;">skhye***</span></div><div><span style="font-size: 10pt;">han***</span></div><div><span style="font-size: 10pt;">85486***</span></div><div><span style="font-size: 10pt;">102a***</span></div><div><span style="font-size: 10pt;">jmh9***</span></div><div><span style="font-size: 10pt;">joann***</span></div><div><span style="font-size: 10pt;">eun0***</span></div><div><span style="font-size: 10pt;">redgisel***</span></div><div><span style="font-size: 10pt;">happyb***</span></div><div><span style="font-size: 10pt;">unyj***</span></div><div><span style="font-size: 10pt;">1041076***</span></div><div><span style="font-size: 10pt;">125093***</span></div><div><span style="font-size: 10pt;">5601***</span></div><div><span style="font-size: 10pt;">anne0***</span></div><div><span style="font-size: 10pt;">road9***</span></div><span style="font-size: 10pt;">ilji***</span><span style="font-size: 10pt;">​</span><div class="bodCont" id="vDescription" style="margin: 0px; padding: 10px 0px; border: 0px; min-height: 200px; line-height: 19.2px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;"><br>고객정보 보호를 위해 고객님 아이디 중 일부를&nbsp;</span><p>&nbsp;</p><p align="left" style="border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">마스킹&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">처리하였습니다.</span></p><p align="left" style="border: 0px;"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;">&nbsp;</span></p><p align="left" style="border: 0px;">&nbsp;</p><div align="left"><span style="color: rgb(102, 102, 102); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 14px;">이벤트에 참여해주신 모든 분들께 감사 인사드립니다.</span></div><span style="margin: 0px; padding: 0px; border: 0px; font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(102, 102, 102); font-size: 14px;"><div align="left"><span style="margin: 0px; padding: 0px; border: 0px;">매월 진행되는 리뷰 이벤트에 많은 참여 부탁드립니다.</span><span style="color: rgb(68, 68, 68); font-size: 12px; margin: 0px; padding: 0px; border: 0px;">&nbsp;</span></div></span><p>&nbsp;</p></div><p><span style="color: rgb(102, 102, 102); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 14px; margin: 0px; padding: 0px; border: 0px;">감사합니다. ​</span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(68, 68, 68); margin: 0px; padding: 0px; border: 0px;">&nbsp;</span></p>
	                                    </td>
	                                    <td></td>
	                                </tr>
                                
                                
	                                <!-- 1set -->
	                                <tr class="list">
	                                    <td>298</td>
	                                    <td>
	                                        <div class="re_product">
	                                            <a href="#"><span class="blind">상품상세 이동</span></a>
	                                            <dl>
	                                                <dt><img src="http://www.oasis.co.kr:8580/product/3484/thumb/thumb_348421a3512d-e85d-4a8d-b6cd-66b73cc2dc73.jpg" alt="베스트 후기 이미지"></dt>
	                                                <dd>천연발효종 블랙라바 (210g)</dd>
	                                            </dl>
	                                        </div>
	                                    </td>
	                                    <td class="rePa10">
	                                        <div class="re_pro_txt">
	                                            <dl>
	                                               <dt>이번에 오아시스에 유기농 빵이 몇종류가 새로 나왔더라구요~~~ 위에 소보루가 있어서 달콤한 스타일이겠다 싶어서 주문해 봤는데 </dt>
                                                    <!--<dd>이번에 오아시스에 유기농 빵이 몇종류가 새로 나왔더라구요~~~ 위에 소보루가 있어서 달콤한 스타일이겠다 싶어서 주문해 봤는데 <br>참 맛있네요 ^^<br><br>일단 이빵은 그냥 먹는것보다 오븐에 살짝 구워주면 소보루 부분이 바삭하고 안에 빵이 부드러워서 정말 맛있어집니다~~ ㅎㅎㅎ<br>안에 들어있는 치즈도 부드럽게 녹아서 더 맛있구요~~~ 고소한 견과류도 씹히면서 말린과일류도 들어있어서 전체적으로 맛이 풍부한 스타일이에요~~~~~ ^^<br>빵이 달달한 편이라서~ 따로 잼이나 스프레드를 바르지 않아도 충분히 맛있구요~<br>특히 아이들도 좋아할거 같습니다 ㅎㅎ<br>그렇다고 엄청 달달한빵은 아니구요 적당히 딱 좋은정도로 단맛이 느껴지는 빵입니다~~<br><br>마침 집에 휘핑크림이랑 딸기가 있길래 위에 토핑해봤는데요~~ 과일 생크림케잌 부럽지 않게 너무 맛있었습니다 ㅎㅎㅎ<br>사이즈는 많이 크지 않은편이고 유기농 밀가루에 유기농설탕에 천연 발효종까지 좋은 재료로 만든 제품이니 이정도면 가격은 좋은편인거 같아요~ 시중에서 유기농빵 구입하면 이가격보다 더 비싸더라구요<br><br>블랙라바~~ 적당히 달콤한맛 좋아하시면 강력추천 합니다 ㅎㅎㅎ <br>흰우유에 아주 잘 어울리는 맛있는 빵이에요 ^^ <br></dd> -->
	                                            </dl>
	                                        </div>
	                                    </td>
	                                    <td>slimyo****</td>
	                                    <td>2019.03.31</td>
	                                    <td>
	                                        <!-- star -->
	                                        <div class="cmStarBg">
	                                            
                                                    
                                                    
                                                    
                                                    
                                                    <p class="starWd5"></p>
                                                
                                                <span><em>comment.starRating</em>/5</span>
	                                            <!--별0개 : starWd0 / 별1개 : starWd01/ 별2개 : starWd2 / 별3개 : starWd3 / 별4개 : starWd4 / 별5개 : starWd5 / -->
	                                        </div>
	                                        <!-- //star -->
	                                    </td>
	                                </tr>
	                                <tr class="moreArea moreHide">
                                        <td></td>
                                        <td colspan="4" class="moreCont">
                                            <p>이번에 오아시스에 유기농 빵이 몇종류가 새로 나왔더라구요~~~ 위에 소보루가 있어서 달콤한 스타일이겠다 싶어서 주문해 봤는데 <br>참 맛있네요 ^^<br><br>일단 이빵은 그냥 먹는것보다 오븐에 살짝 구워주면 소보루 부분이 바삭하고 안에 빵이 부드러워서 정말 맛있어집니다~~ ㅎㅎㅎ<br>안에 들어있는 치즈도 부드럽게 녹아서 더 맛있구요~~~ 고소한 견과류도 씹히면서 말린과일류도 들어있어서 전체적으로 맛이 풍부한 스타일이에요~~~~~ ^^<br>빵이 달달한 편이라서~ 따로 잼이나 스프레드를 바르지 않아도 충분히 맛있구요~<br>특히 아이들도 좋아할거 같습니다 ㅎㅎ<br>그렇다고 엄청 달달한빵은 아니구요 적당히 딱 좋은정도로 단맛이 느껴지는 빵입니다~~<br><br>마침 집에 휘핑크림이랑 딸기가 있길래 위에 토핑해봤는데요~~ 과일 생크림케잌 부럽지 않게 너무 맛있었습니다 ㅎㅎㅎ<br>사이즈는 많이 크지 않은편이고 유기농 밀가루에 유기농설탕에 천연 발효종까지 좋은 재료로 만든 제품이니 이정도면 가격은 좋은편인거 같아요~ 시중에서 유기농빵 구입하면 이가격보다 더 비싸더라구요<br><br>블랙라바~~ 적당히 달콤한맛 좋아하시면 강력추천 합니다 ㅎㅎㅎ <br>흰우유에 아주 잘 어울리는 맛있는 빵이에요 ^^ <br></p>
                                            <div class="moreImg">
                                               
                                                   <img src="http://www.oasis.co.kr:8580/comment/2019/3/31/comment_34818_923261fb-3f75-41dd-9965-280fae96cbfb.jpg" alt="포토 구매후기 이미지">
                                               
                                            </div>
                                            
	                                            <div class="reBtnWrap">
	                                                <a href="/product/detail/3484-5345" class="reDetail">상품 상세보기</a>
	                                                <a href="#" class="reBasket" onclick="addCart(3484, 5345); return false;">장바구니 담기</a>
	                                            </div>
                                            
                                        </td>
                                        <td></td>
                                    </tr>
                                
	                                <!-- 1set -->

                                <!-- //1set -->  
                            </tbody>
                        </table>
                        
                        <!--페이징-->
						<div class="pagingWrap">
						    
						        
						        
						            <a class="on" onclick="paging('1'); return false;">1</a>
						        
						<!--             <a onclick="paging('2'); return false;">2</a>
 -->						        
						</div>
						<input type="hidden" id="page" value="1">
                        <!-- //페이징 -->
                    </div>
                    
                </div>
                <!-- //내용 입니다 -->
            </div>
            <!-- //오른쪽 영역 -->
        </div>
    </div>
</body>
</html>