<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/" />

<style type="text/css">
button {
	background: #111
	border-radius: 2px;
	color: #000;
	font-size: 16px;
}

input {
	white-space: nowrap; /* 가로스크롤시 중요한 속성 */
	padding: 10px 10px 5px;
	width: auto;
	position: absolute;
	left: 45%;
	margin-left: -250px;
	margin-top: 100px;
	display: none;
}

#row {
	white-space: nowrap; /* 가로스크롤시 중요한 속성 */
	overflow-x: auto;
	overflow-y: hidden;
	padding: 10px 10px 5px;
	background: #efefef;
	width: auto;
	position: absolute;
	left: 50%;
	margin-left: -700px;
	margin-top: 100px;
	display: none;
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
	color: black;
	font-size: 12px;
	text-decoration: none;
	width: 100%;
	
}
/* #row .items ul li a:visited {

	background: #111;
} */
#row .items ul li a:hover {
	color: #000;
	background: #111;
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
#dripback:visited{
	background: #111;
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
</style>
<!-- style="width; 600px; height: 500px; border: 1px solid #111; overflow: scroll; height: 500px;"> -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
 	$(document).ready(function() {
/* 		$("#btn1").click(function() {
			$("#show1").show();
			$("#row").hide();
		}); */
		$("#btn2").click(function() {
			$("#row").show();
			$("#show1").hide();

		});
	}); 

 	$(document).ready(function() {
		$("#caffeine").click(function() {
			$("#caffeine").css("background", "yellow")
		}); 
	}); 
 	$(document).ready(function() {
		$("#decaffeinated").click(function() {
			$("#decaffeinated").css("background", "yellow")
		}); 
	}); 
 	$(document).ready(function() {
		$("#dripback").click(function() {
			$("#dripback").css("background", "yellow")
		}); 
	}); 
 	$(document).ready(function() {
		$("#coffemaker").click(function() {
			$("#coffemaker").css("background", "yellow")
		}); 
	}); 
 	$(document).ready(function() {
		$("#handdrip").click(function() {
			$("#handdrip").css("background", "yellow")
		}); 
	}); 
 	$(document).ready(function() {
		$("#espresso").click(function() {
			$("#espresso").css("background", "yellow")
		}); 
	}); 
 	$(document).ready(function() {
		$("#mocha").click(function() {
			$("#mocha").css("background", "yellow")
		}); 
	}); 
 	$(document).ready(function() {
		$("#nodrip").click(function() {
			$("#nodrip ").css("background", "yellow")
		}); 
	}); 
 	$(document).ready(function() {
		$("#heavy").click(function() {
			$("#heavy ").css("background", "yellow")
		}); 
	}); 
 	$(document).ready(function() {
		$("#balance").click(function() {
			$("#balance ").css("background", "yellow")
		}); 
	}); 
 	$(document).ready(function() {
		$("#light").click(function() {
			$("#light ").css("background", "yellow")
		}); 
	}); 

	
	
 	
</script>

<hr width="500px"/>
<h1 style="color: white; text-align: center; margin-top: 200px;">상품등록</h1>
<hr width="500px"/>
<br/>
<div
	style="width: 100%; position: absolute; left: 50%; margin-left: -350px; height: 600px; padding-left: 100px;">
<!-- 	<button id="btn1" style="width: 500px; height: 80px;">
		<h2>카테고리명 검색</h2>
	</button> -->

	<button id="btn2" style="width: 500px; height: 80px;">
		<h2>카테고리명 선택</h2>
	</button>
</div>

<br />
<!-- <input type="text" id="show1" style="background: #fff; width: 700px; height: 40px; font-size: 15px;" />
 -->
<div id="row">
	<div class="items">
		<p>카페인 / 디카페인</p>
		<ul>
			<li><a href="#" id="caffeine">카페인</a></li>
			<li><a href="#" id="decaffeinated">디카페인</a></li>
		</ul>
	</div>
	<div class="items">
		<p>드립방식</p>
		<ul>
			<li><a href="#" id="dripback">드립백</a></li>
			<li><a href="#" id="coffemaker">커피메이커</a></li>
			<li><a href="#" id="handdrip">핸드드립</a></li>
			<li><a href="#" id="espresso">에스프레소머신</a></li>
			<li><a href="#" id="mocha">모카포트</a></li>
			<li><a href="#" id="nodrip">기구 없음</a></li>
		</ul>
	</div>
	<div class="items">
		<p>무게감</p>
		<ul>
			<li><a href="#" id="heavy">묵직한 커피</a></li>
			<li><a href="#" id="balance">밸런스 좋은 커피</a></li>
			<li><a href="#" id="light">가벼운 커피</a></li>
		</ul>
	</div>
	<div class="items">
		<p>맛과 향</p>
		<ul>
			<li><a href="#none">초콜릿</a></li>
			<li><a href="#none">꼿 향</a></li>
			<li><a href="#none">달콤한</a></li>
			<li><a href="#none">견과류</a></li>
			<li><a href="#none">감귤류</a></li>
		</ul>
	</div>
	<div class="items">
		<p>산미</p>
		<ul>
			<li><a href="#none">없음</a></li>
			<li><a href="#none">약함</a></li>
			<li><a href="#none">적당</a></li>
			<li><a href="#none">강함</a></li>
		</ul>
	</div>
	<div class="items">
		<p>원산지</p>
		<ul>
			<li><a href="#none">콜롬비아</a></li>
			<li><a href="#none">인도네시아</a></li>
			<li><a href="#none">브라질</a></li>
			<li><a href="#none">에티오피아</a></li>
			<li><a href="#none">온두라스</a></li>
		</ul>
	</div>
	<div class="items">
		<p>가격</p>
		<ul>
			<li><a href="#none">8,000</a></li>
			<li><a href="#none">15,000</a></li>
			<li><a href="#none">25,000</a></li>
			<li><a href="#none">35,000</a></li>
			<li><a href="#none">47,000</a></li>
		</ul>
	</div>
	<div class="items">
		<p>분쇄</p>
		<ul>
			<li><a href="#none">분쇄</a></li>
			<li><a href="#none">홀빈</a></li>

		</ul>
	</div>
</div>
<!--  -->
<!-- 이름, 이미지 등록 -->
<!--  -->
<div id="row">
	<div class="items">
		<p>카페인 / 디카페인</p>
		<ul>
			<li><a href="#" id="caffeine">카페인</a></li>
			<li><a href="#" id="decaffeinated">디카페인</a></li>
		</ul>
	</div>
	<div class="items">
		<p>드립방식</p>
		<ul>
			<li><a href="#" id="dripback">드립백</a></li>
			<li><a href="#" id="coffemaker">커피메이커</a></li>
			<li><a href="#" id="handdrip">핸드드립</a></li>
			<li><a href="#" id="espresso">에스프레소머신</a></li>
			<li><a href="#" id="mocha">모카포트</a></li>
			<li><a href="#" id="nodrip">기구 없음</a></li>
		</ul>
	</div>
	<div class="items">
		<p>무게감</p>
		<ul>
			<li><a href="#" id="heavy">묵직한 커피</a></li>
			<li><a href="#" id="balance">밸런스 좋은 커피</a></li>
			<li><a href="#" id="light">가벼운 커피</a></li>
		</ul>
	</div>
	<div class="items">
		<p>맛과 향</p>
		<ul>
			<li><a href="#none">초콜릿</a></li>
			<li><a href="#none">꼿 향</a></li>
			<li><a href="#none">달콤한</a></li>
			<li><a href="#none">견과류</a></li>
			<li><a href="#none">감귤류</a></li>
		</ul>
	</div>
	<div class="items">
		<p>산미</p>
		<ul>
			<li><a href="#none">없음</a></li>
			<li><a href="#none">약함</a></li>
			<li><a href="#none">적당</a></li>
			<li><a href="#none">강함</a></li>
		</ul>
	</div>
	<div class="items">
		<p>원산지</p>
		<ul>
			<li><a href="#none">콜롬비아</a></li>
			<li><a href="#none">인도네시아</a></li>
			<li><a href="#none">브라질</a></li>
			<li><a href="#none">에티오피아</a></li>
			<li><a href="#none">온두라스</a></li>
		</ul>
	</div>
	<div class="items">
		<p>가격</p>
		<ul>
			<li><a href="#none">8,000</a></li>
			<li><a href="#none">15,000</a></li>
			<li><a href="#none">25,000</a></li>
			<li><a href="#none">35,000</a></li>
			<li><a href="#none">47,000</a></li>
		</ul>
	</div>
	<div class="items">
		<p>분쇄</p>
		<ul>
			<li><a href="#none">분쇄</a></li>
			<li><a href="#none">홀빈</a></li>

		</ul>
	</div>
</div>
<!-- 
			<ul class="cate" style="display: none;">
				<li><a href="#" style="text-decoration: none; color: white">카페인/디카페인</a></li>
				<li><a href="#" style="text-decoration: none; color: white">드립방식</a></li>
				<li><a href="#" style="text-decoration: none; color: white">무게감</a></li>
				<li><a href="#" style="text-decoration: none; color: white">향</a></li>
				<li><a href="#" style="text-decoration: none; color: white">산미</a></li>
				<li><a href="#" style="text-decoration: none; color: white">원산지</a></li>
				<li><a href="#" style="text-decoration: none; color: white">가격</a></li>
				<li><a href="#" style="text-decoration: none; color: white">분쇄</a></li>
			</ul>
						<ul class="cate" style="display: none;">
				<li><a href="#" style="text-decoration: none; color: white">카페인/디카페인</a></li>
				<li><a href="#" style="text-decoration: none; color: white">드립방식</a></li>
				<li><a href="#" style="text-decoration: none; color: white">무게감</a></li>
				<li><a href="#" style="text-decoration: none; color: white">향</a></li>
				<li><a href="#" style="text-decoration: none; color: white">산미</a></li>
				<li><a href="#" style="text-decoration: none; color: white">원산지</a></li>
				<li><a href="#" style="text-decoration: none; color: white">가격</a></li>
				<li><a href="#" style="text-decoration: none; color: white">분쇄</a></li>
			</ul>
						<ul class="cate" style="display: none;">
				<li><a href="#" style="text-decoration: none; color: white">카페인/디카페인</a></li>
				<li><a href="#" style="text-decoration: none; color: white">드립방식</a></li>
				<li><a href="#" style="text-decoration: none; color: white">무게감</a></li>
				<li><a href="#" style="text-decoration: none; color: white">향</a></li>
				<li><a href="#" style="text-decoration: none; color: white">산미</a></li>
				<li><a href="#" style="text-decoration: none; color: white">원산지</a></li>
				<li><a href="#" style="text-decoration: none; color: white">가격</a></li>
				<li><a href="#" style="text-decoration: none; color: white">분쇄</a></li>
			</ul>
 -->
