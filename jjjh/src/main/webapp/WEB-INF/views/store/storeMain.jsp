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
	});
	$(document).ready(function() {
		$("#cate2").click(function() {
			$("#panel2").slideToggle("slow");
		});
	});
	$(document).ready(function() {
		$("#cate3").click(function() {
			$("#panel3").slideToggle("slow");
		});
	});
	$(document).ready(function() {
		$("#cate4").click(function() {
			$("#panel4").slideToggle("slow");
		});
	});
	$(document).ready(function() {
		$("#cate5").click(function() {
			$("#panel5").slideToggle("slow");
		});
	});
	$(document).ready(function() {
		$("#cate6").click(function() {
			$("#panel6").slideToggle("slow");
		});
	});
	$(document).ready(function() {
		$("#cate7").click(function() {
			$("#panel7").slideToggle("slow");
		});
	});
</script>


<h1	style="margin-top: 150px; color: #fff; font-weight: 40px; font-size: 60px; margin-left: 300px;">모든 커피</h1>
<div id="productFrame">
	<div id="category">
		<h1 style="font-size: 40px;">카테고리</h1>
		<hr />
		<h2 id="cate1">디카페인</h2>
		<div id="panel1" style="width: 100%; display: none;">
			<strong>카페인</strong> <strong>디카페인</strong>
		</div>
		<hr />
		<h2 id="cate2">맛과향</h2>
		<div id="panel2" style="width: 100%; display: none;">
			<strong>달콤한</strong> <strong>꽃향기</strong> <strong>초콜릿</strong> <strong>견과류</strong>
			<strong>감귤류</strong>
		</div>
		<hr />
		<h2 id="cate3">산미</h2>
		<div id="panel3" style="width: 100%; display: none;">
			<strong>없음</strong> <strong>약함</strong> <strong>적당</strong> <strong>강함</strong>
		</div>
		<hr />
		<h2 id="cate4">드립방식</h2>
		<div id="panel4" style="width: 100%; display: none;">
			<strong>캡슐</strong> <strong>드립백</strong> <strong>핸드드립</strong> <strong>기구없음</strong>
		</div>
		<hr />
		<h2 id="cate5">무게감</h2>
		<div id="panel5" style="width: 100%; display: none;">
			<strong>묵직한</strong> <strong>밸런스</strong> <strong>가벼운</strong>
		</div>
		<hr />
		<h2 id="cate6">원산지</h2>
		<div id="panel6" style="width: 100%; display: none;">
			<strong>콜롬비아</strong> <strong>에티오피아</strong> <strong>과테말라</strong> <strong>페루</strong>
			<strong>파나마</strong>
		</div>
		<hr />
		<h2 id="cate7">가격</h2>
		<div id="panel7" style="width: 100%; display: none;">
			<strong>1만원 이하</strong> <strong>2만원 이하</strong> <strong>3만원
				이하</strong> <strong>4만원 이하</strong> <strong>5만원 이하</strong>
		</div>
	</div>

	<div id="productList">
		<ul id="productUl">
			<li id="productLi"><a href="${home}index?formpath=payment">
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
</div>