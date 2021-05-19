<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="false" %>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#text1").fadeIn("slow");
    $("#text2").fadeIn("slow");
    $("#text3").fadeIn(5000);


});
</script>
<style type="text/css">
p {
		    -webkit-text-size-adjust: none;
    -webkit-font-smoothing: subpixel-antialiased;
    font-variant-ligatures: none;
    word-break: keep-all;
    text-align: left;
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
    font-size: 45px;
    text-align: center;
	position: absolute; 
}
</style>
	<title>Home</title>
</head>
<body style="background: #111;">
<div style="margin-top: 100px; width: 100%; height: 1000px; background: url('') center center / 100% no-repeat; ">
<img alt="" src="${pageContext.request.contextPath}/resources/img/coffee2.png" style="-webkit-filter: grayscale(100%); filter: gray; width: 1500px; margin-left: 200px; margin-right: 200px; height: auto;vertical-align: middle;">
<div id="text1" style="display: none;"><p  style="top: 30%; left: 12%;">집으로 찾아오는</p></div>
<div id="text2" style="display: none;"><p  style="top: 40%; left: 12%;">나만의 커피구독</p></div>
<div id="text3" style="display: none;"><p  style="top: 48%; left: 12%; font-size: 20px;">서로 다른 카페들의 다양한 커피를 한번에 즐겨보세요</p></div>


</div>

</body>
</html>
