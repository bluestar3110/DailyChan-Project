<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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

<!-- <script type="text/javascript">
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
 -->
 <script type="text/javascript">
 function sendIt() {
	
	 var f = document.myForm;	
	 
	 str = f.subject.value;
		str = str.trim();

		if(!str){
			alert("\n제목을 입력하세요.");
			f.subject.focus();
			return;
		}
	
		f.subject.value = str;
		
		f.action = "main";
		f.submit();
		
} 
 
 </script>
 
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_shop.js?dummy=5.05"></script>
<script type="text/javascript" charset="utf-8" src="/dailychan/resources/js/oasis_common.js?dummy=5.12"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
                    
                    <div style="background-color:#f5f5f5; height:36px; color:#6ca437; font-size:34px; font-weight:bold;text-align:center; padding-top:22px"> 레&nbsp;&nbsp;&nbsp;&nbsp;시&nbsp;&nbsp;&nbsp;&nbsp;피&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 등&nbsp;&nbsp;&nbsp;&nbsp;록 </div>
                    <!--// 주문단계 -->
                    


 			<div>        
               <h4 class="orderTit2 conS1">1. 레시피 등록</h4>
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
                                    <th scope="row"><span class="inputWd260" > 제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목  </span></th>
                                    <td><input type="text" class="inputWd370" name="title"/></td>                                   	                                 
                                </tr>
                                <tr>
                                    <th scope="row"><span class="inputWd260"> 메인 이미지 </span></th>
                                    <td><input type="file" class="inputWd370"  name="mainImage"/></td>                                   	                                 
                                </tr>
                                <tr>
                                    <th scope="row"><span class="inputWd260"> 컨텐츠 이미지1 </span></th>
                                    <td><input type="file" class="inputWd370"  name="contentImage1"/></td>                                   	                                 
                                </tr>
                                <tr>
                                    <th scope="row"><span class="inputWd260"> 컨텐츠 이미지2 </span></th>
                                    <td><input type="file" class="inputWd370"  name="contentImage2"/></td>                                   	                                 
                                </tr>                                
                            </tbody>                           
                        </table>
      				 </div>
      			</div>
      		</div>			                   
       </div>   
      </div>
      </div>     	      
                    
       <div  style="padding-left:950px; padding-top:20px">
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