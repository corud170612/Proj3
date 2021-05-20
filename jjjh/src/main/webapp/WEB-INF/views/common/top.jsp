<%@page import="java.lang.System.Logger"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
   /*
    * request를 통해 session을 얻어올 수 있으며 내부 인자가 
    * true인 경우 session이 없으면 별도로 생성하고   
    * false인 경우 별도로 생성하지 않고 null을 반환함.
    */
   HttpSession topSession = request.getSession(false);
   String sessionBid = (String)topSession.getAttribute("bid");
   String sessionCid = (String)topSession.getAttribute("cid");  
   
%>
<c:url var="topHome" value="/"/>
<style>

li {
       --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    color: #666;
    margin: 0;
    list-style: none;
    display: inline-block;
    padding: 0 28px 0 0;

} 
a {
       --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    list-style: none;
    margin: 0;
    padding: 0;
    text-decoration: none;
    color: #fff;
    font-size: 16px;
    font-weight: bold;
    letter-spacing: -0.8px;
}
</style>
<div id="header" style="    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    color: #666;
    -webkit-text-size-adjust: 100%;
    margin: 0;
    top: 0px;
    z-index: 9999 !important;
    position: fixed;
    width: 100%;
    height: 116px;
    padding: 0 100px;
    box-sizing: border-box;
    display: flex;
    align-items: center;
    justify-content: space-between;
    border-bottom: 1px solid #767676;
    background: #111;
    transition: 0.1s ease-in-out;
    height: 100px; ">
    <!-- 헤더 메뉴 -->
    <div class="header_menu">
      <!-- 상단 로고 -->
      <div class="xans-element- xans-layout xans-layout-logotop top_logo "><a href="${topHome}index?formpath=home"><img src="${pageContext.request.contextPath}/resources/img/logoWhite.png" style="width: 150px; height: auto;" alt=""></a>
</div>
      <div class="header_menu_inner">
         <!-- 메인메뉴 영역 : 메인메뉴 수정은 "레이아웃 > 기본레이아웃 > menu.html" 문서에서 수정을 하시면 됩니다.-->
               </div>
   </div>
   <!-- 헤더 유틸 -->
   <div class="header_util" style="    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    color: #666;
    -webkit-text-size-adjust: 100%;
    margin: 0;
    padding: 0;
    width: calc(100% - 264px);
    float: right;
    z-index: 2;">
      <div class="header_util_inner" style="    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    padding: 0;
    position: relative;
    height: 116px;
    margin: 0 auto;
    color: #666;">
         <div class="util_left" style="    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    color: #666;
    margin: 0;
    padding: 0;
    position: absolute;
    left: 0;
    display: flex;
    align-items: center;
    height: 100%;">

            <!-- 게시판 메뉴 -->
            <div class="xans-element- xans-layout xans-layout-boardinfo top_board" style="    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    color: #666;
    margin: 0;
    position: relative;
    float: left;
    padding: 0;"><ul>
               <li class="xans-record-">
                     <a href="#">STORE</a> </li>
                  <li class="xans-record-">
                     <a href="#">TASTE TEST</a> </li>
                  <li id="my-cafebox-li" style="display: none;">
                  <a href="#">BRAND</a></li>
                        <li><a href="#">REVIEW</a></li>
                        <li><a href="#">RECIPE</a></li>
                  <%if(sessionCid==null && sessionBid!=null) { %>
                  <li class="xans-record-">
                     <a href="#">SALES STATUS</a> </li>
                  <li class="xans-record-">
                     <a href="${topHome }index?formpath=product">PRODUCT</a> </li>
                  <%} %>
               </ul>
</div>
         </div>
         
         <div class="util_right" style="    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    color: #666;
    margin: 0;
    padding: 0;
    position: absolute;
    right: 0;
    display: flex;
    align-items: center;
    height: 100%;">
            <!-- 멤버쉽 메뉴 -->
            <div id="memebershipmenu" class="xans-element- xans-layout xans-layout-statelogoff loginoff " style="    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    color: #666;
    margin: 0;
    padding: 0;
    position: relative;
    float: left;"><ul>
    
      <% if(sessionCid==null&&sessionBid==null){      %>
      
<li><a href="${topHome}index?formpath=login" class="log" style="    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-family: 'Noto Sans KR',sans-serif;
    -webkit-text-size-adjust: 100%;
    list-style: none;
    margin: 0;
    padding: 0;
    text-decoration: none;
    color: #fff;
    font-size: 16px;
    width: 128px;
    height: 36px;
    border: 1px solid #fff;
    border-radius: 40px;
    display: inline-block;
    vertical-align: middle;
    line-height: 34px;
    font-weight: 400;
    text-align: center;
    letter-spacing: -0.8px;
    box-sizing: border-box;">LOGIN</a></li>
    <li><a href="${topHome }/index?formpath=member" class="log" style="    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-family: 'Noto Sans KR',sans-serif;
    -webkit-text-size-adjust: 100%;
    list-style: none;
    margin: 0;
    padding: 0;
    text-decoration: none;
    color: #fff;
    font-size: 16px;
    width: 128px;
    height: 36px;
    border: 1px solid #fff;
    border-radius: 40px;
    display: inline-block;
    vertical-align: middle;
    line-height: 34px;
    font-weight: 400;
    text-align: center;
    letter-spacing: -0.8px;
    box-sizing: border-box;">JOIN</a></li>
    
          <%}else if(sessionCid!=null&&sessionBid==null){ %>
          <li style="margin-right: 200px; margin-bottom: 35px;"><p style="font-size: 20px;">안녕하세요 <%=sessionCid%>님 </p></li>
<li><a href="${topHome}login/logout" class="log" style="    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-family: 'Noto Sans KR',sans-serif;
    -webkit-text-size-adjust: 100%;
    list-style: none;
    margin: 0;
    padding: 0;
    text-decoration: none;
    color: #fff;
    font-size: 16px;
    width: 128px;
    height: 36px;
    border: 1px solid #fff;
    border-radius: 40px;
    display: inline-block;
    vertical-align: middle;
    line-height: 34px;
    font-weight: 400;
    text-align: center;
    letter-spacing: -0.8px;
    box-sizing: border-box;">LOGOUT</a></li>
    
          <%}else if(sessionCid==null&&sessionBid!=null){ %>
          <li style="margin-right: 200px; margin-bottom: 35px;"><p style="font-size: 20px;">안녕하세요 <%=sessionBid%>님 </p></li>
<li><a href="${topHome}login/logout" class="log" style="    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    font-family: 'Noto Sans KR',sans-serif;
    -webkit-text-size-adjust: 100%;
    list-style: none;
    margin: 0;
    padding: 0;
    text-decoration: none;
    color: #fff;
    font-size: 16px;
    width: 128px;
    height: 36px;
    border: 1px solid #fff;
    border-radius: 40px;
    display: inline-block;
    vertical-align: middle;
    line-height: 34px;
    font-weight: 400;
    text-align: center;
    letter-spacing: -0.8px;
    box-sizing: border-box;">LOGOUT</a></li>
    
          <%} %>


               </ul>
</div>
                        <!-- 멀티쇼핑몰 선택 -->
                     </div>
      
      </div>
   </div>
</div>