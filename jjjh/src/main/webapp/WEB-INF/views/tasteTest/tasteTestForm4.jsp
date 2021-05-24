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
.choice:active{
   background: #fff;
   color: #111;
   border: 1px solid #fff;
   
}
#testframe{
width: 1400px;
position: absolute;
left: 50%;
margin-left:-700px;
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

    width: 100%;

}
b {
   color: #fff;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#taste1").click(function(){
   $("#taste1").hide();
   $("#choice1").append(" <b id='b1'>Chocolate</b>");
    $("#choice1").css("background", "black");
    
    $("#taste2").show();
    $("#b2").remove();
    
    $("#taste3").show();
    $("#b3").remove();
    
    $("#taste4").show();
    $("#b4").remove();
    
    $("#taste5").show();
    $("#b5").remove();

    $("#test1").attr("value","초콜릿");
   
  });
  $("#taste2").click(function(){
      $("#taste2").hide();
      $("#choice2").append(" <b id='b2'>Dried fruit</b>");
       $("#choice2").css("background", "black");
       
       $("#taste1").show();
       $("#b1").remove();
       
       $("#taste3").show();
       $("#b3").remove();
       
       $("#taste4").show();
       $("#b4").remove();
       
       $("#taste5").show();
       $("#b5").remove();
       
       $("#test1").attr("value","말린과일");

     });
  $("#taste3").click(function(){
      $("#taste3").hide();
      $("#choice3").append(" <b id='b3'>Sweet</b>");
       $("#choice3").css("background", "black");
       
       $("#taste2").show();
       $("#b2").remove();
       
       $("#taste1").show();
       $("#b1").remove();
       
       $("#taste4").show();
       $("#b4").remove();
       
       $("#taste5").show();
       $("#b5").remove();
       
       $("#test1").attr("value","달콤한");
     });
  $("#taste4").click(function(){
      $("#taste4").hide();
      $("#choice4").append(" <b id='b4'>Berry</b>");
       $("#choice4").css("background", "black");
       
       $("#taste2").show();
       $("#b2").remove();
       
       $("#taste3").show();
       $("#b3").remove();
       
       $("#taste1").show();
       $("#b1").remove();
       
       $("#taste5").show();
       $("#b5").remove();
       $("#test1").attr("value","베리");

     });
  $("#taste5").click(function(){
      $("#taste5").hide();
      $("#choice5").append(" <b id='b5'>Apple/pear</b>");
       $("#choice5").css("background", "black");
       
       $("#taste2").show();
       $("#b2").remove();
       
       $("#taste3").show();
       $("#b3").remove();
       
       $("#taste4").show();
       $("#b4").remove();
       
       $("#taste1").show();
       $("#b1").remove();
       $("#test1").attr("value","사과배");

     });


  
});
</script>
<form action="${home }tasteTest/tasteTestForm5">
<input type="hidden" id="test1" name="test1"/>
<br><br><br><br><br><br><br><br><br><br>
<div>
<h2 style="font-size: 30px; text-align: center; color: #fff;">좋아하는 맛과 향을 골라주세요!</h2>
</div>

<div id="testframe">

   <div style="float: left; margin-right: 150px; text-align: center;">
      <div class="choice" id="choice1"><img class="choiceimg" id="taste1" src="https://roastery-box.s3.amazonaws.com/media/curation/taste/%EA%B7%B8%EB%A3%B9_67122x.png"></div>
      <br /> <strong>초콜릿
      </strong>
   
   </div>

   <div style="float: left; margin-right: 150px; text-align: center;">
      <div class="choice" id="choice2"><img class="choiceimg" id="taste2" src="https://roastery-box.s3.amazonaws.com/media/curation/taste/%EA%B7%B8%EB%A3%B9_67142x.png"></div>
      <br /> <strong>말린 과일
      </strong>

   </div>
   
      <div style="float: left;margin-right: 150px; text-align: center;">
      <div class="choice" id="choice3"><img class="choiceimg" id="taste3" src="https://roastery-box.s3.amazonaws.com/media/curation/taste/%EA%B7%B8%EB%A3%B9_67172x.png"></div>
      <br /> <strong>달콤한
      </strong>   

   </div>

   <div style="float: left; margin-right: 150px; text-align: center;">
      <div class="choice" id="choice4"><img class="choiceimg" id="taste4" src="https://roastery-box.s3.amazonaws.com/media/curation/taste/%EA%B7%B8%EB%A3%B9_67152x.png"></div>
      <br /> <strong>베리
      </strong>

   </div>

   <div style="float: left;  text-align: center;">
      <div class="choice" id="choice5"><img class="choiceimg" id="taste5" src="https://roastery-box.s3.amazonaws.com/media/curation/taste/%EA%B7%B8%EB%A3%B9_67262x.png"></div>
      <br /> <strong>사과/배
      </strong>

   </div>






<input type="submit" style="width: 420px; background: #111; border: 1px solid #fff; color: #fff; font-size: 25px; margin-top: 100px; margin-bottom: 100px; margin-left: 500px;" value="다음" />

</div>
</form>