<%@ page contentType="text/html; charset=UTF-8"%>
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


<!-- 현진스크립트  -->
<script type="text/javascript">

// 대분류
var firstList = new Array("전체상품","이벤트","산지직송","오!감동");


// 중분류
var lastList1 = new Array("중분류를 선택하세요","농산물","축산물","수산물","양념류");
var lastList2 = new Array("중분류를 선택하세요","구매후기 이벤트","외식 같은 집밥","환절기 건강식품","간편선물세트","아침식사대용","우리아이안심","고객추천","따뜻한 영양간식");


// 소분류
var lastList1_0 = new Array("중분류 선택")
var lastList1_1 = new Array("소분류를 선택하세요","주곡/잡곡곡물","과일","채소류","버섯/건나물류","간편샐러드/가루류","견과/병조림");
var lastList1_2 = new Array("소분류를 선택하세요","축산물","닭/오리/유정란","소고기","돼지고기","우유/치즈/요구르트","육가공품");
var lastList1_3 = new Array("소분류를 선택하세요","수산진미","젓갈류","생선/조개류","김/해조류","건어물","수산가공");
var lastList1_4 = new Array("소분류를 선택하세요","참기름/오일류","참깨/양념가루","된장/고추장/장류","천연조미장류/소스류","소금/식초/설탕/조청","부침/튀김/곡식가루");
  
// 페이지 로딩시 자동 실행  
window.onload = function(){
	
    var v_firstSelect = document.getElementById("firstSelect"); // SELECT TAG
      
    for (i =0 ; i<firstList.length; i++){// 0 ~ 3 
        // 새로운 <option value=''>값</option> 태그 생성
        var optionEl = document.createElement("option");
  
        // option태그에 value 속성 값으로 저장
        optionEl.value = firstList[i];
      
        // text 문자열을 새로 생성한 <option> 태그의 값으로 추가
        optionEl.appendChild (document.createTextNode(firstList[i]));
      
        // 만들어진 option 태그를 <select>태그에 추가
        v_firstSelect.appendChild(optionEl);
        
    }
  
    var v_secondSelect = document.getElementById("secondSelect"); // SELECT TAG
    v_secondSelect.style.display = "none";  // 태그 감추기
    var v_secondSelect = document.getElementById("lastSelect"); // SELECT TAG
    v_secondSelect.style.display = "none";  // 태그 감추기
   
}

// 대분류 선택시
function changeFirstSelect(){
	
    var v_firstSelect = document.getElementById("firstSelect"); // SELECT TAG
    var idx = v_firstSelect.options.selectedIndex;     // 선택값 0 ~ 4

    if (idx < 0 && idx > 4){
        return;
    }

    secondSelectFill(idx);   // 중분류 생성
    
}

// 중분류 띄우기
function secondSelectFill(idx){
	
    var v_secondSelect = document.getElementById("secondSelect"); // SELECT TAG
    var v_lastSelect = document.getElementById("lastSelect");
 
    var data = null;
    var clear = null;
  
  	if (idx == 0) {
  		
        v_secondSelect.style.display = "none";  // 중분류 태그 감추기
        v_lastSelect.style.display = "none";
        return;
        
    }else if (idx == 1){
    	
    	v_secondSelect.style.display = "none";  // 중분류 태그 감추기
        v_lastSelect.style.display = "none";
		data = lastList1;
		
     }else if (idx == 2){
    	 
    	v_secondSelect.style.display = "none";  // 중분류 태그 감추기
        v_lastSelect.style.display = "none";
        data = lastList2;
        
     }else if (idx == 3){
    	 
    	v_secondSelect.style.display = "none";  // 중분류 태그 감추기
        v_lastSelect.style.display = "none";
        return;
        
     }else if (idx == 4){
    	 
    	v_secondSelect.style.display = "none";  // 중분류 태그 감추기
        v_lastSelect.style.display = "none";
  
        return;
        
     }

    v_secondSelect.innerHTML = "";  // 태그 출력
      
    for (i =0 ; i<data.length; i++){ 
        // 새로운 <option value=''>값</option> 태그 생성
        var optionEl = document.createElement("option");
  
        // value 속성 태그에 저장
        optionEl.value = data[i];
        
      
        // text 문자열을 새로 생성한 <option> 태그에 추가
        optionEl.appendChild (document.createTextNode(data[i]));
      
        // 만들어진 option 태그를 <select>태그에 추가
        v_secondSelect.appendChild(optionEl);
    }
  
	v_secondSelect.style.display = ""; // 중분류 태그 출력

}

// 중분류 선택시
function changeSecondSelect(){
	
    var v_firstSelect = document.getElementById("firstSelect"); // SELECT TAG
    var v_lastSelect = document.getElementById("secondSelect"); // SELECT TAG
    var idx = v_firstSelect.options.selectedIndex; // 선택값 0 ~ 4
    var idx2 = v_lastSelect.options.selectedIndex;    
     
    // alert("select: " + selText);
    if (idx < 0 && idx > 5){
        return;
    }
  
    lastSelectFill(idx,idx2);   // 중분류 생성
    
}

//소분류 띄우기
function lastSelectFill(idx,idx2){
	
    var v_lastSelect = document.getElementById("lastSelect"); // SELECT TAG
    var data = null;
  
    if (idx == 1&&idx2 == 1){
    	
         data = lastList1_1
         
	}else if (idx == 1&&idx2 == 2){
		
         data = lastList1_2
         
	}else if (idx == 1&&idx2 == 3){
		
         data = lastList1_3
         
	}else if (idx == 1&&idx2 == 4){
		
         data = lastList1_4
         
	}else{
		return;
	}

    v_lastSelect.innerHTML = "";  // 태그 출력
      
    for (i =0 ; i<data.length; i++){ 
        // 새로운 <option value=''>값</option> 태그 생성
        var optionEl = document.createElement("option");
  
        // value 속성 태그에 저장
        optionEl.value = data[i];
      
        // text 문자열을 새로 생성한 <option> 태그에 추가
        optionEl.appendChild (document.createTextNode(data[i]));
      
        // 만들어진 option 태그를 <select>태그에 추가
        v_lastSelect.appendChild(optionEl);
    }
  
	v_lastSelect.style.display = ""; // 중분류 태그 출력
 
  
}

</script>


<script type="text/javascript">
function sendIt() {
	
	var f = document.myForm;			
	
    var firstSelect = document.getElementById("firstSelect"); // SELECT TAG
    var secondSelect = document.getElementById("secondSelect"); // SELECT TAG
    var lastSelect = document.getElementById("lastSelect");
   
    var firstSelect_idx = firstSelect.options.selectedIndex; // 선택값 0 ~ 4
    var secondSelect_idx = secondSelect.options.selectedIndex;
    var lastSelect_idx = lastSelect.options.selectedIndex;

    if(firstSelect_idx=="0"){
    	alert("\n대분류를 선택하세요")
    	return;
    }
    
    if(secondSelect_idx=="0"&&(firstSelect_idx=="1"||firstSelect_idx=="2")){
    	
    	alert("\n중분류를 선택하세요")
    	return;
    }
    
 	if(lastSelect_idx=="0"&&secondSelect_idx=="1"&&(firstSelect_idx=="1"||firstSelect_idx=="2")){
    	
    	alert("\n소분류를 선택하세요")
    	return;
    }
	
	
	
	str = f.subject.value;
	str = str.trim();

	if(!str){
		alert("\n제목을 입력하세요.");
		f.subject.focus();
		return;
	}
	f.subject.value = str;
	
	
	
	str = f.price.value;
	str = str.trim();

	if(!str){
		alert("\n일반가를 입력하세요.");
		f.price.focus();
		return;
	}
	f.price.value = str;
	
	
	str = f.discount.value;
	str = str.trim();

	if(!str){
		alert("\n할인가를 입력하세요.");
		f.discount.focus();
		return;
	}
	f.discount.value = str;
	
	
	str = f.stock.value;
	str = str.trim();

	if(!str){
		alert("\n재고를 입력하세요.");
		f.stock.focus();
		return;
	}
	
	f.stock.value = str;
	

	
	str = f.howToStored.value; // SELECT TAG
	
	if(!str){
		
		alert("\n보관방법을 입력하세요.");
		return;
	}
	
	
	
	

	str = f.name.value;
	str = str.trim();

	if(!str){
		alert("\n상품명을 입력하세요.");
		f.name.focus();
		return;
	}
	f.name.value = str;

	
	


	if((f.delivery1.checked==false)&&(f.delivery2.checked==false)&&(f.delivery3.checked==false)){
		
		alert("\n배송방법을 선택하세요.");
		return;
	}
	
	
	
	str = f.buypoint.value;
	str = str.trim();

	if(!str){
		alert("\n구매포인트를 입력하세요.");
		f.buypoint.focus();
		return;
	}
	f.buypoint.value = str;

	
	
	
	
	
	str = f.pdType.value;
	str = str.trim();

	if(!str){
		alert("\n식품의 유형을 입력하세요.");
		f.pdType.focus();
		return;
	}
	f.pdType.value = str;
	
	str = f.volume.value;
	str = str.trim();

	if(!str){
		alert("\n용량/수량/크기를 입력하세요.");
		f.volume.focus();
		return;
	}
	f.volume.value = str;
	
	
	
	str = f.supplier.value;
	str = str.trim();

	if(!str){
		alert("\n생산자 및 공급자를 입력하세요.");
		f.supplier.focus();
		return;
	}
	f.supplier.value = str;
	
	str = f.origin.value;
	str = str.trim();

	if(!str){
		alert("\n원산지를 입력하세요.");
		f.origin.focus();
		return;
	}
	f.origin.value = str;
	
	
	
	str = f.created.value;
	str = str.trim();

	if(!str){
		alert("\n제조년월일을 입력하세요.");
		f.created.focus();
		return;
	}
	f.created.value = str;
	
	
	
	str = f.counseling.value;
	str = str.trim();

	if(!str){
		alert("\n소비자상담문의를 입력하세요.");
		f.counseling.focus();
		return;
	}
	f.counseling.value = str;
	
	
	str = f.configuration.value;
	str = str.trim();

	if(!str){
		alert("\n구성성분을 입력하세요.");
		f.configuration.focus();
		return;
	}
	f.configuration.value = str;
	/* 	
	str = f.mainImage.value;
	str = str.trim();

	if(!str){
		alert("\n메인이미지를 입력하세요.");
		f.mainImage.focus();
		return;
	}
	f.mainImage.value = str;
		
 */
	f.action = "main";
	f.submit();

}

</script>


<!-- //현진스크립트 -->

</head>
<body>

	
<form action="" name="myForm" method="post">
    <!-- 컨텐츠 -->
    <div class="contentsArea" id="sec_order_pay">
        <div class="contentsWrap">
            <!-- 오른쪽 영역 -->
            <div class="content">
                <!-- 내용 입니다 -->
                <div class="orderStepWrap">
                    <!-- 주문단계 -->
                    
                    <div style="background-color:#f5f5f5; height:36px; color:#6ca437; font-size:34px; font-weight:bold;text-align:center; padding-top:22px"> 상&nbsp;&nbsp;&nbsp;&nbsp;품 &nbsp;&nbsp;&nbsp;&nbsp;등&nbsp;&nbsp;&nbsp;&nbsp;록 </div>
                    <!--// 주문단계 -->
                    
                    <h4 class="orderTit2 conS1">1. 상품 게시글 등록 </h4>
                    <div class="orderTbl2" style="border:solid 1px #ddd">
                     <table style="border-top:1px solid #ddd">
                            <colgroup>
                                <col width="143px" />
                                <col width="185px" />
                                <col width="143px" />
                                <col width="185px" />
                                <col width="143px" />
                                <col width="185px" />
                            </colgroup>
                  
                            
                            <tbody>
                            		<tr><span style="height:10px;"></span>
                                        <th scope="row"><span class="starBg">대분류</span></th>
                                        <td>
                                          <select name="firstSelect" id="firstSelect" onChange="changeFirstSelect();">
										       <option value="">대분류를 선택하세요.</option>
										  </select>
										</td>
		                                       
	                                    <th scope="row"><span class="starBg">중분류</span></th>
	                                        <td>
	                                           <select name="secondSelect" id="secondSelect" onChange="changeSecondSelect();">
											        <option value="">중분류를 선택하세요.</option>
											    </select>	                                        
	                                        </td>
	                                   </td>
		                                       
	                                    <th scope="row"><span class="starBg">소분류</span></th>
	                                        <td>
	                                             <select name="lastSelect" id="lastSelect">
											        <option value="">소분류를 선택하세요.</option>
											    </select>                                        
	                                        </td>
	                                </tr>
	                         </tbody>
	                    </table>     
                        <table style="border-top:1px solid #ddd">
                            <colgroup>
                                <col width="143px" />
                                <col width="" />
                                <col width="143px" />
                                <col width="" />
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row"><span class="starBg"> 제 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 목 </span></th>
                                    <td><input type="text" name="subject" id="subject" class="inputWd710" value="" maxlength="50" /></td>
                                   	                                 
                                </tr>                            
                            </tbody>                           
                        </table>
                        
                       
                        
                        
                 
                        <table style="border-top:1px solid #ddd">
                            <colgroup>
                                <col width="143px" />
                                <col width="" />
                                <col width="143px" />
                                <col width="" />
                                <col width="143px" />
                                <col width="" />
                            </colgroup>
                            
                            <tbody>
                            		
                                    <tr><span style="height:10px;"></span>
                                        <th scope="row"><span class="starBg">일반가</span></th>
                                        <td><input type="text" name="price" id="price" class="inputWd260" value="" maxlength="10" data-user="" /></td>
                                        <th scope="row"><span class="starBg">할인율</span></th>
                                        <td><input type="text" name="discount"  id="discount" class="inputWd260" value="" maxlength="11" data-user="" />%</td>
                                    </tr>
                                    
                                    <tr><span style="height:10px;"></span>
                                        <th scope="row"><span class="starBg">재고</span></th>
                                        <td><input type="text" name="stock" id="stock" class="inputWd260" value="" maxlength="10" data-user="" /></td>
                                        <th scope="row"><span class="starBg">보관방법</span></th>
	                                    <td>
	                                        <span><input type="radio"  name="howToStored" id="howToStored" value="cool"><font style="font-family: 나눔고딕; "> 냉장</font></span>
											<span><input type="radio"  name="howToStored" id="howToStored" value="ice"><font style="font-family: 나눔고딕;">냉동</font></span>
											<span><input type="radio"  name="howToStored" id="howToStored" value="normal"><font style="font-family: 나눔고딕;">실온</font></span>
                                        </td>
                                    </tr>
                                    <tr><span style="height:10px;"></span>
                                        <th scope="row"><span class="starBg">상품명</span></th>
                                        <td><input type="text" name="name" id="name" class="inputWd260" value="" maxlength="10" data-user="" /></td>
                                        <th scope="row"><span class="starBg">배송구분</span></th>
                                        <td>								                                        
											<span><input type="checkbox"  name="delivery1" id="delivery1" value="storeDelivery"><font style="font-family: 나눔고딕; ">매장배송</font></span>
											<span><input type="checkbox"  name="delivery2" id="delivery2" value="homeDelivery"><font style="font-family: 나눔고딕; ">택배배송</font></span>
											<span><input type="checkbox"  name="delivery3" id="delivery3" value="earlyDelivery"><font style="font-family: 나눔고딕; ">새벽배송</font></span>
									 	</td>
                                    </tr>
                                    
                            </tbody>
                         </table> 
                         <table style="border-top:1px solid #ddd">
                            <colgroup>
                                <col width="143px" />
                                <col width="" />
                                <col width="143px" />
                                <col width="" />
                            </colgroup>
                            <tbody>
                            <tr>
	                            <th  scope="row"><span class="starBg"> 구매&nbsp;&nbsp;&nbsp;포인트 </span></th>
	                            <td>
	                            <input type="text" name="buypoint" id="buypoint" class="inputWd710"  maxlength="50" /></td>
	                        </tr>
	                        </tbody>
                         </table>   
                         
                         
                                    
                     </div>
                    <div class="orderTit2 conS1" >
                        <h4>2. 상품 정보 등록</h4>
                    <div></div>   
                    <div class="orderTbl2" style="border:solid 1px #ddd" >
                        <table style="border-top:1px solid #ddd">
                            <colgroup>
                                <col width="143px" />
                                <col width="" />
                                <col width="143px" />
                                <col width="" />
                            </colgroup>
                            <tbody>
                                    <tr><span style="height:10px;"></span>
                                            <th scope="row"><span class="starBg">식품의유형</span></th>
                                            <td><input type="text" name="pdType" id="pdType" class="inputWd260" value="" maxlength="10" data-user="" /></td>
                                            <th scope="row"><span class="starBg">용량/수량/크기</span></th>
                                            <td><input type="text" name="volume" id="volume" class="inputWd260" value="" maxlength="11" data-user="" /></td>
                                    </tr>
                                    <tr><span style="height:10px;"></span>
                                            <th scope="row"><span class="starBg">생상자 및 공급자</span></th>
                                            <td><input type="text" name="supplier" id="supplier" class="inputWd260" value="" maxlength="10" data-user="" /></td>
                                            <th scope="row"><span class="starBg">원산지</span></th>
                                            <td><input type="text" name="origin" id="origin" class="inputWd260" value="" maxlength="11" data-user="" /></td>
                                    </tr>
                                    <tr><span style="height:10px;"></span>
                                            <th scope="row"><span class="starBg">제조년월일</span></th>
                                            <td><input type="text" name="created"  id="created" class="inputWd260" value="" maxlength="10" data-user="" /></td>
                                            <th scope="row"><span class="starBg">소비자상담문의</span></th>
                                            <td><input type="text" name="counseling" id="counseling" class="inputWd260" value="" maxlength="11" data-user="" /></td>
                                    </tr>
                            </tbody>
                        </table>
                        <table style="border-top:1px solid #ddd">
                            <colgroup>
                                <col width="143px" />
                                <col width="" />
                                <col width="143px" />
                                <col width="" />
                            </colgroup>
                            <tbody>
                            <tr>
	                            <th  scope="row"><span class="starBg"> 구성&nbsp;&nbsp;&nbsp;성분 </span></th>
	                            <td><input type="text" name="configuration" id="configuration" class="inputWd710" value="" maxlength="50" /></td>
	                        </tr>
	                        </tbody>
                         </table>   
                </div>
                
                <div>        
               <h4 class="orderTit2 conS1">3. 이미지 추가</h4>
                    <div class="orderTbl2" style="border:solid 1px #ddd">
                         <table style="border-top:1px solid #ddd">
                            <colgroup>
                                <col width="143px" />
                                <col width="" />
                                <col width="143px" />
                                <col width="" />
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row"><span class="starBg"> 메인 이미지 </span></th>
                                    <td><input type="file" name="mainImage" id="mainImage"/></td>                                   	                                 
                                </tr>
                                <tr>
                                    <th scope="row"><span class="starBg"> 컨텐츠 이미지1 </span></th>
                                    <td><input type="file" name="contentImage1"/></td>                                   	                                 
                                </tr>
                                <tr>
                                    <th scope="row"><span class="starBg"> 컨텐츠 이미지2 </span></th>
                                    <td><input type="file" name="contentImage2"/></td>                                   	                                 
                                </tr>                                
                            </tbody>                           
                        </table>
       </div>                  
    
	      <div  style="padding-left:300px; padding-top:20px">
	      	<span>
	      	<!-- 등록하기 -->
	      	<img src="/dailychan/resources/images/admin/K_button1.png" alt=""  onclick="sendIt();"/> 
	      	&nbsp;&nbsp;&nbsp;
	      	
	      	<!-- 다시쓰기 -->
	      	<img src="/dailychan/resources/images/admin/K_button3.png" alt="" 
	      	onclick="document.myForm.subject.focus();"/>  
	      	&nbsp;&nbsp;&nbsp; 
	      	
	      	<!-- 돌아가기 -->
	      	<img src="/dailychan/resources/images/admin/K_button2.png" alt="" 
	      	onclick="javascript:location.href='main'"/>       
	      	</span>
	   
	                                      
	      </div>


</form>
</body>
</html>
 