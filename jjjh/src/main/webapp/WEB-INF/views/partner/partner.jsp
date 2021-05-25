<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/" />

<style>
#container{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    color: #666;
    -webkit-text-size-adjust: 100%;
    padding: 0;
    max-width: 1280px;
    padding-top: 100px;
    margin: 0 auto;
    padding-left: 20px;
    padding-right: 20px;
}

#sub-page-title{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    color: #666;
    -webkit-text-size-adjust: 100%;
    margin: 0;
    padding: 0;
    border-bottom: 2px solid #707070;
    margin-bottom: 60px;
    position: relative;
    
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
#h2{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-family: 'Noto Sans KR',sans-serif;
    -webkit-text-size-adjust: 100%;
    margin: 0;
    padding: 0;
    margin-bottom: 14px;
    color: white;
    font-size: 32px;
    font-weight: bold;
    line-height: 1.4em;
    letter-spacing: -1.6px;
    word-break: keep-all;

    }
#sub9-swiper{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    color: #666;
    -webkit-text-size-adjust: 100%;
    margin: 0;
    margin-left: auto;
    margin-right: auto;
    list-style: none;
    padding: 0;
    z-index: 1;
    touch-action: pan-y;
    position: relative;
    overflow: hidden;
}
.swiper-wrapper{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    color: #666;
    -webkit-text-size-adjust: 100%;
    list-style: none;
    margin: 0;
    padding: 0;
    position: relative;
    width: 100%;
    height: 600px;
    z-index: 1;
    display: flex;
    transition-property: transform;
    box-sizing: content-box;
    transform: translate3d(0px, 0px, 0px);
    }
#all-brand{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    color: #666;
    -webkit-text-size-adjust: 100%;
    margin: 0;
    padding: 0;
}
#ul{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    color: #666;
    -webkit-text-size-adjust: 100%;
    margin: 0;
    padding: 0;
    display: flex;
    flex-flow: wrap;
    width: 1320px;
}
/* #all-brand ul li a{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    color: #666;
    -webkit-text-size-adjust: 100%;
    margin: 0;
    padding: 0;
    list-style: none;
    width: calc(25% - 30px);
    max-width: 290px;
    margin-right: 40px;
    margin-bottom: 40px;
    position: relative;
    display: list-item;

} */
#li{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    color: #666;
    -webkit-text-size-adjust: 100%;
    margin: 0;
    padding: 0;
    list-style: none;
    width: calc(25% - 30px);
    max-width: 290px;
    margin-right: 40px;
    margin-bottom: 40px;
    position: relative;
    display: list-item;
}
#div1{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    margin: 0;
    padding: 0;
    width: 40px !important;
    height: 80px !important;
    left: -120px !important;
    background-image: url(../../../images/fullpage/sub9-left-btn.png);
    display: none !important;
    position: absolute;
    top: 50%;
    margin-top: calc(0px - (var(--swiper-navigation-size)/ 2));
    z-index: 10;
    align-items: center;
    justify-content: center;
    color: var(--swiper-navigation-color,var(--swiper-theme-color));
    right: auto;
    opacity: .35;
    cursor: auto;
    pointer-events: none;
}
#div2{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    margin: 0;
    padding: 0;
    width: 40px !important;
    height: 80px !important;
    background-image: url(../../../images/fullpage/sub9-right-btn.png);
    right: -80px !important;
    display: none !important;
    position: absolute;
    top: 50%;
    margin-top: calc(0px - (var(--swiper-navigation-size)/ 2));
    z-index: 10;
    cursor: pointer;
    align-items: center;
    justify-content: center;
    color: var(--swiper-navigation-color,var(--swiper-theme-color));
    left: auto;
}

img {
	    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    list-style: none;
    color: #000;
    margin: 0;
    padding: 0;
    border: none;
    vertical-align: top;
    width: 100%;
    object-fit: cover;
    position:relative;
    text-align:center;

	
}
.title-box{
	    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    list-style: none;
    margin: 0;
    padding: 0;
    position: relative;
    z-index: 2;
    color: #fff;
    text-align: center;
}
.sub-title{
	    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    list-style: none;
    color: #fff;
    text-align: center;
    margin: 0;
    padding: 0;
    font-size: 14px;
}

.title{
    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    list-style: none;
    color: #fff;
    text-align: center;
    margin: 0;
    padding: 0;
    font-size: 24px;
    font-weight: 500;
    letter-spacing: -1.2px;
}
.BrandImage{
	    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    font-size: 12px;
    font-family: 'Noto Sans KR',sans-serif;
    line-height: 1.8;
    -webkit-text-size-adjust: 100%;
    list-style: none;
    color: #000;
    margin: 0;
    padding: 0;
    max-width: 290px;
    max-height: 290px;
}
strong{
	position: absolute;top:50%;left:50%;transform: translate(-50%, -50%);
	color: white;
	font-size: 20px;
}

</style>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
   $(document).ready(function() {

	   $("#BrandImage1").mouseover(function(){
		   $("#BrandImage1").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/link_partner.jpg ');
		   $("div#BrandImg1").append(" <strong> 카페뎀셀브즈 </strong>");
	   });  
	   $("#BrandImage1").mouseleave(function(){
		   $("#BrandImage1").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/themsel2.jpg ');
		   $('strong').remove();
	   });  
	   
	   $("#BrandImage2").mouseover(function(){
		   $("#BrandImage2").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/4tential_partner.jpg');
		   $("div#BrandImg2").append(" <strong> 링크 커피로스터스</strong>");
	   });  
	   $("#BrandImage2").mouseleave(function(){
		   $("#BrandImage2").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/4tential_partner2.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage3").mouseover(function(){
		   $("#BrandImage3").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/4tential_partner.jpg');
		   $("div#BrandImg3").append(" <strong> 카페포텐셜</strong>");
	   });  
	   $("#BrandImage3").mouseleave(function(){
		   $("#BrandImage3").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/4tential_partner2.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage4").mouseover(function(){
		   $("#BrandImage4").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/coffeejia2.jpg');
		   $("div#BrandImg4").append(" <strong> 커피지아</strong>");
	   });  
	   $("#BrandImage4").mouseleave(function(){
		   $("#BrandImage4").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/coffeejia1.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage5").mouseover(function(){
		   $("#BrandImage5").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/bcoop2.jpg');
		   $("div#BrandImg5").append(" <strong> bcoop</strong>");
	   });  
	   $("#BrandImage5").mouseleave(function(){
		   $("#BrandImage5").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/bcoop1.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage6").mouseover(function(){
		   $("#BrandImage6").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/bearbetter2.jpg');
		   $("div#BrandImg6").append(" <strong> 비어베러</strong>");
	   });  
	   $("#BrandImage6").mouseleave(function(){
		   $("#BrandImage6").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/bearbetter1.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage7").mouseover(function(){
		   $("#BrandImage7").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/rbhcoffee1.jpg');
		   $("div#BrandImg7").append(" <strong> rbfcoffee</strong>");
	   });  
	   $("#BrandImage7").mouseleave(function(){
		   $("#BrandImage7").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/rbhcoffee2.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage8").mouseover(function(){
		   $("#BrandImage8").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/onedoit1.jpg');
		   $("div#BrandImg8").append(" <strong> 원두잇</strong>");
	   });  
	   $("#BrandImage8").mouseleave(function(){
		   $("#BrandImage8").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/onedoit2.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage9").mouseover(function(){
		   $("#BrandImage9").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/hisbeans2.jpg');
		   $("div#BrandImg9").append(" <strong> 히즈빈스</strong>");
	   });  
	   $("#BrandImage9").mouseleave(function(){
		   $("#BrandImage9").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/hisbeans1.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage10").mouseover(function(){
		   $("#BrandImage10").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%82%E1%85%A1%E1%84%86%E1%85%AE%E1%84%89%E1%85%A1%E1%84%8B%E1%85%B5%E1%84%85%E1%85%A92.jpg');
		   $("div#BrandImg10").append(" <strong> 나무사이로</strong>");
	   });  
	   $("#BrandImage10").mouseleave(function(){
		   $("#BrandImage10").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%80%E1%85%B3%E1%84%85%E1%85%AE%E1%86%B8_74312x.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage11").mouseover(function(){
		   $("#BrandImage11").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/180%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B5%E1%84%85%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5%E1%84%89%E1%85%B32.jpg');
		   $("div#BrandImg11").append(" <strong> 180커피로스터스</strong>");
	   });  
	   $("#BrandImage11").mouseleave(function(){
		   $("#BrandImage11").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%80%E1%85%B3%E1%84%85%E1%85%AE%E1%86%B8_74402x.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage12").mouseover(function(){
		   $("#BrandImage12").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%91%E1%85%A9%E1%84%90%E1%85%B31902_.jpg');
		   $("div#BrandImg12").append(" <strong> 포트1902</strong>");
	   });  
	   $("#BrandImage12").mouseleave(function(){
		   $("#BrandImage12").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%91%E1%85%A9%E1%84%90%E1%85%B31902.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage13").mouseover(function(){
		   $("#BrandImage13").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%92%E1%85%A2%E1%84%91%E1%85%B5%E1%84%87%E1%85%B5%E1%86%AB%E1%84%89%E1%85%B32.jpg');
		   $("div#BrandImg13").append(" <strong> 해피빈스</strong>");
	   });  
	   $("#BrandImage13").mouseleave(function(){
		   $("#BrandImage13").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%92%E1%85%A2%E1%84%91%E1%85%B5%E1%84%87%E1%85%B5%E1%86%AB%E1%84%89%E1%85%B3.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage14").mouseover(function(){
		   $("#BrandImage14").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%8F%E1%85%B3%E1%86%AF%E1%84%85%E1%85%A1%E1%84%89%E1%85%B3%E1%84%8F%E1%85%A12.jpg');
		   $("div#BrandImg14").append(" <strong> 클라스카 커피랩</strong>");
	   });  
	   $("#BrandImage14").mouseleave(function(){
		   $("#BrandImage14").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%8F%E1%85%B3%E1%86%AF%E1%84%85%E1%85%A1%E1%84%89%E1%85%B3%E1%84%8F%E1%85%A1.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage15").mouseover(function(){
		   $("#BrandImage15").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%91%E1%85%B3%E1%84%85%E1%85%A6%E1%84%8B%E1%85%B5%E1%84%8C%E1%85%A5%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B52.jpg');
		   $("div#BrandImg15").append(" <strong> 프레이저 커피</strong>");
	   });  
	   $("#BrandImage15").mouseleave(function(){
		   $("#BrandImage15").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%91%E1%85%B3%E1%84%85%E1%85%A6%E1%84%8B%E1%85%B5%E1%84%8C%E1%85%A5%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B5.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage16").mouseover(function(){
		   $("#BrandImage16").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/502%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B5%E1%84%85%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5%E1%84%89%E1%85%B32.jpg');
		   $("div#BrandImg16").append(" <strong> 502 커피로스터스</strong>");
	   });  
	   $("#BrandImage16").mouseleave(function(){
		   $("#BrandImage16").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/502%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B5%E1%84%85%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5%E1%84%89%E1%85%B3.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage17").mouseover(function(){
		   $("#BrandImage17").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%85%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%B5%E1%86%BC%E1%84%91%E1%85%A9%E1%84%8B%E1%85%A5%E1%84%8B%E1%85%AA%E1%84%8B%E1%85%B5%E1%86%AF2.jpg');
		   $("div#BrandImg17").append(" <strong> 로스팅 포러와일</strong>");
	   });  
	   $("#BrandImage17").mouseleave(function(){
		   $("#BrandImage17").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%85%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%B5%E1%86%BC%E1%84%91%E1%85%A9%E1%84%8B%E1%85%A5%E1%84%8B%E1%85%AA%E1%84%8B%E1%85%B5%E1%86%AF.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage18").mouseover(function(){
		   $("#BrandImage18").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%85%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%B5%E1%86%BC%E1%84%87%E1%85%A1%E1%84%8B%E1%85%B5%E1%84%8C%E1%85%A52.jpg');
		   $("div#BrandImg18").append(" <strong> 로스팅 바이저</strong>");
	   });  
	   $("#BrandImage18").mouseleave(function(){
		   $("#BrandImage18").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%85%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%B5%E1%86%BC%E1%84%87%E1%85%A1%E1%84%8B%E1%85%B5%E1%84%8C%E1%85%A5.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage19").mouseover(function(){
		   $("#BrandImage19").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%83%E1%85%A1%E1%86%A8%E1%84%90%E1%85%A5%E1%84%8E%E1%85%A1%E1%86%AF%E1%84%89%E1%85%B32.jpg');
		   $("div#BrandImg19").append(" <strong> 닥터찰스</strong>");
	   });  
	   $("#BrandImage19").mouseleave(function(){
		   $("#BrandImage19").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%83%E1%85%A1%E1%86%A8%E1%84%90%E1%85%A5%E1%84%8E%E1%85%A1%E1%86%AF%E1%84%89%E1%85%B3.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage20").mouseover(function(){
		   $("#BrandImage20").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%89%E1%85%A9%E1%84%89%E1%85%A9%E1%84%92%E1%85%A1%E1%84%89%E1%85%A1%E1%84%8E%E1%85%B52.jpg');

		   $("div#BrandImg20").append(" <strong> 소소한사치</strong>");
	   });  
	   $("#BrandImage20").mouseleave(function(){
		   $("#BrandImage20").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%89%E1%85%A9%E1%84%89%E1%85%A9%E1%84%92%E1%85%A1%E1%86%AB%E1%84%89%E1%85%A1%E1%84%8E%E1%85%B5%E3%85%A3.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage21").mouseover(function(){
		   $("#BrandImage21").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B5%E1%84%8B%E1%85%A6%E1%84%89%E1%85%B3%E1%84%91%E1%85%A6%E1%84%85%E1%85%A1%E1%86%AB%E1%84%90%E1%85%A92.jpg');
		   $("div#BrandImg21").append(" <strong> 커피 에스페란토</strong>");
	   });  
	   $("#BrandImage21").mouseleave(function(){
		   $("#BrandImage21").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B5%E1%84%8B%E1%85%A6%E1%84%89%E1%85%B3%E1%84%91%E1%85%A6%E1%84%85%E1%85%A1%E1%86%AB%E1%84%90%E1%85%A9.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage22").mouseover(function(){
		   $("#BrandImage22").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%87%E1%85%B3%E1%84%85%E1%85%A1%E1%84%8B%E1%85%AE%E1%86%AB%E1%84%92%E1%85%A9%E1%86%AF%E1%84%85%E1%85%B5%E1%86%A82.jpg');

		   $("div#BrandImg22").append(" <strong> 브라운 홀릭</strong>");
	   });  
	   $("#BrandImage22").mouseleave(function(){
		   $("#BrandImage22").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%87%E1%85%B3%E1%84%85%E1%85%A1%E1%84%8B%E1%85%AE%E1%86%AB%E1%84%92%E1%85%A9%E1%86%AF%E1%84%85%E1%85%B5%E1%86%A8.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage23").mouseover(function(){
		   $("#BrandImage23").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%8B%E1%85%A5%E1%86%AB%E1%84%83%E1%85%A5%E1%84%91%E1%85%B3%E1%84%85%E1%85%A6%E1%84%89%E1%85%A72.jpg');
		   $("div#BrandImg23").append(" <strong> 언더 프레셔</strong>");
	   });  
	   $("#BrandImage23").mouseleave(function(){
		   $("#BrandImage23").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%8B%E1%85%A5%E1%86%AB%E1%84%83%E1%85%A5%E1%84%91%E1%85%B3%E1%84%85%E1%85%A6%E1%84%89%E1%85%A7.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage24").mouseover(function(){
		   $("#BrandImage24").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%87%E1%85%B5%E1%86%AB%E1%84%90%E1%85%A5%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B5%E1%84%85%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5%E1%84%89%E1%85%B32.jpg');
		   $("div#BrandImg24").append(" <strong> 빈터 커피로스터스</strong>");
	   });  
	   $("#BrandImage24").mouseleave(function(){
		   $("#BrandImage24").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%87%E1%85%B5%E1%86%AB%E1%84%90%E1%85%A5%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B5.jpg');
		   $('strong').remove();
	   });  
	   $("#BrandImage25").mouseover(function(){
		   $("#BrandImage25").attr("src", 'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%83%E1%85%A9%E1%84%86%E1%85%B5%E1%84%82%E1%85%B5%E1%86%A8%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B52.jpg');
		   $("div#BrandImg25").append(" <strong> 도미닉 커피랩</strong>");
	   });  
	   $("#BrandImage25").mouseleave(function(){
		   $("#BrandImage25").attr("src",  'https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%83%E1%85%A9%E1%84%86%E1%85%B5%E1%84%82%E1%85%B5%E1%86%A8.jpg');
		   $('strong').remove();
	   });  


	   
	
	   

	   
   });
</script>
<div id="container">
      <div id="contents">
                

<div>
        <div id="sub-page-title">
            <h2 id="h2">6월 파트너 브랜드</h2>
        </div>
        
    </div>

   <div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events" id="sub9-swiper">
            <div class="swiper-wrapper" id="swiper-wrapper-df2b1073b42afea62" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
                 <div class="swiper-slide swiper-slide-active" role="group" aria-label="1 / 6" style="width: 400px; margin-right: 40px;">
                    <a href="${home }/index?formpath=partnerTop1" class="image"><img style="width: 400px; height: 400px;" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/12/image/themselmain.jpg"></a>
                    <div class="content">
                        <h2 class="title"><a style="font-size: 24px;" href="${home }/index?formpath=partnerTop1">카페 뎀셀브즈</a></h2>
                        <h4 class="title-sub">종로를 대표하는 커피 로스팅 컴퍼니로 꾸준한 사랑을 받고있는 브랜드입니다.</h4>
                    </div>
                </div>
                <div class="swiper-slide swiper-slide-next" role="group" aria-label="2 / 6" style="width: 400px; margin-right: 40px;">
                     <a href="${home }/index?formpath=partnerTop2" class="image"><img style="width: 400px; height: 400px;" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/12/image/namusairo.jpg"></a>
                    <div class="content">
                        <h4 class="title"><a style="font-size: 24px;" href="${home }/index?formpath=partnerTop2">나무사이로</a></h4>
                        <h4 class="title-sub">좋은 재료와 맛은 기본이라는 철학으로 커피를 통한 풍요로운 일상을 꿈꾸는 브랜드입니다.</h4>
                    </div>
                </div>
                <div class="swiper-slide" role="group" aria-label="3 / 6" style="width: 400px; margin-right: 40px;">
                    <a href="${home }/index?formpath=partnerTop3" class="image"><img style="width: 400px; height: 400px;" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/12/image/soso.jpg"></a>
                    <div class="content">
                        <h2 class="title"><a style="font-size: 24px;" href="${home }/index?formpath=partnerTop3">소소한사치</a></h2>
                        <h4 class="title-sub">손님에게 커피 한 잔의 소소한 행복을 전달하는 부천의 작은 로스터리 브랜드입니다.</h4>
                    </div>
                </div>
                <div class="swiper-slide" role="group" aria-label="4 / 6" style="width: 400px; margin-right: 40px;">
                    <a href="${home }/index?formpath=partnerTop4" class="image"><img style="width: 400px; height: 400px;" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/12/image/thanksalot.jpg"></a>
                    <div class="content">
                        <h2 class="title"><a style="font-size: 24px;" href="${home }/index?formpath=partnerTop4">땡스얼랏</a></h2>
                        <h4 class="title-sub">커피는 단순히 쓴맛만 가지고 있지 않다는 신념으로 커피의 다양한 매력을 소개하는 브랜드입니다.</h4>
                    </div>
                </div>
                <div class="swiper-slide" role="group" aria-label="5 / 6" style="width: 400px; margin-right: 40px;">
                    <a href="${home }/index?formpath=partnerTop5" class="image"><img style="width: 400px; height: 400px;" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/12/image/forawhile.jpg"></a>
                    <div class="content">
                        <h2 class="title"><a style="font-size: 24px;" href="${home }/index?formpath=partnerTop5">로스팅포러와일</a></h2>
                        <h4 class="title-sub">커피가 만들어지는 마술 같은 시간 동안 잠시만 여유를 가지자는 메시지를 전달하는 브랜드입니다.</h4>
                    </div>
                </div>
                <div class="swiper-slide" role="group" aria-label="6 / 6" style="width: 400px; margin-right: 40px;">
                    <a href="${home }/index?formpath=partnerTop6" class="image"><img style="width: 400px; height: 400px;" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/10/image/onedoithint.jpg"></a>
                    <div class="content">
                        <h2 class="title"><a style="font-size: 24px;" href="${home }/index?formpath=partnerTop6">원두잇로스터즈</a></h2>
                        <h4 class="title-sub">기본을 지키며 타협하지 않는 것. 좋은 커피를 위한 원칙을 지켜나가는 브랜드입니다.</h4>
                    </div>
                </div>
            </div>
            <div id="div1" class="swiper-button-prev swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-6236d38c6906aa4d" aria-disabled="true"></div>
            <div id="div2" class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-6236d38c6906aa4d" aria-disabled="false"></div>

 
 
 
    <div id="sub-page-title">
        <h2 id="h2" style="letter-spacing: 0;">ALL BRAND</h2>
    </div>
    <div class="all-brand" id="all-brand">
        <ul id="ul"><li id="li" style="display: list-item;"><a href="${home }/index?formpath=partner1">
                <div class="BrandImage" id="BrandImg1">
                <img  id= "BrandImage1" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/themsel2.jpg"><strong>123</strong>
                </div>
            </a></li><li id="li" style="display: list-item;"><a href="https://cafebox.co.kr/board/free/read.html?no=135&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg2"><img  id= "BrandImage2"src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/link_partner2.jpg"></div>

            </a></li><li id="li" style="display: list-item;"><a href="https://cafebox.co.kr/board/free/read.html?no=134&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg3"><img id= "BrandImage3" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/4tential_partner2.jpg"></div>
              
            </a></li><li id="li" style="display: list-item;"><a href="https://cafebox.co.kr/board/free/read.html?no=102&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg4"><img id= "BrandImage4" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/coffeejia1.jpg"></div>
              
                </a></li><li id="li" style="display: list-item;"><a href="https://cafebox.co.kr/board/free/read.html?no=103&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg5"><img id= "BrandImage5" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/bcoop1.jpg"></div>
               
                </a></li><li id="li" style="display: list-item;"><a href="https://cafebox.co.kr/board/free/read.html?no=104&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg6"><img id= "BrandImage6" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/bearbetter1.jpg"></div>
       
                     </a></li><li id="li" style="display: list-item;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=87&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg7"><img id= "BrandImage7" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/rbhcoffee2.jpg"></div>
            
                          </a></li><li id="li" style="display: list-item;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=88&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg8"><img id= "BrandImage8" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/onedoit2.jpg"></div>
              
                </a></li><li id="li" style="display: list-item;"><a href="https://cafebox.co.kr/board/free/read.html?no=105&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg9"><img id= "BrandImage9" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/hisbeans1.jpg"></div>
              
            </a></li><li id="li" style="display: list-item;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=85&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg10"><img id= "BrandImage10" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%80%E1%85%B3%E1%84%85%E1%85%AE%E1%86%B8_74312x.jpg"></div>
               
            </a></li><li id="li" style="display: list-item;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=84&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg11"><img id= "BrandImage11" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%80%E1%85%B3%E1%84%85%E1%85%AE%E1%86%B8_74402x.jpg"></div>
               
                </a></li><li id="li" style="display: list-item;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=83&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg12"><img id= "BrandImage12" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%91%E1%85%A9%E1%84%90%E1%85%B31902.jpg"></div>
              
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=82&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg13"><img id= "BrandImage13" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%92%E1%85%A2%E1%84%91%E1%85%B5%E1%84%87%E1%85%B5%E1%86%AB%E1%84%89%E1%85%B3.jpg"></div>
               
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=81&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg14"><img id= "BrandImage14" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%8F%E1%85%B3%E1%86%AF%E1%84%85%E1%85%A1%E1%84%89%E1%85%B3%E1%84%8F%E1%85%A1.jpg"></div>
               
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=80&amp;board_no=8">
                <div class="BrandImage" id="BrandImg15"><img id= "BrandImage15" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%91%E1%85%B3%E1%84%85%E1%85%A6%E1%84%8B%E1%85%B5%E1%84%8C%E1%85%A5%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B5.jpg"></div>
                
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=79&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg16"><img id= "BrandImage16" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/502%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B5%E1%84%85%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5%E1%84%89%E1%85%B3.jpg"></div>
               
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=76&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg17"><img id= "BrandImage17" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%85%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%B5%E1%86%BC%E1%84%91%E1%85%A9%E1%84%8B%E1%85%A5%E1%84%8B%E1%85%AA%E1%84%8B%E1%85%B5%E1%86%AF.jpg"></div>
                
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=75&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg18"><img id= "BrandImage18" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%85%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%B5%E1%86%BC%E1%84%87%E1%85%A1%E1%84%8B%E1%85%B5%E1%84%8C%E1%85%A5.jpg"></div>
                
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=78&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg19"><img id= "BrandImage19" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%83%E1%85%A1%E1%86%A8%E1%84%90%E1%85%A5%E1%84%8E%E1%85%A1%E1%86%AF%E1%84%89%E1%85%B3.jpg"></div>
               
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=77&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg20"><img id= "BrandImage20" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%89%E1%85%A9%E1%84%89%E1%85%A9%E1%84%92%E1%85%A1%E1%86%AB%E1%84%89%E1%85%A1%E1%84%8E%E1%85%B5%E3%85%A3.jpg"></div>
                
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=72&amp;board_no=8&amp;page=2">
                <div class="BrandImage" id="BrandImg21"><img id= "BrandImage21" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B5%E1%84%8B%E1%85%A6%E1%84%89%E1%85%B3%E1%84%91%E1%85%A6%E1%84%85%E1%85%A1%E1%86%AB%E1%84%90%E1%85%A9.jpg"></div>
               
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=71&amp;board_no=8&amp;page=2">
                <div class="BrandImage" id="BrandImg22"><img id= "BrandImage22" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%87%E1%85%B3%E1%84%85%E1%85%A1%E1%84%8B%E1%85%AE%E1%86%AB%E1%84%92%E1%85%A9%E1%86%AF%E1%84%85%E1%85%B5%E1%86%A8.jpg"></div>
                
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=73&amp;board_no=8&amp;page=2">
                <div class="BrandImage" id="BrandImg23"><img id= "BrandImage23" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%8B%E1%85%A5%E1%86%AB%E1%84%83%E1%85%A5%E1%84%91%E1%85%B3%E1%84%85%E1%85%A6%E1%84%89%E1%85%A7.jpg"></div>
                
     
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=74&amp;board_no=8&amp;page=1">
                <div class="BrandImage" id="BrandImg24"><img id= "BrandImage24" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%87%E1%85%B5%E1%86%AB%E1%84%90%E1%85%A5%E1%84%8F%E1%85%A5%E1%84%91%E1%85%B5.jpg"></div>
              
            </a></li><li id="li" style="display: none;"><a href="https://cafebox.co.kr/board/gallery/read.html?no=69&amp;board_no=8&amp;page=2">
                <div class="BrandImage" id="BrandImg25"><img id= "BrandImage25" src="https://turtlecrew-aboutcafe.s3.amazonaws.com/media/aboutad/8/image/%E1%84%83%E1%85%A9%E1%84%86%E1%85%B5%E1%84%82%E1%85%B5%E1%86%A8.jpg"></div>
               
            </a></li>

        </ul><button class="all-brand-btn" style="    --swiper-theme-color: #007aff;
    --swiper-navigation-size: 44px;
    -webkit-text-size-adjust: 100%;
    overflow: visible;
    padding: 0;
    background: none;
    max-width: 400px;
    width: 100%;
    height: 74px;
    border: 1px solid #707070;
    margin: 0 auto;
    display: block;
    color: #fff;
    font-size: 20px;
    font-family: 'Noto Sans KR';
    font-weight: 500;
    letter-spacing: -1px;
    text-align: center;
    cursor: pointer;
    box-sizing: border-box;
    margin-bottom: 150px;
    ">더보기</button>
    </div>
</div>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- swiper -->
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
// sub9 서브 배너 추가 2021.01.20 //
var sub9_swiper = new Swiper('#sub9-swiper', {
    slidesPerView: 3,
    spaceBetween: 40,
    slidesOffsetAfter: $('#sub9-swiper').width() - ($('.swiper-slide').width()),
    pagination: {
        el: '.swiper-pagination',
        type: 'custom',
        renderCustom: function (swiper, current, total) {
            return '<span class="swiper-pagination-current">'+current+'</span> / ' + '<span class="swiper-pagination-total">'+(total+2)+'</span>';
        }
    },
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    }
});
$(".all-brand ul li").hide();
$(".all-brand ul li").slice(0, 12).show();
$(".all-brand-btn").click(function(e){
    $(".all-brand ul li:hidden").slice(0, 8).show();
    if($(".all-brand ul li:hidden").length == 0){
        $(".all-brand-btn").hide();
    }
});
</script>
            </div>
            </div>