<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/" />

<style type="text/css">
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