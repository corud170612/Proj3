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
	<h1 style="margin-top: 200px; margin-bottom: 100px; font-weight: 40px; font-size: 50px;text-align: center;">핸드드립 아이스커피 만들기</h1>

	<div id="recipeImgBox">
		<img src="${home }resources/img/아이스커피1.jpg" class="recipeImg1">
		<a href="https://www.youtube.com/watch?v=ei1Q7aUU7yM">
			<img src="${home }resources/img/아이스커피2.jpg" class="recipeImg1">
		</a>
		<img src="${home }resources/img/아이스커피3.jpg" class="recipeImg1">
	</div>
</div>