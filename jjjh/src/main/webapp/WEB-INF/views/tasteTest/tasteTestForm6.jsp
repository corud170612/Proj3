<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/"/>
<style>

}
#testframe{
width: 100%;

height: auto;
}
.selectBox{
   width: 200px;
   text-align: center;
   background: white;
   color: black;
   border: 1px solid #A4A4A4;
   border-radius: 20px;
   padding: 24px;
   float: left;
   margin-right: 50px;
   margin-top: 100px;


}
.title{
   font-weight: bold;
   font-size: 25px;
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
    $("#box4").css("background", "white");
    $("#box4").css("color", "black");
    $("#box5").css("background", "white");
    $("#box5").css("color", "black");
    $("#test1").attr("value","만원이하");
  });
  $("#box2").click(function(){
       $("#box2").css("background", "black");
       $("#box2").css("color", "white");
       $("#box3").css("background", "white");
       $("#box3").css("color", "black");
       $("#box1").css("background", "white");
       $("#box1").css("color", "black");
       $("#box4").css("background", "white");
       $("#box4").css("color", "black");
       $("#box5").css("background", "white");
       $("#box5").css("color", "black");
       $("#test1").attr("value","2만원이하");
     });
  $("#box3").click(function(){
       $("#box3").css("background", "black");
       $("#box3").css("color", "white");
       $("#box1").css("background", "white");
       $("#box1").css("color", "black");
       $("#box2").css("background", "white");
       $("#box2").css("color", "black");
       $("#box4").css("background", "white");
       $("#box4").css("color", "black");
       $("#box5").css("background", "white");
       $("#box5").css("color", "black");
       $("#test1").attr("value","3만원이하");
     });
  $("#box4").click(function(){
      $("#box4").css("background", "black");
      $("#box4").css("color", "white");
      $("#box1").css("background", "white");
      $("#box1").css("color", "black");
      $("#box2").css("background", "white");
      $("#box2").css("color", "black");
      $("#box3").css("background", "white");
      $("#box3").css("color", "black");
      $("#box5").css("background", "white");
      $("#box5").css("color", "black");
      $("#test1").attr("value","4만원이하");

    });
  $("#box5").click(function(){
      $("#box5").css("background", "black");
      $("#box5").css("color", "white");
      $("#box1").css("background", "white");
      $("#box1").css("color", "black");
      $("#box2").css("background", "white");
      $("#box2").css("color", "black");
      $("#box3").css("background", "white");
      $("#box3").css("color", "black");
      $("#box4").css("background", "white");
      $("#box4").css("color", "black");
      $("#test1").attr("value","5만원이하");

    });


  
});
</script>
<form action="${home }tasteTest/testSucessForm">
<input type="hidden" id="test1" name="test1"/>
<br><br><br><br><br><br><br>
<div>
<p style="font-size: 30px; text-align: center; color: #fff; ">어느 정도 가격대로<br/>추천해드릴까요?</p>
</div>

   <div id="testframe">
      <div style="height: 400px; width: 100%;">
         <div class="selectBox" id="box1" style="margin-left: 230px;">
            <p class="title">만원 이하</p>

         </div>

         <div class="selectBox" id="box2">
            <p class="title">2만원 이하</p>

         </div>

         <div class="selectBox" id="box3">
            <p class="title">3만원 이하</p>

         </div>
         <div class="selectBox" id="box4">
            <p class="title">4만원 이하</p>

         </div>
         <div class="selectBox" id="box5">
         <p class="title">5만원 이하</p>

      </div>
      </div>
      
   </div>
   







   <input type="submit" style="width: 420px; background: #111; border: 1px solid #fff; color: #fff; font-size: 25px; margin-top: 150px; margin-bottom: 100px; margin-left: 760px;" value="다음" />

</div>
</form>