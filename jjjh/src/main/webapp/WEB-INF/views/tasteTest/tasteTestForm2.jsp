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
    background-color: white;
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
    margin-top: 100px;
    
}
.choice:active{
   background: #fff;
   color: #111;
   border: 1px solid #fff;
   
}
#testframe{
width: 810px;
position: absolute;
left: 50%;
margin-left:-405px;
height: auto;
}
strong {
   color: #fff;
   margin-top: 200px;
   
}
.choiceimg {
       --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    color: #333333;
    cursor: pointer;
    margin: 0;
    padding: 0;
    position: relative;
    width: 100%;
   padding-left: 10px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#choice1").click(function(){
    $("#choice1").css("background", "gray");
    $("#choice2").css("background", "white");
    $("#choice3").css("background", "white");
    $("#choice4").css("background", "white");
    $("#choice5").css("background", "white");
    $("#choice6").css("background", "white");

  });
  $("#choice2").click(function(){
       $("#choice2").css("background", "gray");
       $("#choice1").css("background", "white");
       $("#choice3").css("background", "white");
       $("#choice4").css("background", "white");
       $("#choice5").css("background", "white");
       $("#choice6").css("background", "white");

     });
  $("#choice3").click(function(){
       $("#choice3").css("background", "gray");
       $("#choice2").css("background", "white");
       $("#choice1").css("background", "white");
       $("#choice4").css("background", "white");
       $("#choice5").css("background", "white");
       $("#choice6").css("background", "white");

     });
  $("#choice4").click(function(){
       $("#choice4").css("background", "gray");
       $("#choice2").css("background", "white");
       $("#choice3").css("background", "white");
       $("#choice1").css("background", "white");
       $("#choice5").css("background", "white");
       $("#choice6").css("background", "white");

     });
  $("#choice5").click(function(){
       $("#choice5").css("background", "gray");
       $("#choice2").css("background", "white");
       $("#choice3").css("background", "white");
       $("#choice4").css("background", "white");
       $("#choice1").css("background", "white");
       $("#choice6").css("background", "white");

     });
  $("#choice6").click(function(){
       $("#choice6").css("background", "gray");
       $("#choice2").css("background", "white");
       $("#choice3").css("background", "white");
       $("#choice4").css("background", "white");
       $("#choice5").css("background", "white");
       $("#choice1").css("background", "white");

     });

  
});
</script>
<br><br><br><br><br><br><br><br><br><br>
<div>
<p style="font-size: 30px; text-align: center; color: #fff;">어떤 방식으로 내려 드실건가요?</p>
</div>

<div id="testframe">

   <div style="float: left; margin-right: 150px; text-align: center;">
      <div class="choice" id="choice1"><img class="choiceimg" src="https://roastery-box.s3.amazonaws.com/media/curation/tool/%EA%B7%B8%EB%A3%B9_67332x.png"></div>
      <br /> <strong>드립백
      </strong>
   
   </div>

   <div style="float: left; margin-right: 150px; text-align: center;">
      <div class="choice" id="choice2"><img class="choiceimg" src="https://roastery-box.s3.amazonaws.com/media/curation/tool/%EA%B7%B8%EB%A3%B9_67322x.png"></div>
      <br /> <strong>커피메이커
      </strong>

   </div>
   
      <div style="float: left; text-align: center;">
      <div class="choice" id="choice3"><img class="choiceimg" src="https://roastery-box.s3.amazonaws.com/media/curation/tool/%EA%B7%B8%EB%A3%B9_67312x.png"></div>
      <br /> <strong>핸드드립
      </strong>   

   </div>

   <div style="float: left; margin-right: 150px; text-align: center;">
      <div class="choice" id="choice4"><img class="choiceimg" src="https://roastery-box.s3.amazonaws.com/media/curation/tool/%EA%B7%B8%EB%A3%B9_67302x.png"></div>
      <br /> <strong>에스프레소 머신
      </strong>

   </div>

   <div style="float: left; margin-right: 150px; text-align: center;">
      <div class="choice" id="choice5"><img class="choiceimg" src="https://roastery-box.s3.amazonaws.com/media/curation/tool/%EA%B7%B8%EB%A3%B9_67342x.png"></div>
      <br /> <strong>모카포트
      </strong>

   </div>
   
      <div style="float: left; text-align: center;">
      <div class="choice" id="choice6"><img class="choiceimg" src="https://roastery-box.s3.amazonaws.com/media/curation/tool/KakaoTalk_20201219_175613492.png"></div>
      <br /> <strong>기구 없음
      </strong>   

   </div>






   <button formaction="${home }tasteTest/tasteTestForm3"
      style="width: 420px; background: #111; border: 1px solid #fff; color: #fff; font-size: 25px; margin-top: 100px; margin-left: 195px; margin-bottom: 100px;">다음</button>

</div>