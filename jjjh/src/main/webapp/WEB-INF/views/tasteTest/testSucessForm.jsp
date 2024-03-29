<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/" />

<style>
#productList {
   width: 1225px;
   height: auto;
    padding: 10px; 
   background-color: #111;
   margin-left: 350px;
   margin-top: 50px;
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
    width: 400px;
    height: 600px;
    margin: 0;
    padding: 0;
    padding-top: 16px;
    padding-left: 0;
   float: left;
   border: 1px solid white;
   border-radius: 4px;
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
    height: 400px;
    width: 350Ppx;
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
#resultWords{
margin-top: 125px;
text-align: center;
color: white;
font-size: 30px;
font-weight: bold;
}
#aboutResult{
margin-top: 20px;
text-align: center;
color: white;
font-size: 20px;

</style>

<div id="resultWords">
${msg }
${NoTest }
</div>
<div id="aboutResult">
${drip }
${heavy }
${flavor }
</div>

<div id="productList">
      <ul id="productUl">
      <c:forEach var="test" items="${testLst }">
         <li id="productLi"><a href="${home}store/${test.prodname }">
            <div class="productBox">
               <div class="productImgBox">
                  <img alt=""
                  src="${home }resources/upload/${test.prodimg1}"
                  class="productImg">
               </div>
               <div class="productGuide">
                  
                  <strong>${test.flavor }<strong></strong></strong><br/>
                  <strong>${test.prodname }</strong><br/>
                  <strong>₩ ${test.price }</strong>
                  
               </div>
               <div class="storeBox">
                  <img alt="roastery 영앤도터스 이미지"
                  src="${home }resources/upload/${test.storelogo2}"
                  class="storeImg">
                  <br/>
                  <strong>${test.storename }</strong>
               </div>
            </div>
         </a></li>
      </c:forEach>   
      </ul>
   </div>