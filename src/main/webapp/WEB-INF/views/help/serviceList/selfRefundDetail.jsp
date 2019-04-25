<%@ page contentType="text/html; charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
   <!-- 컨텐츠 -->
    <div class="contentsArea">
        <div class="contentsWrap">
            <div style="text-align:center;">
            <div> <img src="/dailychan/resources/images/etc/return_Service_visual.jpg"></div>
            <div style="text-align:center">
               	<video width="860" height="480" controls poster="/dailychan/resources/images/etc/self_web_video.jpg">
       				<source src="http://www.oasis.co.kr:8580/content/self_0215.mp4" type="video/mp4">
       				브라우저가 비디오를 지원하지 않습니다.
       			</video>
            </div>
            <div style="background:#efefef;margin-top:80px"> 
                <div><img src="/dailychan/resources/images/etc/return_service_01.jpg"></div>
                <div><img src="/dailychan/resources/images/etc/return_service_02.jpg"></div>
                <div><img src="/dailychan/resources/images/etc/return_service_03.jpg"></div>
                <div><img src="/dailychan/resources/images/etc/return_service_04.jpg"></div>
                <div><img src="/dailychan/resources/images/etc/return_service_05.jpg"></div>
                <div><img src="/dailychan/resources/images/etc/return_service_06.jpg"></div>
            </div>
            <div style="background:#fff;"> <img src="/dailychan/resources/images/etc/return_policy.jpg"></div>
            <div style="width: 70%;margin: auto;padding-bottom: 120px;"> 
                <a href="/myPage/refundProductList"> <img src="/dailychan/resources/images/etc/return_go.png"></a>
                </div>
            <div style="background:#efefef;"> <img src="/dailychan/resources/images/etc/customer_center_info.jpg"></div>
            </div>    
        </div>
    </div>
</body>
</html>