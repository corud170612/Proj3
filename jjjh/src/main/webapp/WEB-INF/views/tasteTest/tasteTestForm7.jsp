<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/"/>
<style>
.choice{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 25px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    padding: 0;
    height: 150px;
    width: 150px;
    border-radius: 100%;
    border: 1px solid #fff;
    background-color: black;
    margin: auto;
    color: white;
    cursor: pointer;
    overflow: hidden;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    font-weight: bold;
    
}
.choice:active{
   background: #fff;
   color: #111;
   border: 1px solid #fff;
   
}
#testframe{
width: 540px;
position: absolute;
left: 50%;
margin-left:-270px;
height: auto;
}
strong {
   color: #fff;
   margin-top: 200px;
   
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#choice1").click(function(){
    $("#choice1").css("color", "black");
    $("#choice1").css("background", "white");
    $("#choice2").css("color", "white");
    $("#choice2").css("background", "black");
    
  });
  $("#choice2").click(function(){
       $("#choice2").css("color", "black");
       $("#choice2").css("background", "white");
       $("#choice1").css("color", "white");
       $("#choice1").css("background", "black");
     });
});
</script>
<form action="${home }tasteTest/testSucessForm">
<br><br><br><br><br><br><br><br><br><br>
<div>
<p style="font-size: 30px; margin-bottom: 100px; text-align: center; color: #fff;">원두 분쇄가 필요하신가요?</p>
</div>

<div id="testframe">
<div  style="float: left; margin-right: 150px; text-align: center;">

<div class="choice" id="choice1">분쇄
</div><br/>
<strong>선택하신 도구에 맞게<br/>분쇄도로 보내드려요.</strong>
</div>


<div style="text-align: center;">
<div class="choice" id="choice2">홀빈</div><br/>
<strong>홀빈으로 보내드릴게요.</strong>

<input type="submit" style="width: 420px; background: #111; border: 1px solid #fff; color: #fff; font-size: 25px; margin-top: 100px;" value="다음" />
</div>
</div>
</form>