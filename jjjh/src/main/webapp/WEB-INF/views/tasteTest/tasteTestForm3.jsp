<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/"/>
<style>

}
#testframe{
width: 100%;
position: absolute;
left: 50%;
margin-left: -25%;
height: auto;
}
.selectBox{
   width: 400px;
   text-align: center;
   background: white;
   color: black;
   border: 1px solid #A4A4A4;
   border-radius: 20px;
   padding: 24px;
   position: absolute;
   left: 50%;
   margin-left: -200px;
   top: 33%;
}
.title{
   font-weight: bold;
   font-size: 25px;
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#box1").click(function(){
    $("#box1").css("background", "black");
    $("#box1").css("color", "white");
    $("#box3").css("background", "white");
    $("#box3").css("color", "black");
    $("#box2").css("background", "white");
    $("#box2").css("color", "black");
    $("#test1").attr("value","묵직한커피");
  });
  $("#box2").click(function(){
       $("#box2").css("background", "black");
       $("#box2").css("color", "white");
       $("#box3").css("background", "white");
       $("#box3").css("color", "black");
       $("#box1").css("background", "white");
       $("#box1").css("color", "black");
       $("#test1").attr("value","밸런스좋은커피");
     });
  $("#box3").click(function(){
       $("#box3").css("background", "black");
       $("#box3").css("color", "white");
       $("#box1").css("background", "white");
       $("#box1").css("color", "black");
       $("#box2").css("background", "white");
       $("#box2").css("color", "black");
       $("#test1").attr("value","가벼움");
     });


  
});
</script>
<form action="${home }tasteTest/tasteTestForm4">
<input type="hidden" id="test1" name="test1"/>
<br><br><br><br><br><br><br>
<div>
<h2 style="font-size: 30px; text-align: center; color: #fff; ">어떤 커피를 더 선호하시나요?</h2>
</div>

<div id="testframe">
<div style="height: 570px; width: 400px;">
   <div class="selectBox" id="box1">
      <h2 class="title">묵직한 커피</h2>
      <strong class="contents">무거운 무게감으로<br/> 풍미가 가득한 커피</strong>
   </div>

   <div class="selectBox" style="top: 55%;" id="box2">
      <h2 class="title">밸런스 좋은 커피</h2>
      <strong class="contents">적당한 무게감으로 <br/>균형이 잘 잡힌 커피</strong>
   </div>

   <div class="selectBox"style="top: 77%;" id="box3">
      <h2 class="title">가벼운 커피</h2>
      <strong class="contents">가벼운 무게감으로 <br/>산뜻한 느낌을 주는 커피</strong>
   </div>
</div>






   <input type="submit" style="width: 420px; background: #111; border: 1px solid #fff; color: #fff; font-size: 25px; margin-top: 150px; margin-bottom: 100px; margin-left: 760px;" value="다음" />

</div>
</form>