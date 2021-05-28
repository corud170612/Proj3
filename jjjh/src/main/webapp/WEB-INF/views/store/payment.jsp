<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/"/>

<form action="${home }store/subComplete">

<style type="text/css">
#buyFrame{
   width: 100%;
   height: 1500px;
}
#mainContent{
   width: 1300px;
   display: flex;
   position: absolute;
   top: 20%;
   left: 50%;
   margin-left: -650px;
   margin-bottom: 100px;
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
#option{
   width: 330px;
   height: 875px;
   position: fixed;
   margin-left: 950px;
   margin-top: -95px;
   padding-left: 40px;
   padding-right: 40px;
   border: 1px solid white;
   border-radius: 4px;
   overflow-y:scroll; 

}
.selectOption{
   margin-left: 16px;
   margin-top: 12px;
   border: 1px solid white;
   width: 137px;
   height: 70px;
   float: left;
   text-align: center;
   background: black;
}

#intoduce{
   width: 950px;
   height: auto;
   font-size: 20px;
   color: white;
}
.productImgBox{
   width: 650px;
   height: 650px;
   display: block;
   margin-left: auto;
   margin-right: auto;
}
.productImg{
   width: 550px;
   height: 550px;
   display: block;
   margin-left: auto;
   margin-right: auto;
}
.productGuide{
   display: block;
   margin-left: auto;
   margin-right: auto;
   text-align: center;
}
.storeBox{
   height: 55px;
   display: flex;
    justify-content: center;
    align-items: center;
    padding-bottom: 30px;
}
.storeImg{
    width: 35px;
    height: 35px;
    border-radius: 50%;
   margin-right: 10px;
}
.storeGuide{
   display: block;
   margin-left: 10px;
}
#storeName{
   font-size: 30px;
   margin-top: 60px;
   padding-bottom: 20px;
}
#storeIntroduce{
   font-size: 20px;
   width:700px;
   padding-bottom: 60px;
}
.pin{
   width: 35px;
    height: 35px;
}
#fixed{
   font-size: 22px;
   display: flex;
    justify-content: flex-start;
    align-items: center;
    padding-top: 30px;
}
#storeAddr{
   margin-left: 35px;
}
#storePH{
   margin-left: 35px;
    padding-bottom: 50px;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#200g").click(function(){
       $("#200g").css("background", "white");
       $("#span1").css("color", "black");
       $("#400g").css("background", "black");
       $("#span2").css("color", "white");
      $("#subvol").attr("value","200g");
  });
  $("#400g").click(function(){
       $("#400g").css("background", "white");
       $("#span2").css("color", "black");
       $("#200g").css("background", "black");
       $("#span1").css("color", "white");
      $("#subvol").attr("value","400g");       
});
  
  $("#grindY").click(function(){
      $("#grindY").css("background", "white");
      $("#span11").css("color", "black");
      $("#grindN").css("background", "black");
      $("#span22").css("color", "white");
      $("#grinding").attr("value","분쇄");       
 });
  $("#grindN").click(function(){
      $("#grindN").css("background", "white");
      $("#span22").css("color", "black");
      $("#grindY").css("background", "black");
      $("#span11").css("color", "white");
      $("#grinding").attr("value","홀빈");       
 });  
  
  $("#onemonth").click(function(){
       $("#onemonth").css("background", "white");
       $("#1span").css("color", "black");
       $("#threemonth").css("background", "black");
       $("#3span").css("color", "white");
       $("#sixmonth").css("background", "black");
       $("#6span").css("color", "white");
       $("#twelvmonth").css("background", "black");
       $("#12span").css("color", "white");
      $("#submon").attr("value","1개월");       
});
  $("#threemonth").click(function(){
       $("#threemonth").css("background", "white");
       $("#3span").css("color", "black");
       $("#onemonth").css("background", "black");
       $("#1span").css("color", "white");
       $("#sixmonth").css("background", "black");
       $("#6span").css("color", "white");
       $("#twelvmonth").css("background", "black");
       $("#12span").css("color", "white");
      $("#submon").attr("value","3개월");       
});
  $("#sixmonth").click(function(){
       $("#sixmonth").css("background", "white");
       $("#6span").css("color", "black");
       $("#onemonth").css("background", "black");
       $("#1span").css("color", "white");
       $("#threemonth").css("background", "black");
       $("#3span").css("color", "white");
       $("#twelvmonth").css("background", "black");
       $("#12span").css("color", "white");
      $("#submon").attr("value","6개월");       
});
  $("#twelvmonth").click(function(){
       $("#twelvmonth").css("background", "white");
       $("#12span").css("color", "black");
       $("#onemonth").css("background", "black");
       $("#1span").css("color", "white");
       $("#threemonth").css("background", "black");
       $("#3span").css("color", "white");
       $("#sixmonth").css("background", "black");
       $("#6span").css("color", "white");
      $("#submon").attr("value","12개월");       
       
});
});
</script>

<div id="buyFrame">
   <!-- 결제페이지 전체 div -->
   
   <div id="mainContent">
      <!-- 상품소개+구독옵션 div -->
      
   
       <div id="intoduce">
          <!-- 상품소개 div -->
      <div class="productImgBox">
         <img src="${home }resources/upload/${bmember.prodimg1}"
         class="productImg">
      <div class="productGuide">
         <strong>${thisProdName }</strong><br/>
         <strong>${bmember.prodintro }</strong><br/>
      </div>
      </div>
      <div class="storeBox">
         <img src="${home }resources/upload/${bmember.storelogo2}"
         class="storeImg">
         <strong>${bmember.storename }</strong>
      </div>
      <hr>
      <div class="storeGuide">
         <input type="hidden" name="storeId" value="${bmember.bid }" />
         <div id="storeName">
            <strong>${bmember.storename }</strong>
            <input type="hidden" name="storename" value="${bmember.storename }" />
         </div>
         <div id="storeIntroduce">
            <strong>${bmember.storeintro }</strong>
         </div>
         <hr>
         <div id="fixed">
            <img src="${pageContext.request.contextPath}/resources/img/pin.png" class="pin">
            <strong>위치</strong>
         </div>
         <div id="storeAddr">
            <strong>${bmember.storeaddr }</strong>
         </div>
         <div id="fixed">
            <img src="${pageContext.request.contextPath}/resources/img/phone.png" class="pin">
            <strong>연락처</strong>
         </div>
         <div id="storePH">
            <strong>${bmember.storeph }</strong>
         </div>
      </div>
       </div>

      
         <div id="option">
            <!-- 결제하기 버튼 + 구독 옵션 선택 div -->
         <c:forEach var="store2" items="${storeLst2 }">
            <h1 style="color: white;">${store2.prodname }</h1>
               <input type="hidden" id="prodname" name="prodname" value="${store2.prodname }" />
            <h4 style="font-size: 20px; color: white;">flavor : ${store2.flavor }</h4>
            
            <h4 style="font-size: 20px; color: white; margin-bottom: 32px;">\ ${store2.price } (200g 기준)</h4>
                <input type="hidden" id="price" name="price" value="${store2.price }" />
         </c:forEach>       
           
         <h4 style="font-size: 16px; color: white;">원두용량</h4>
         <h4 style="font-size: 14px; color: #bcbcbc;">로스터리마다 용량이 조금씩 다를 수 있습니다</h4>
         <input type="hidden" id="subvol"    name="subvol" />
            <div class="selectOption" id="200g" >
               <span style="font-weight: 700; font-size: 30px; color: white; line-height: 60px;" id="span1">200g</span>
            </div>
            <div class="selectOption" style="margin-bottom: 40px;" id="400g">
               <span style="font-weight: 700; font-size: 30px; color: white; line-height: 60px;" id="span2">400g</span>
            </div>
         
         <h4 style="font-size: 16px; color: white; margin-top: 30px;">분쇄 유무</h4>
         <input type="hidden" id="grinding"    name="grinding" />
            <div class="selectOption" id="grindY" >
               <span style="font-weight: 700; font-size: 30px; color: white; line-height: 60px;" id="span11">분쇄</span>
            </div>
            <div class="selectOption" style="margin-bottom: 40px;" id="grindN">
               <span style="font-weight: 700; font-size: 30px; color: white; line-height: 60px;" id="span22">홀빈</span>
            </div>
         
         <h4 style="font-size: 16px; color: white; margin-top: 30px;">구독 개월</h4>
         <input type="hidden" id="submon"    name="submon" />
            <div class="selectOption" id="onemonth">
               <span style="font-weight: 700; font-size: 30px; color: white; line-height: 60px;" id="1span">1개월</span>
            </div>
            <div class="selectOption" id="threemonth">
               <span style="font-weight: 700; font-size: 30px; color: white; line-height: 60px;" id="3span">3개월</span>
            </div>
            <div class="selectOption" id="sixmonth">
               <span style="font-weight: 700; font-size: 30px; color: white; line-height: 60px;" id="6span">6개월</span>
            </div>
            <div class="selectOption" style="margin-bottom: 40px;" id="twelvmonth">
               <span style="font-weight: 700; font-size: 30px; color: white; line-height: 60px;" id="12span">12개월</span>
            </div>
         
         <input type="submit" id="buyBtn" onclick="" value="구독하기" style="width: 100%; height: 60px; background: white; font-size: 20px; font-weight: 600; border-radius: 4px; color: black; border: 1px solid white;    margin-bottom: 50px;" />
      </form>
         </div>
   </div>
</div>
