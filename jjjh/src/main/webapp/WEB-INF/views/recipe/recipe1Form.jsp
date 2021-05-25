<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/" />

<style type="text/css">
body{
	background: #fff;
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
#recipeFrame {
   width: 1300px;
   height: auto;
   margin-left: 300px;
   text-align: center;
   display : flex;
   align-items: center;
   flex-direction: column;
   background-color: #fff;
}
#recipeImgBox {
	width: 1000px;
   height: auto;
   text-align: center;
   display : flex;
   align-items: center;
   flex-direction: column;
}
.recipeImg1 {
	width: 800px;
	margin-bottom: 50px;
}
</style>

<div id="recipeFrame">
	<h1 style="margin-top: 200px; margin-bottom: 100px; font-weight: 40px; font-size: 50px;text-align: center;">모카포트로 쉽게 만드는 스페니쉬 라떼</h1>

	<div id="recipeImgBox">
		<img src="${home }resources/img/스페니쉬라떼1.jpg" class="recipeImg1">
		<a href="https://www.youtube.com/watch?v=WnCm1YudsHI">
			<img src="${home }resources/img/스페니쉬라떼2.jpg" class="recipeImg1">
		</a>
		<img src="${home }resources/img/스페니쉬라떼3.jpg" class="recipeImg1">
	</div>
</div>