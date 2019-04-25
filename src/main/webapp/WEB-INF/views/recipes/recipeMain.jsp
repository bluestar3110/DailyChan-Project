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
    

    
    <!-- 컨텐츠 -->
    <div class="contentsArea" id="sec_cs_common">
        <div class="contentsWrap">
            
            <!-- 오른쪽 영역 -->
            <div class="content">
                <!-- 내용 입니다 -->
                
                <h3 class="pListTit">맛있는 요리/간편한 주문</h3>
                
                <!-- 오아시스 산지소식 서브카피 -->
                <h3 class="pListSubTit">오아시스 제품으로 즐길 수 있는 레시피</h3>
                <!-- 오아시스 산지소식 서브카피 -->
                
                <!-- 검색영역 -->
                <div class="notice_search_area" style="border-top:none;padding-top: 20px;">
                    <ul class="recipe_tab" style="font-size: 16px; font-weight: bold; padding: 5px;">
                        <li onclick="searchContent(); return false;" class="on" style="border-right: solid 1px #ddd">
                            요리별 레시피
                        </li>
                      
                            <li onclick="searchContent('Y'); return false;" >
                                나의 관심 레시피
                            </li>
                        
                    </ul>
                    <input type="text" id="contentKeyword" value="" >
                    <a href="#" onclick="searchContent(); return false;"><span>검색</span></a>
                </div>
                
                <div class="prodListTop" style="height:30px">
                        
                        <div class="sort_area">
                            
                            <span class="selectBoxWrap">
                                <label for="selectNumber" style="top:3px">기본</label>
                                <select id="selectNumber" onChange="searchContentBySort(this.value); return false;">
                                    <option value="asc" selected='selected'>&nbsp;&nbsp;기본</option>
                                    <option value="desc" >&nbsp;&nbsp;최신등록순</option>
                                </select>
                            </span>
                        </div>
                    </div>
                <!-- //검색영역 -->
                
               <div id="recipe_category">
                    <ul class="category_list">
                        <li onclick="searchRecipeCategory(); return false;" class='menuon'>
                            <span class="ico-menu1on">전체보기</span>
                        </li>
                         
                            <li onclick="searchRecipeCategory(18); return false;"  >
                                <span class="ico-menu2">국/찌개/전골</span>
                            </li>
                         
                            <li onclick="searchRecipeCategory(19); return false;"  >
                                <span class="ico-menu3">밥/죽</span>
                            </li>
                         
                            <li onclick="searchRecipeCategory(20); return false;"  >
                                <span class="ico-menu4">반찬/김치</span>
                            </li>
                         
                            <li onclick="searchRecipeCategory(21); return false;"  >
                                <span class="ico-menu5">일품요리</span>
                            </li>
                         
                            <li onclick="searchRecipeCategory(22); return false;"  >
                                <span class="ico-menu6">간단요리</span>
                            </li>
                         
                            <li onclick="searchRecipeCategory(23); return false;"  >
                                <span class="ico-menu7">면류/파스타</span>
                            </li>
                         
                            <li onclick="searchRecipeCategory(24); return false;"  >
                                <span class="ico-menu8">간식/음료</span>
                            </li>
                         
                            <li onclick="searchRecipeCategory(25); return false;"  >
                                <span class="ico-menu9">베이킹</span>
                            </li>
                        
                     </ul>
                </div>
                <div style="clear:both"></div>
                <div class="notice_list_area">
                    
                    <!-- 상품리스트 -->
                    <div class="prodListWrap mgT20 newProdList">
                        <ul class="prodList2">
                        
                            
                            
                                
		                          <!-- 상품 1set -->
		                          <li class="" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(411, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/411">
                                                <img src="http://www.oasis.co.kr:8580/content/CBkql8Qe.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">홈메이드 브런치 블루베리 팬케익 </a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-10-04--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(445, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/445">
                                                <img src="http://www.oasis.co.kr:8580/content/Hjy4osFb.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">새콤달콤 딸기잼 만들기</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-10-12--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="lineR" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(459, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/459">
                                                <img src="http://www.oasis.co.kr:8580/content/HWsMFiZz.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">홈메이드 피자만들기</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-10-15--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(463, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/463">
                                                <img src="http://www.oasis.co.kr:8580/content/cfB8NxgW.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">고소한 참치샌드위치</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-10-16--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(528, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/528">
                                                <img src="http://www.oasis.co.kr:8580/content/V5BJd7NO.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">아가베 시럽으로 예쁘게 완성한 팬케이크</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-10-19--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="lineR" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(601, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/601">
                                                <img src="http://www.oasis.co.kr:8580/content/NtHEAedP.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">담백하고 부드러운 모닝빵</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-10-23--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(646, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/646">
                                                <img src="http://www.oasis.co.kr:8580/content/S2D875PD.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">입 안에서 사르륵~부드러운 마들렌</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-10-25--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(688, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/688">
                                                <img src="http://www.oasis.co.kr:8580/content/xh9Ry3IU.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">수험생을 위한 영양간식 견과류 쿠키</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-10-29--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="lineR" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(689, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/689">
                                                <img src="http://www.oasis.co.kr:8580/content/RMPNSPKV.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">촉촉한 건포도 미니머핀</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-10-29--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(824, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/824">
                                                <img src="http://www.oasis.co.kr:8580/content/rMBF4jik.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">슈퍼푸드 블루베리로 만든 머핀</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-11-13--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(938, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/938">
                                                <img src="http://www.oasis.co.kr:8580/content/6VBsLIUO.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">벨기에 전통 리에주 와플</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-12-14--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="lineR" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(955, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/955">
                                                <img src="http://www.oasis.co.kr:8580/content/pH8A8bJh.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">특별한 날 생크림 케이크</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-12-19--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(956, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/956">
                                                <img src="http://www.oasis.co.kr:8580/content/MebANte2.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">찬바람 불면 생각나는 호빵</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2018-12-19--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(1204, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/1204">
                                                <img src="http://www.oasis.co.kr:8580/content/TefS8uL6.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">홈메이드 필로시트</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2019-02-11--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
		                          <!-- 상품 1set -->
		                          <li class="lineR" style="height:auto">
		                              <!-- 상품 1set -->
		                              <div class="prodWrap3">
		                                  <div class="thum">
		                                      
		                                      <a href="#;" onclick="setRecipeWishlist(1205, this)" class="receipe_off">찜</a>
		                                      <a href="/company/story/recipeDetail/BRD3/1205">
                                                <img src="http://www.oasis.co.kr:8580/content/Y2XSZhsu.jpg" alt="섬네일" />
		                                      </a>
		                                  </div>
		                                  <a href="#" class="prodName" style="padding:0">닭가슴살 시금치 필로파이</a>
		                                  <div class="info1" style="padding-bottom:15px"><!--2019-02-11--></div>
		                              </div>
		                              <!-- //상품 1set -->
		                         </li>
		                      
                           
                        
                     </ul>
                  </div>
                  <!-- //상품리스트 -->
                    
                    <form id="contentSearchForm">
                        <input type="hidden" name="page"    value="1" />
                        <input type="hidden" name="keyword" value="" />
                        <input type="hidden" name="productId" value="" /> 
                        <input type="hidden" name="isMyRecipe" value="N" />
                        <input type="hidden" name="categoryNo" value="25" />
                        <input type="hidden" name="sort" value="regDate" />
                        <input type="hidden" name="recipeDirection" value="asc" />
                        <input type="hidden" name="isVideoRecipe" value="N" />                              
                    </form>
                </div>
                <!-- //내용 입니다 -->
                
                    <!--페이징-->
                <div class="pagingWrap">
                    
                        
                        
                            <a href="javascript:contentPage(1);" class='on' >1</a>
                        
                        
                    
                </div>
                <!--//페이징-->
            </div>
            <!-- //오른쪽 영역 -->
        </div>
    </div>
    <!-- //컨텐츠 -->
    </div>
   
</body>
</html>