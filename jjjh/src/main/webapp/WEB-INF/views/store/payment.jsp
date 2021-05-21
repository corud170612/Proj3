<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/"/>
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

#option{
   width: 320px;
   height: 875px;
   position: fixed;
   margin-left: 950px;
   margin-top: -95px;
   padding-left: 40px;
   padding-right: 40px;
   border: 1px solid white;
   border-radius: 4px;
}
.selectOption{
   margin-left: 16px;
   margin-top: 16px;
   border: 1px solid white;
   width: 137px;
   height: 120px;
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
   
  });
  $("#400g").click(function(){
       $("#400g").css("background", "white");
       $("#span2").css("color", "black");
       $("#200g").css("background", "black");
       $("#span1").css("color", "white");
       
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
       
   
});
});
</script>

<form>
   <div id="buyFrame">
      <!-- 결제페이지 전체 div -->
      <div id="mainContent">
         <!-- 상품소개+구독옵션 div -->

         <div id="intoduce">
            <!-- 상품소개 div -->
			<div class="productImgBox">
				<img alt="영앤도터스 에티오피아 예가체프 게르시 패키지 이미지"
				src="https://d3jfjcd8dl9mjz.cloudfront.net/71NsSiFWWotiCs6kvevl3067oEE=/650x650/s3.ap-northeast-2.amazonaws.com/koke-uploads/images/20210416/209c0a94609448adabc8c84e349f4f94.png"
				class="productImg">
			<div class="productGuide">
				<strong>입안 가득 꽃향기가 전해집니다. 꿀에 절여진 딸기처럼 달고, 깔끔함을 느낄 수 있어요.</strong><br/>
			</div>
			</div>
			<div class="storeBox">
				<img alt="roastery 영앤도터스 이미지"
				src="https://d3jfjcd8dl9mjz.cloudfront.net/X4xrt40_YZNnZZ8s8-RMSVHWXx8=/200x200/s3.ap-northeast-2.amazonaws.com/koke-uploads/images/20210408/675467d771bc4372a3b02d0bd89620b4.png"
				class="storeImg">
				<strong>영앤도터스</strong>
			</div>
			<hr>
			<div class="storeGuide">
				<div id="storeName">
					<strong>로컬 로스터리 영앤도터스</strong>
				</div>
				<div id="storeIntroduce">
					<strong>Coffee is Complex!<br/><br/>영앤도터스는 커피가 가진 다양한 매력을 선보이기 위해,<br/>좋은 생두를 선별하고, 일관성 있고 논리적인 로스팅을 거쳐<br/><br/>맛있는 한 잔의 커피로 고객의 손의 쥐어지기까지의 모든 과정을 까다롭고,<br/>섬세하게 컨트롤하고 있습니다.</strong>
				</div>
				<hr>
				<div id="fixed">
					<img src="${pageContext.request.contextPath}/resources/img/pin.png" class="pin">
					<strong>위치</strong>
				</div>
				<div id="storeAddr">
					<strong>서울특별시 마포구 마포대로 156 공덕푸르지오시티 1층 107호</strong>
				</div>
				<div id="fixed">
					<img src="${pageContext.request.contextPath}/resources/img/phone.png" class="pin">
					<strong>연락처</strong>
				</div>
				<div id="storePH">
					<strong>010-1234-5678</strong>
				</div>
			</div>
         </div>

         <div id="option">
            <!-- 결제하기 버튼 + 구독 옵션 선택 div -->
         <h1 style="color: white;">달콤&상큼</h1>
         <p style="font-size: 20px; color: white;">에티오피아 예가체프 게르시</p>
         <p style="font-size: 20px; color: white; margin-bottom: 32px;">\ 22,000 (200g 기준)</p>
         <p style="font-size: 16px; color: white;">원두용량</p>
         <p style="font-size: 14px; color: #bcbcbc;">로스터리마다 용량이 조금씩 다를 수 있습니다</p>
         
         
         <div class="selectOption" id="200g" >
         <span style="font-weight: 700; font-size: 30px; color: white; line-height: 110px;" id="span1">200g</span>
         </div>
         
         <div class="selectOption" style="margin-bottom: 40px;" id="400g">
         <span style="font-weight: 700; font-size: 30px; color: white; line-height: 110px;" id="span2">400g</span>
         </div>
         
         <p style="font-size: 16px; color: white; margin-top: 30px;">구독 개월</p>
         
                  <div class="selectOption" id="onemonth">
         <span style="font-weight: 700; font-size: 30px; color: white; line-height: 110px;" id="1span">1개월</span>
         </div>
         
         <div class="selectOption" id="threemonth">
         <span style="font-weight: 700; font-size: 30px; color: white; line-height: 110px;" id="3span">3개월</span>
         </div>
         
                  <div class="selectOption" id="sixmonth">
         <span style="font-weight: 700; font-size: 30px; color: white; line-height: 110px;" id="6span">6개월</span>
         </div>
         
         <div class="selectOption" style="margin-bottom: 40px;" id="twelvmonth">
         <span style="font-weight: 700; font-size: 30px; color: white; line-height: 110px;" id="12span">12개월</span>
         </div>
         
         <input type="submit" id="buyBtn" value="구독하기" style="width: 100%; height: 60px; background: white; font-size: 20px; font-weight: 600; border-radius: 4px; color: black; border: 1px solid white;" />
         </div>

      </div>
   </div>
</form>