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
}
</style>

<div id="resultWords">
꼭 맞는 커피를 찾았어요
</div>
<div id="aboutResult">
에스프레소 머신으로 내려마시기 좋고</br>
블랙 그대로 즐길 수 있는</br>
달콤한, 고소한 커피를 추천해요.
</div>

<div id="productList">
		<ul id="productUl">
			<li id="productLi"><a href="#">
				<div class="productBox">
					<div class="productImgBox">
						<img alt="영앤도터스 에티오피아 예가체프 게르시 패키지 이미지"
						src="https://d3jfjcd8dl9mjz.cloudfront.net/71NsSiFWWotiCs6kvevl3067oEE=/650x650/s3.ap-northeast-2.amazonaws.com/koke-uploads/images/20210416/209c0a94609448adabc8c84e349f4f94.png"
						class="productImg">
					</div>
					<div class="productGuide">
						<strong>달콤<strong>&amp;</strong>상큼</strong><br/>
						<strong>에티오피아 예가체프 게르시</strong><br/>
						<strong>₩22,000</strong>
					</div>
					<div class="storeBox">
						<img alt="roastery 영앤도터스 이미지"
						src="https://d3jfjcd8dl9mjz.cloudfront.net/X4xrt40_YZNnZZ8s8-RMSVHWXx8=/200x200/s3.ap-northeast-2.amazonaws.com/koke-uploads/images/20210408/675467d771bc4372a3b02d0bd89620b4.png"
						class="storeImg">
						<br/>
						<strong>영앤도터스</strong>
					</div>
				</div>
			</a></li>
			<li id="productLi"><a href="#">
				<div class="productBox">
					<div class="productImgBox">
						<img alt="영앤도터스 에티오피아 예가체프 게르시 패키지 이미지"
						src="https://d3jfjcd8dl9mjz.cloudfront.net/71NsSiFWWotiCs6kvevl3067oEE=/650x650/s3.ap-northeast-2.amazonaws.com/koke-uploads/images/20210416/209c0a94609448adabc8c84e349f4f94.png"
						class="productImg">
					</div>
					<div class="productGuide">
						<strong>달콤<strong>&amp;</strong>상큼</strong><br/>
						<strong>에티오피아 예가체프 게르시</strong><br/>
						<strong>₩22,000</strong>
					</div>
					<div class="storeBox">
						<img alt="roastery 영앤도터스 이미지"
						src="https://d3jfjcd8dl9mjz.cloudfront.net/X4xrt40_YZNnZZ8s8-RMSVHWXx8=/200x200/s3.ap-northeast-2.amazonaws.com/koke-uploads/images/20210408/675467d771bc4372a3b02d0bd89620b4.png"
						class="storeImg">
						<br/>
						<strong>영앤도터스</strong>
					</div>
				</div>
			</a></li> 
			<li id="productLi"><a href="#">
				<div class="productBox">
					<div class="productImgBox">
						<img alt="영앤도터스 에티오피아 예가체프 게르시 패키지 이미지"
						src="https://d3jfjcd8dl9mjz.cloudfront.net/71NsSiFWWotiCs6kvevl3067oEE=/650x650/s3.ap-northeast-2.amazonaws.com/koke-uploads/images/20210416/209c0a94609448adabc8c84e349f4f94.png"
						class="productImg">
					</div>
					<div class="productGuide">
						<strong>달콤<strong>&amp;</strong>상큼</strong><br/>
						<strong>에티오피아 예가체프 게르시</strong><br/>
						<strong>₩22,000</strong>
					</div>
					<div class="storeBox">
						<img alt="roastery 영앤도터스 이미지"
						src="https://d3jfjcd8dl9mjz.cloudfront.net/X4xrt40_YZNnZZ8s8-RMSVHWXx8=/200x200/s3.ap-northeast-2.amazonaws.com/koke-uploads/images/20210408/675467d771bc4372a3b02d0bd89620b4.png"
						class="storeImg">
						<br/>
						<strong>영앤도터스</strong>
					</div>
				</div>
			</a></li>		
		</ul>
	</div>