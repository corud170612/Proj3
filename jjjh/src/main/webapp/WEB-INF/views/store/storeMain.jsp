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
         <span id="spanOrigin3">과테말라</span> <span id="spanOrigin4">페루</span> <span id="spanOrigin5">파나마</span>
      </div>
      <hr />
      <h2 id="cate7">가격</h2>
      <div id="panel7" style="width: 100%; display: none;">
         <span id="spanPriceRange1">1만원 이하</span> <span id="spanPriceRange2">2만원 이하</span> 
         <span id="spanPriceRange3">3만원 이하</span> <span id="spanPriceRange4">4만원 이하</span> <span id="spanPriceRange5">5만원 이하</span>
      </div>
   </div>

   <div id="productList">
      <ul id="productUl">
            <c:forEach var="store" items="${storeLst }">
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