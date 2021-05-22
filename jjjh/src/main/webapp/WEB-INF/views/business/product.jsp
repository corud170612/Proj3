<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/" />
<%
   HttpSession topSession = request.getSession(false);
   String sessionBid = (String)topSession.getAttribute("bid");
%>
<form action="${home }product/ProductProc" method="post" enctype="multipart/form-data"> <!-- 컨트롤러  -->
<style type="text/css">
#searchBox{
   width: 300px;
   height: 150px;
   margin-top: -90px;
   position: absolute;
   left: 50%;
   margin-left: -150px;
   
   }
button {
   background: #111 border-radius: 2px;
   color: #000;
   font-size: 16px;
}

input {
   white-space: nowrap; /* 가로스크롤시 중요한 속성 */
   padding: 10px 10px 5px;
   width: auto;
}

#row {
   white-space: nowrap; /* 가로스크롤시 중요한 속성 */
   overflow-x: auto;
   overflow-y: hidden;
   padding: 10px 10px 5px;
   background: #fff;
   width: 1350px;
   position: absolute;
   left: 50%;
   top:60%;
   margin-left:-700px;
   
   display: flex;
   
   /*    display: none;*/
}

#row .items {
   display: inline-block;
   margin-left: 10px;
   width: 160px;
}

#row .items:first-child {
   margin-left: 0;
}

#row .items p {
   margin-bottom: 8px;
   text-indent: 7px;
}

#row .items ul {
   border-radius: 3px;
   border: 1px solid #b5b5b5;
   height: 250px;
   overflow-y: scroll;
   padding: 3px 3px 8px;
   background: #fff;
   display: flex;
   align-content: flex-start;
   flex-direction: column;
   flex-wrap: wrap;
   overflow: auto;
   color: red;
}

#row .items ul li {
   width: 100%;
}

#row .items ul li a {
   display: block;
   overflow: hidden;
   margin-top: 8px;
   padding: 3px;
   color: white;
   font-size: 12px;
   text-decoration: none;
   width: 100%;
   
}
/* #row .items ul li a:visited {

   background: #111;
} */
#row .items ul li a:visited {
   color: #000;
   background: yellow;
}

#row .items ul li:first-child a {
   margin-top: 3px;
}

#row .items ul li.on a {
   border: 1px solid #c9cccf;
   border-radius: 3px;
   font-weight: bold;
   background-color: #efefef;
}

#dripback:visited {
   background: #111;
}

#iii {
   width: 100%;
}
/* .cate {
   display: flex;
   align-content: flex-start;
   flex-direction: column;
   flex-wrap: wrap;
   overflow: auto;
   width: 200px;
   float: left;
   height: 300px;
} */

#categoryBox{
   white-space: nowrap; /* 가로스크롤시 중요한 속성 */
   overflow-x: auto;
   overflow-y: hidden;

   background: #fff;
    width: 1370px;
   position: absolute;
   left: 50%;
   margin-left: -700px;
   margin-top: 30px;
   color: black;
   
   }
   
.parent {
    display: flex;
    width: 1370px;

}
.child {
    flex: 1;
}

#together{
   background-color: #D8D8D8;
   width: 1500px;
   height: 800px;
   display: flex;
   margin-left: 250px;
   
}
h4{
   text-align: center;
}
</style>
<!-- style="width; 600px; height: 500px; border: 1px solid #111; overflow: scroll; height: 500px;"> -->

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
   $(document).ready(function() {
      /* 카페인/ 디카페인 */
      $("#caffeine").click(function() {
         $("#caffeine").css("background", "#adb5db");
         $("#decaffeine").css("background", "white");
        $("#caffeine1").prop("value", "카페인");
        
      });
      
      $("#decaffeine").click(function() {
         $("#decaffeine").css("background", "#adb5db");
         $("#caffeine").css("background", "white");
         $("#caffeine1").attr("value", "디카페인");

      });
      
      /* 드립방식 */
      $("#dripback").click(function() {
         $("#dripback").css("background", "#adb5db");
         $("#coffemaker").css("background", "white");
         $("#handdrip").css("background", "white");
         $("#espresso").css("background", "white");
         $("#mocha").css("background", "white");
         $("#dripback1").attr("value", "드립백");
               });
      $("#coffemaker").click(function() {
         $("#coffemaker").css("background", "#adb5db");
         $("#dripback").css("background", "white");
         $("#handdrip").css("background", "white");
         $("#espresso").css("background", "white");
         $("#mocha").css("background", "white");
         $("#nodrip").css("background", "white");
         $("#dripback1").attr("value", "커피메이커");

      });

      $("#handdrip").click(function() {
         $("#handdrip").css("background", "#adb5db");
         $("#coffemaker").css("background", "white");
         $("#dripback").css("background", "white");
         $("#espresso").css("background", "white");
         $("#mocha").css("background", "white");
         $("#nodrip").css("background", "white");
         $("#dripback1").attr("value", "핸드드립");

      });

      $("#espresso").click(function() {
         $("#espresso").css("background", "#adb5db");
         $("#coffemaker").css("background", "white");
         $("#handdrip").css("background", "white");
         $("#dripback").css("background", "white");
         $("#mocha").css("background", "white");
         $("#nodrip").css("background", "white");
         $("#dripback1").attr("value", "에스프레소머신");

      });

      $("#mocha").click(function() {
         $("#mocha").css("background", "#adb5db");
         $("#coffemaker").css("background", "white");
         $("#handdrip").css("background", "white");
         $("#espresso").css("background", "white");
         $("#dripback").css("background", "white");
         $("#nodrip").css("background", "white");
         $("#dripback1").attr("value", "모카포트");

      });

      $("#nodrip").click(function() {
         $("#nodrip").css("background", "#adb5db");
         $("#coffemaker").css("background", "white");
         $("#handdrip").css("background", "white");
         $("#espresso").css("background", "white");
         $("#mocha").css("background", "white");
         $("#dripback").css("background", "white");
         $("#dripback1").attr("value", "기구없음");

      });
      /* 무게감 */
      $("#heavy").click(function() {
         $("#heavy").css("background", "#adb5db");
         $("#balance").css("background", "white");
         $("#light").css("background", "white");
         $("#heavy1").attr("value", "묵직한커피");
      });
      $("#balance").click(function() {
         $("#balance").css("background", "#adb5db");
         $("#heavy").css("background", "white");
         $("#light").css("background", "white");
         $("#heavy1").attr("value", "밸런스좋은커피");

      });
      $("#light").click(function() {
         $("#light").css("background", "#adb5db");
         $("#balance").css("background", "white");
         $("#heavy").css("background", "white");
         $("#heavy1").attr("value", "가벼운커피");

      });
      /* 맛과 향 */
      $("#chocolate").click(function() {
         $("#chocolate").css("background", "#adb5db");
         $("#flower").css("background", "white");
         $("#sweet").css("background", "white");
         $("#nuts").css("background", "white");
         $("#citrus").css("background", "white");
         $("#chocolate1").attr("value", "초콜릿");
      });
      $("#flower").click(function() {
         $("#flower").css("background", "#adb5db");
         $("#chocolate").css("background", "white");
         $("#sweet").css("background", "white");
         $("#nuts").css("background", "white");
         $("#citrus").css("background", "white");
         $("#chocolate1").attr("value", "말린과일");
      });
      $("#sweet").click(function() {
         $("#sweet").css("background", "#adb5db");
         $("#chocolate").css("background", "white");
         $("#flower").css("background", "white");
         $("#nuts").css("background", "white");
         $("#citrus").css("background", "white");
         $("#chocolate1").attr("value", "달콤한");

      });
      $("#nuts").click(function() {
         $("#nuts").css("background", "#adb5db");
         $("#flower").css("background", "white");
         $("#sweet").css("background", "white");
         $("#chocolate").css("background", "white");
         $("#citrus").css("background", "white");
         $("#chocolate1").attr("value", "베리");

      });
      $("#citrus").click(function() {
         $("#citrus").css("background", "#adb5db");
         $("#flower").css("background", "white");
         $("#sweet").css("background", "white");
         $("#nuts").css("background", "white");
         $("#chocolate").css("background", "white");
         $("#chocolate1").attr("value", "사과배");

      });
      
      /* 산미 */
      $("#none").click(function() {
         $("#none").css("background", "#adb5db")
         $("#weakness").css("background", "white");
         $("#moderation").css("background", "white");
         $("#strong").css("background", "white");
         $("#none1").attr("value", "없음");

      });
      $("#weakness").click(function() {
         $("#weakness").css("background", "#adb5db");
         $("#none").css("background", "white");
         $("#moderation").css("background", "white");
         $("#strong").css("background", "white");
         $("#none1").attr("value", "약함");

      });
      $("#moderation").click(function() {
         $("#moderation").css("background", "#adb5db");
         $("#none").css("background", "white");
         $("#weakness").css("background", "white");
         $("#strong").css("background", "white");
         $("#none1").attr("value", "적당");

      });
      $("#strong").click(function() {
         $("#strong").css("background", "#adb5db");
         $("#weakness").css("background", "white");
         $("#moderation").css("background", "white");
         $("#none").css("background", "white");
         $("#none1").attr("value", "강함");

      });

      /* 원산지 */
      $("#columbia").click(function() {
         $("#columbia").css("background", "#adb5db");
         $("#indonesia").css("background", "white");
         $("#brazil").css("background", "white");
         $("#ethiopia").css("background", "white");
         $("#honduras").css("background", "white");
         $("#columbia1").attr("value", "콜롬비아");

      });
      $("#indonesia").click(function() {
         $("#indonesia").css("background", "#adb5db");
         $("#columbia").css("background", "white");
         $("#brazil").css("background", "white");
         $("#ethiopia").css("background", "white");
         $("#honduras").css("background", "white");
         $("#columbia1").attr("value", "인도네시아");

      });
      $("#brazil").click(function() {
         $("#brazil").css("background", "#adb5db");
         $("#indonesia").css("background", "white");
         $("#columbia").css("background", "white");
         $("#ethiopia").css("background", "white");
         $("#honduras").css("background", "white");
         $("#columbia1").attr("value", "브라질");

      });
      $("#ethiopia").click(function() {
         $("#ethiopia").css("background", "#adb5db");
         $("#indonesia").css("background", "white");
         $("#brazil").css("background", "white");
         $("#columbia").css("background", "white");
         $("#honduras").css("background", "white");
         $("#columbia1").attr("value", "에티오피아");

      });
      $("#honduras").click(function() {
         $("#honduras").css("background", "#adb5db");
         $("#indonesia").css("background", "white");
         $("#brazil").css("background", "white");
         $("#ethiopia").css("background", "white");
         $("#columbia").css("background", "white");
         $("#columbia1").attr("value", "온두라스");

      });
      
      /* 가격대 */
      $("#1won").click(function() {
         $("#1won").css("background", "#adb5db")
         $("#2won").css("background", "white")
         $("#3won").css("background", "white")
         $("#4won").css("background", "white")
         $("#5won").css("background", "white")
         $("#won1").attr("value", "1만원이하")

      });
      $("#2won").click(function() {
         $("#2won").css("background", "#adb5db")
         $("#1won").css("background", "white")
         $("#3won").css("background", "white")
         $("#4won").css("background", "white")
         $("#5won").css("background", "white")
         $("#won1").attr("value", "2만원이하")

      });
      $("#3won").click(function() {
         $("#3won").css("background", "#adb5db")
         $("#2won").css("background", "white")
         $("#1won").css("background", "white")
         $("#4won").css("background", "white")
         $("#5won").css("background", "white")
         $("#won1").attr("value", "3만원이하")

      });
      $("#4won").click(function() {
         $("#4won").css("background", "#adb5db")
         $("#2won").css("background", "white")
         $("#3won").css("background", "white")
         $("#1won").css("background", "white")
         $("#5won").css("background", "white")
         $("#won1").attr("value", "4만원이하")

      });
      $("#5won").click(function() {
         $("#5won").css("background", "#adb5db")
         $("#2won").css("background", "white")
         $("#3won").css("background", "white")
         $("#4won").css("background", "white")
         $("#1won").css("background", "white")
         $("#won1").attr("value", "5만원이하")

      });

   });

   
</script>
   <script>
      function setThumbnail(event) {
         var reader = new FileReader();
         reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#image_container").appendChild(img);
         };
         reader.readAsDataURL(event.target.files[0]);
      }
   </script>
<h1 style="color: white; text-align: center; margin-top: 200px;">상품등록</h1> <br/>
<div style="width: 100%; height: 1000px; padding-bottom: 100px; background: #111; ">

<div id="together">
<!-- 전체 div -->

<div align="center" class="parent" id="categoryBox"  style=" width: 67%; margin-left: -700px;     width: 1370px;">
   <div class="child">
   <h4>상품명 등록</h4>  
      <input style="background: #fff; width: 300px; height: 30px; font-size: 15px;" 
             type="text" name="prodName" value="" placeholder="상품명 입력" > <br /> <br /> <br />

   <h4>상품가격</h4>  
      <input style="background: #fff; width: 300px; height: 30px; font-size: 15px;" 
              type="text" name="price" value="" placeholder="상품가격 입력" > <br /> <br /> <br />
      
   </div>
   
   <div class="child">
   <h4>상품 이미지 등록 </h4> 
      <div id="image_container"></div>
      <!-- <input type="hidden"  name="prodimg1" id="image" accept="image/*" onchange="setThumbnail(event);" /> -->
      <input type="file" name="prodimg2" id="image" onchange="setThumbnail(event);" /> <br /> <br /> <br />
   </div>

   <div class="child">
   <h4>상품 설명</h4>
      <textarea style="font-size: 15px" name="prodIntro" value="" rows=8 cols=40 placeholder="상품설명 입력"></textarea> <br /> <br /> <br />
   </div>   
</div>

<!-- 카테고리 hidden값으로 숨기기  -->
    <input type="hidden" name="bid" value="<%= sessionBid %>" />      <!-- 카페인 -->
    
    <input type="hidden" id="caffeine1"    name="caffeine" />      <!-- 카페인 -->
    <input type="hidden" id="dripback1"    name="drip" />         <!-- 드립 방식 -->
    <input type="hidden" id="heavy1"       name="body" />         <!-- 무게간 -->
    <input type="hidden" id="chocolate1"   name="flavor" />      <!-- 맛과 향 -->
    <input type="hidden" id="none1"       name="acidity" />      <!-- 산미 -->
    <input type="hidden" id="columbia1"      name="origin"/>         <!-- 원산지 -->
    <input type="hidden" id="won1"          name="pricerange" />   <!-- 가격대 -->
 
<div id="row">
   <div class="items" style="margin-left: 80px;">
      <h4 style="color: black;">카페인 / 디카페인</h4>

      <ul>
         <li><a href="#" id="caffeine">카페인</a></li>
         <li><a href="#" id="decaffeine">디카페인</a></li>
      </ul>
      <!--          <li><input type="checkbox"  name="caffeine" value="yescaff" />카페인</li>
         <li><input type="checkbox"  name="caffeine" value="nocaff" />디카페인</li>  -->
   </div>
   
   
   <div class="items" >
      <h4 style="color: black;">드립방식</h4>
      <ul >
         <li><a href="#" id="dripback">드립백</a></li>
         <li><a href="#" id="coffemaker">커피메이커</a></li>
         <li><a href="#" id="handdrip">핸드드립</a></li>
         <li><a href="#" id="espresso">에스프레소머신</a></li>
         <li><a href="#" id="mocha">모카포트</a></li>
         <li><a href="#" id="nodrip">기구 없음</a></li>
      </ul>
   </div>
   <div class="items">
      <h4 style="color: black;">무게감</h4>
      <ul>
         <li><a href="#" id="heavy">묵직한 커피</a></li>
         <li><a href="#" id="balance">밸런스 좋은 커피</a></li>
         <li><a href="#" id="light">가벼운 커피</a></li>
      </ul>
   </div>
   <div class="items">
      <h4 style="color: black;">맛과 향</h4>
      <ul>
         <li><a href="#" id="chocolate">초콜릿</a></li>
         <li><a href="#" id="flower">말린 과일</a></li>
         <li><a href="#" id="sweet">달콤한</a></li>
         <li><a href="#" id="nuts">베리</a></li>
         <li><a href="#" id="citrus">사과 배</a></li>
      </ul>
   </div>
   <div class="items">
      <h4 style="color: black;">산미</h4>
      <ul>
         <li><a href="#" id="none">없음</a></li>
         <li><a href="#" id="weakness">약함</a></li>
         <li><a href="#" id="moderation">적당</a></li>
         <li><a href="#" id="strong">강함</a></li>
      </ul>
   </div>
   <div class="items">
      <h4 style="color: black;">원산지</h4>
      <ul>
         <li><a href="#" id="columbia">콜롬비아</a></li>
         <li><a href="#" id="indonesia">인도네시아</a></li>
         <li><a href="#" id="brazil">브라질</a></li>
         <li><a href="#" id="ethiopia">에티오피아</a></li>
         <li><a href="#" id="honduras">온두라스</a></li>
      </ul>
   </div>
   <div class="items">
      <h4 style="color: black;">가격대</h4>
      <ul>
         <li><a href="#" id="1won">1만원 이하</a></li>
         <li><a href="#" id="2won">2만원 이하</a></li>
         <li><a href="#" id="3won">3만원 이하</a></li>
         <li><a href="#" id="4won">4만원 이하</a></li>
         <li><a href="#" id="5won">5만원 이하</a></li>
      </ul>
   </div>

</div>
</div>

<div id="searchBox" align="center">
      <button style=" background-color: #111; color: white; width: 100px; height: 50px;">검색</button>
      <button type="button" value="초기화" style=" background-color: #111; color: white; color: white; width: 100px; height: 50px;" onClick="window.location.reload()">초기화</button>
</div>

</div>
</form>
<!--  -->
<!-- 이름, 이미지 등록 -->
<!--  -->