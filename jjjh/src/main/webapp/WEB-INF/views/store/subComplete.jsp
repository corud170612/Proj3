<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/"/>

<style type="text/css">
#buyFrame{
   width: 100%;
   height: 1500px;
}
p{
    --swiper-theme-color: #00FF0000 !important;
    --swiper-navigation-size: 44px;
    list-style: none;
    -webkit-text-size-adjust: none;
    -webkit-font-smoothing: subpixel-antialiased;
    font-variant-ligatures: none;
    word-break: keep-all;
    vertical-align: top;
    margin: 0;
    padding: 0;
    border: 0;
    box-sizing: border-box;
    font-style: normal;
    display: inline-block;
    font-family: 'NanumSquare';
    font-weight: 900;
    letter-spacing: -0.5px;
    color: #fff;
    min-width: 7.5px;
    height: 60px;
    line-height: 60px;
    text-align: center;
    position: absolute;
    font-size: 20px;
    }
</style>

<div id="buyFrame">
   <!-- 구독완료 페이지 전체 div -->
   <img src="${pageContext.request.contextPath}/resources/img/logoWhite.png" style="display: block; margin-left:auto; margin-right:auto; margin-top:150px; width: 300px; height: auto;" alt="">
   <h1 style="text-align: center; color: white;" >구독해주셔서 감사합니다.</h1>
</div>