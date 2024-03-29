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
    $("#test1").attr("value","카페인");
  });
  $("#choice2").click(function(){
       $("#choice2").css("color", "black");
       $("#choice2").css("background", "white");
       $("#choice1").css("color", "white");
       $("#choice1").css("background", "black");
       $("#test1").attr("value","디카페인");
     });
});
</script>
<form action="${home }tasteTest/tasteTestForm2">
<br><br><br><br><br><br><br><br><br><br>
<div>
<h2 style="font-size: 30px; margin-bottom: 100px; text-align: center; color: #fff;">어떤 커피를 찾고 계신가요?</h2>
</div>

<div id="testframe">
<div  style="float: left; margin-right: 150px; text-align: center;">

<div class="choice" id="choice1">카페인
</div><br/>
<strong>커피 큐레이션을<br/> 계속 진행할게요</strong>
</div>
<input type="hidden" id="test1" name="test1"/>

<div style="text-align: center;">
<div class="choice" id="choice2">디카페인</div><br/>
<strong>디카페인 상품으로<br/> 안내해드릴게요.</strong>

<input type="submit" style="width: 420px; background: #111; border: 1px solid #fff; color: #fff; font-size: 25px; margin-top: 100px;" value="다음" />
</div>
</div>
</form>