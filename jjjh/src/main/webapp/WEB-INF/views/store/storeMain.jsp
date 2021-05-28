<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/" />

<style type="text/css">
#productFrame {
   width: 1300px;
   height: auto;
   margin-left: 300px;
}

#category {
   width: 300px;
   height: auto;
   float:left;
}

h1 {
   color: #fff;
}

h2 {
   color: #fff;
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
strong {
   margin: 10px;
   color: #fff;
   text-align: center;
}

span{
   margin: 10px;
   color: gray;
   text-align: center;
   font-weight: bold;
}

#productList {
   width: 1000px;
   height: auto;
    padding: 10px; 
   background-color: #111;
   margin-left: 300px;
}
#productUl{
    font-size: 16px;
    line-height: 0;
    word-break: keep-all;
    width: 100%;
    padding: 0;
    list-style: none;
    margin-top: -16px;
    margin-left: 0;
    overflow: auto;
}
#productLi{
    font-size: 16px;
    line-height: 0;
    word-break: keep-all;
    width: 300px;
    height: 500px;
    margin: 0;
    padding: 0;
    padding-top: 16px;
    padding-left: 0;
   float: left;
}
.productBox{
    font-size: 16px;
    line-height: 0;
    word-break: keep-all;
    list-style: none;
    cursor: pointer;
    color: unset;
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: center;
    box-sizing: border-box;
    border-radius: 4px;
    width: 100%;
    height: auto;
    padding: 24px 30px 32px;
}
.productImg{
    font-size: 16px;
    line-height: 0;
    word-break: keep-all;
    list-style: none;
    cursor: pointer;
    color: unset;
    border-style: none;
    -webkit-user-drag: none;
    width: 100%;
    height: 100%;
}
.productImgBox{
    font-size: 16px;
    line-height: 0;
    word-break: keep-all;
    list-style: none;
    cursor: pointer;
    color: unset;
    height: 284px;
    width: 284px;
}
.productGuide{
    word-break: keep-all;
    list-style: none;
    cursor: pointer;
    text-align: center;
    display: block;
    font-weight: 500;
    font-size: 20px;
    line-height: 28px;
    letter-spacing: -.3px;
}
.storeBox{
    font-size: 16px;
    line-height: 0;
    word-break: keep-all;
    list-style: none;
    cursor: pointer;
    color: unset;
    display: flex;
    align-items: center;
}
.storeImg{
    font-size: 16px;
    line-height: 0;
    word-break: keep-all;
    list-style: none;
    cursor: pointer;
    color: unset;
    border-style: none;
    -webkit-user-drag: none;
    width: 32px;
    height: 32px;
    border-radius: 50%;
}
</style>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
   $(document).ready(function() {
      $("#cate1").click(function() {
         $("#panel1").slideToggle("slow");
      });
      $("#spanCaffeine1").click(function(){
         $("#spanCaffeine1").css("color","white");
         $("#spanCaffeine2").css("color","gray");
      });
      $("#spanCaffeine2").click(function(){
         $("#spanCaffeine2").css("color","white");
         $("#spanCaffeine1").css("color","gray");
      });
   });
   $(document).ready(function() {
      $("#cate2").click(function() {
         $("#panel2").slideToggle("slow");
      });
      $("#spanDrip1").click(function(){
         $("#spanDrip1").css("color","white");
         $("#spanDrip2").css("color","gray");
         $("#spanDrip3").css("color","gray");
         $("#spanDrip4").css("color","gray");
         $("#spanDrip5").css("color","gray");
         $("#spanDrip6").css("color","gray");         
      });
      $("#spanDrip2").click(function(){
         $("#spanDrip1").css("color","gray");
         $("#spanDrip2").css("color","white");
         $("#spanDrip3").css("color","gray");
         $("#spanDrip4").css("color","gray");
         $("#spanDrip5").css("color","gray");
         $("#spanDrip6").css("color","gray");         
      });
      $("#spanDrip3").click(function(){
         $("#spanDrip1").css("color","gray");
         $("#spanDrip2").css("color","gray");
         $("#spanDrip3").css("color","white");
         $("#spanDrip4").css("color","gray");
         $("#spanDrip5").css("color","gray");
         $("#spanDrip6").css("color","gray");         
      });
      $("#spanDrip4").click(function(){
         $("#spanDrip1").css("color","gray");
         $("#spanDrip2").css("color","gray");
         $("#spanDrip3").css("color","gray");
         $("#spanDrip4").css("color","white");
         $("#spanDrip5").css("color","gray");
         $("#spanDrip6").css("color","gray");         
      });
      $("#spanDrip5").click(function(){
         $("#spanDrip1").css("color","gray");
         $("#spanDrip2").css("color","gray");
         $("#spanDrip3").css("color","gray");
         $("#spanDrip4").css("color","gray");
         $("#spanDrip5").css("color","white");
         $("#spanDrip6").css("color","gray");         
      });
      $("#spanDrip6").click(function(){
         $("#spanDrip1").css("color","gray");
         $("#spanDrip2").css("color","gray");
         $("#spanDrip3").css("color","gray");
         $("#spanDrip4").css("color","gray");
         $("#spanDrip5").css("color","gray");
         $("#spanDrip6").css("color","white");         
      });
   });
   $(document).ready(function() {
      $("#cate3").click(function() {
         $("#panel3").slideToggle("slow");
      });
      $("#spanBody1").click(function(){
         $("#spanBody1").css("color","white");
         $("#spanBody2").css("color","gray");
         $("#spanBody3").css("color","gray");      
      });
      $("#spanBody2").click(function(){
         $("#spanBody1").css("color","gray");
         $("#spanBody2").css("color","white");
         $("#spanBody3").css("color","gray");      
      });
      $("#spanBody3").click(function(){
         $("#spanBody1").css("color","gray");
         $("#spanBody2").css("color","gray");
         $("#spanBody3").css("color","white");      
      });
   });
   $(document).ready(function() {
      $("#cate4").click(function() {
         $("#panel4").slideToggle("slow");
      });
      $("#spanFlavor1").click(function(){
         $("#spanFlavor1").css("color","white");
         $("#spanFlavor2").css("color","gray");
         $("#spanFlavor3").css("color","gray");      
         $("#spanFlavor4").css("color","gray");
         $("#spanFlavor5").css("color","gray");      
      });
      $("#spanFlavor2").click(function(){
         $("#spanFlavor1").css("color","gray");
         $("#spanFlavor2").css("color","white");
         $("#spanFlavor3").css("color","gray");      
         $("#spanFlavor4").css("color","gray");
         $("#spanFlavor5").css("color","gray");      
      });
      $("#spanFlavor3").click(function(){
         $("#spanFlavor1").css("color","gray");
         $("#spanFlavor2").css("color","gray");
         $("#spanFlavor3").css("color","white");      
         $("#spanFlavor4").css("color","gray");
         $("#spanFlavor5").css("color","gray");      
      });
      $("#spanFlavor4").click(function(){
         $("#spanFlavor1").css("color","gray");
         $("#spanFlavor2").css("color","gray");
         $("#spanFlavor3").css("color","gray");      
         $("#spanFlavor4").css("color","white");
         $("#spanFlavor5").css("color","gray");      
      });
      $("#spanFlavor5").click(function(){
         $("#spanFlavor1").css("color","gray");
         $("#spanFlavor2").css("color","gray");
         $("#spanFlavor3").css("color","gray");      
         $("#spanFlavor4").css("color","gray");
         $("#spanFlavor5").css("color","white");      
      });
   });
   $(document).ready(function() {
      $("#cate5").click(function() {
         $("#panel5").slideToggle("slow");
      });
      $("#spanAcidity1").click(function(){
         $("#spanAcidity1").css("color","white");
         $("#spanAcidity2").css("color","gray");
         $("#spanAcidity3").css("color","gray");      
         $("#spanAcidity4").css("color","gray");
      });
      $("#spanAcidity2").click(function(){
         $("#spanAcidity1").css("color","gray");
         $("#spanAcidity2").css("color","white");
         $("#spanAcidity3").css("color","gray");      
         $("#spanAcidity4").css("color","gray");
      });
      $("#spanAcidity3").click(function(){
         $("#spanAcidity1").css("color","gray");
         $("#spanAcidity2").css("color","gray");
         $("#spanAcidity3").css("color","white");      
         $("#spanAcidity4").css("color","gray");
      });
      $("#spanAcidity4").click(function(){
         $("#spanAcidity1").css("color","gray");
         $("#spanAcidity2").css("color","gray");
         $("#spanAcidity3").css("color","gray");      
         $("#spanAcidity4").css("color","white");
      });
   });
   $(document).ready(function() {
      $("#cate6").click(function() {
         $("#panel6").slideToggle("slow");
      });
      $("#spanOrigin1").click(function(){
         $("#spanOrigin1").css("color","white");
         $("#spanOrigin2").css("color","gray");
         $("#spanOrigin3").css("color","gray");      
         $("#spanOrigin4").css("color","gray");
         $("#spanOrigin5").css("color","gray");
      });
      $("#spanOrigin2").click(function(){
         $("#spanOrigin1").css("color","gray");
         $("#spanOrigin2").css("color","white");
         $("#spanOrigin3").css("color","gray");      
         $("#spanOrigin4").css("color","gray");
         $("#spanOrigin5").css("color","gray");
      });
      $("#spanOrigin3").click(function(){
         $("#spanOrigin1").css("color","gray");
         $("#spanOrigin2").css("color","gray");
         $("#spanOrigin3").css("color","white");      
         $("#spanOrigin4").css("color","gray");
         $("#spanOrigin5").css("color","gray");
      });
      $("#spanOrigin4").click(function(){
         $("#spanOrigin1").css("color","gray");
         $("#spanOrigin2").css("color","gray");
         $("#spanOrigin3").css("color","gray");      
         $("#spanOrigin4").css("color","white");
         $("#spanOrigin5").css("color","gray");
      });
      $("#spanOrigin5").click(function(){
         $("#spanOrigin1").css("color","gray");
         $("#spanOrigin2").css("color","gray");
         $("#spanOrigin3").css("color","gray");      
         $("#spanOrigin4").css("color","gray");
         $("#spanOrigin5").css("color","white");
      });
   });
   $(document).ready(function() {
      $("#cate7").click(function() {
         $("#panel7").slideToggle("slow");
      });
      $("#spanPriceRange1").click(function(){
         $("#spanPriceRange1").css("color","white");
         $("#spanPriceRange2").css("color","gray");
         $("#spanPriceRange3").css("color","gray");      
         $("#spanPriceRange4").css("color","gray");
         $("#spanPriceRange5").css("color","gray");
      });
      $("#spanPriceRange2").click(function(){
         $("#spanPriceRange1").css("color","gray");
         $("#spanPriceRange2").css("color","white");
         $("#spanPriceRange3").css("color","gray");      
         $("#spanPriceRange4").css("color","gray");
         $("#spanPriceRange5").css("color","gray");
      });
      $("#spanPriceRange3").click(function(){
         $("#spanPriceRange1").css("color","gray");
         $("#spanPriceRange2").css("color","gray");
         $("#spanPriceRange3").css("color","white");      
         $("#spanPriceRange4").css("color","gray");
         $("#spanPriceRange5").css("color","gray");
      });
      $("#spanPriceRange4").click(function(){
         $("#spanPriceRange1").css("color","gray");
         $("#spanPriceRange2").css("color","gray");
         $("#spanPriceRange3").css("color","gray");      
         $("#spanPriceRange4").css("color","white");
         $("#spanPriceRange5").css("color","gray");
      });
      $("#spanPriceRange5").click(function(){
         $("#spanPriceRange1").css("color","gray");
         $("#spanPriceRange2").css("color","gray");
         $("#spanPriceRange3").css("color","gray");      
         $("#spanPriceRange4").css("color","gray");
         $("#spanPriceRange5").css("color","white");
      });
   });

</script>

<h1   style="margin-top: 150px; color: #fff; font-weight: 40px; font-size: 60px; margin-left: 300px;">모든 커피</h1>
<div id="productFrame">
   <div id="category">
      <h1 style="font-size: 40px;">카테고리</h1>
      <hr />
      <h2 id="cate1">디카페인</h2>
      <div id="panel1" style="width: 100%; display: none;">
         <span id="spanCaffeine1">카페인</span> <span id="spanCaffeine2">디카페인</span>
      </div>
      <hr />
      <h2 id="cate2">드립방식</h2>
      <div id="panel2" style="width: 100%; display: none;">
         <span id="spanDrip1">드립백</span> <span id="spanDrip2">커피메이커</span> <span id="spanDrip3">핸드드립</span> <br/>
         <span id="spanDrip4">에스프레소머신</span> <span id="spanDrip5">모카포트</span> <br/>
         <span  id="spanDrip6">기구없음</span>
      </div>
      <hr />
      <h2 id="cate3">무게감</h2>
      <div id="panel3" style="width: 100%; display: none;">
         <span id="spanBody1">묵직한</span> <span id="spanBody2">밸런스</span> <span id="spanBody3">가벼운</span>
      </div>
      <hr />
      <h2 id="cate4">맛과 향</h2>
      <div id="panel4" style="width: 100%; display: none;">
         <span id="spanFlavor1">달콤한</span> <span id="spanFlavor2">말린과일</span> 
         <span id="spanFlavor3">초콜릿</span> <span id="spanFlavor4">베리</span> <span id="spanFlavor5">사과배</span>
      </div>
      <hr />
      <h2 id="cate5">산미</h2>
      <div id="panel5" style="width: 100%; display: none;">
         <span id="spanAcidity1">없음</span> <span id="spanAcidity2">약함</span> 
         <span id="spanAcidity3">적당</span> <span id="spanAcidity4">강함</span>
      </div>
      <hr />
      <h2 id="cate6">원산지</h2>
      <div id="panel6" style="width: 100%; display: none;">
         <span id="spanOrigin1">콜롬비아</span> <span id="spanOrigin2">에티오피아</span> 
         <span id="spanOrigin3">브라질</span> <span id="spanOrigin4">온두라스</span> <span id="spanOrigin5">인도네시아</span>
      </div>
      <hr />
      <h2 id="cate7">가격</h2>
      <div id="panel7" style="width: 100%; display: none;">
         <span id="spanPriceRange1">만원이하</span> <span id="spanPriceRange2">만원~2만원대</span> 
         <span id="spanPriceRange3">2만원~3만원</span> <span id="spanPriceRange4">3만원~4만원</span> <span id="spanPriceRange5">4만원이상</span>
      </div>
   </div>
   <script type="text/javascript">
   $(document).ready(function() {
      var selectcaffeine = $("#caffeine").val();
      var selectdrip = $("#drip").val();
      var selectheavy = $("#heavy").val();
      var selectflavor = $("#flavor").val();
      var selectacidity = $("#acidity").val();
      var selectorigin = $("#origin").val();
      var selectpricerange = $("#pricerange").val();
      
         $("#spanCaffeine1").click(function() {
            $("#caffeine").val("카페인");
            $.get("${home}store/SelectCategory?caffeine=카페인&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanCaffeine2").click(function() {
            $("#caffeine").val("디카페인");
            $.get("${home}store/SelectCategory?caffeine=디카페인&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanDrip1").click(function() {
            $("#drip").val("드립백");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip=드립백&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanDrip2").click(function() {
            $("#drip").val("커피메이커");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip=커피메이커&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanDrip3").click(function() {
            $("#drip").val("핸드드립");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip=핸드드립&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanDrip4").click(function() {
            $("#drip").val("에스프레소머신");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip=에스프레소머신&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanDrip5").click(function() {
            $("#drip").val("모카포트");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip=모카포트&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanDrip6").click(function() {
            $("#drip").val("기구없음");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip=기구없음&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanBody1").click(function() {
            $("#heavy").val("묵직한커피");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy=묵직한커피&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
            
         })
         $("#spanBody2").click(function() {
            $("#heavy").val("밸런스좋은커피");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy=밸런스좋은커피&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanBody3").click(function() {
            $("#heavy").val("가벼운커피");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy=가벼운커피&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanFlavor1").click(function() {
            $("#flavor").val("달콤한");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor=달콤한&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanFlavor2").click(function() {
            $("#flavor").val("말린과일");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor=말린과일&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanFlavor3").click(function() {
            $("#flavor").val("초콜릿");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor=초콜릿&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               
               }
         })
         })
         $("#spanFlavor4").click(function() {
            $("#flavor").val("베리");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor=베리&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanFlavor5").click(function() {
            $("#flavor").val("사과배");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor=사과배&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanAcidity1").click(function() {
            $("#acidity").val("없음");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity=없음&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanAcidity2").click(function() {
            $("#acidity").val("약함");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity=약함&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanAcidity3").click(function() {
            $("#acidity").val("적당");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity=적당&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanAcidity4").click(function() {
            $("#acidity").val("강함");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity=강함&origin="+$('#origin').val()+"&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanOrigin1").click(function() {
            $("#origin").val("콜롬비아");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin=콜롬비아&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanOrigin2").click(function() {
            $("#origin").val("에티오피아");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin=에티오피아&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanOrigin3").click(function() {
            $("#origin").val("브라질");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin=브라질&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanOrigin4").click(function() {
            $("#origin").val("온두라스");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin=온두라스&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanOrigin5").click(function() {
            $("#origin").val("인도네시아");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin=인도네시아&pricerange="+$('#pricerange').val(), function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanPriceRange1").click(function() {
            $("#pricerange").val("만원이하");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange=만원이하", function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanPriceRange2").click(function() {
            $("#pricerange").val("2만원이하");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange=2만원이하", function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanPriceRange3").click(function() {
            $("#pricerange").val("3만원이하");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange=3만원이하", function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanPriceRange4").click(function() {
            $("#pricerange").val("4만원이하");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange=4만원이하", function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
         $("#spanPriceRange5").click(function() {
            $("#pricerange").val("5만원이하");
            $.get("${home}store/SelectCategory?caffeine="+$('#caffeine').val()+"&drip="+$('#drip').val()+"&heavy="+$('#heavy').val()+"&flavor="+$('#flavor').val()+"&acidity="+$('#acidity').val()+"&origin="+$('#origin').val()+"&pricerange=5만원이하", function(data, status) {
               if(status=='success'){
                  console.log(data);
                  $("#productList").html(data);
               }
         })
         })
   });

   </script>
   <input type="hidden" name="caffeine" id="caffeine"/>
   <input type="hidden" name="drip" id="drip"/>
   <input type="hidden" name="heavy" id="heavy"/>
   <input type="hidden" name="flavor" id="flavor"/>
   <input type="hidden" name="acidity" id="acidity"/>
   <input type="hidden" name="origin" id="origin"/>
   <input type="hidden" name="pricerange" id="pricerange"/>

   <div id="productList">
      <ul id="productUl">
            <c:forEach var="store" items="${storeLst }" >
           
            <li id="productLi"><a href="${home}store/${store.prodname }">    
               <div class="productBox">
                  <div class="productImgBox">
                     <img src="${home }resources/upload/${store.prodimg1}"
                     class="productImg">
                  </div>
                  <div class="productGuide">
                     <strong>${store.flavor }</strong><br/>
                     <strong>${store.prodname }</strong><br/>
                     <strong>₩ ${store.price }</strong>
                  </div>
                  <div class="storeBox">
                     <img src="${home }resources/upload/${store.storelogo2}"
                     class="storeImg">
                     <br/>
                     <strong>${store.storename }</strong>
                  </div>
               </div>
            </a></li>
            </c:forEach>
      </ul>
   </div>

</div>