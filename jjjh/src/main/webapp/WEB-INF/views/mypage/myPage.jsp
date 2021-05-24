<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/"/>

<style type="text/css">
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
#MyPageFrame{

	width: 100%;
	height: 800px;



}
#MyInfo{
	display: inline-flex;
	position: absolute;

	width: 800px;
	height: auto;
	color: white;
	left: 50%;
	margin-left: -400px;
	
}
#ModifyBtn{
	width50%;
	display: block;
	margin-left: 271px;

}
button {
	background: #111;
	color: white;
	font-size: 15px;
	font-weight: bold;
	border: 2px solid white;
	padding: 15px;
	margin-top: 18px;
}
hr {
	width: 800px;
}
#viewMyInfo{
	display: block;
	width: 50%;
}
#OrderList{
	width: 800px;
	height: 400px;
	position: absolute;
	left: 50%;
	margin-left: -400px;
	margin-top: 165px;
}
table {
   width: 100%;
   text-align: center;
   color: white;
}
td, tr{
border-bottom: 2px solid #444444;
border-left: 2px solid #444444;
   border-collapse : collapse;
   padding-top: 10px;
   padding-bottom: 10px;
}
</style>
<form action="${home }mypage/ModifyInfo">

	<div id="MyPageFrame">
		<h1 style="text-align: center; color: white; margin-top: 150px;">개인정보
			수정</h1>
		<hr />
		<div id="MyInfo">
			<div id="viewMyInfo">
				<h3>아이디 : ${myinfo.cid }</h3>
				<h3>이름 : ${myinfo.cname } </h3>
				<h3>주소 :  ${myinfo.caddr }</h3>
			</div>
			<div id="ModifyBtn">
				<input style="	background: #111;color: white;font-size: 15px;font-weight: bold;border: 2px solid white;padding: 15px;margin-top: 18px;" type="submit" value="회원정보 수정">
			</div>
		</div>

		<div></div>
		
		<div id="OrderList">
			<hr>
			<h1 style="text-align: center; color: white;">구독 리스트</h1>
			<table>
			<tr>
			<td style="border-left: none;">상품명</td>
			<td>가격</td>
			<td>구독 개월</td>
			<td>수령주소</td>
			<td>구독 원두용량</td>
			<td>브랜드</td>
			<td>주문 상태</td>
			<td>구독 취소</td>
			</tr>
			<c:forEach var="OrderLst" items="${OrderLst}">
			<tr>
			<td style="border-left: none;">${OrderLst.prodname}</td>
			<td> \ ${OrderLst.price}</td>
			<td>${OrderLst.submon} 개월</td>
			<td>${OrderLst.caddr}</td>
			<td>${OrderLst.subvol}g</td>
			<td>${OrderLst.storename}</td>
			<td>${OrderLst.condition}</td>
			<c:choose>
               <c:when test="${OrderLst.condition == '처리중' }"><td><button style="margin-top: 0;" formaction="${home }mypage/CancelOrder${OrderLst.prodname}">취소요청</button></td></c:when>
               <c:when test="${OrderLst.condition == '완료' }"> <td>취소불가</td></c:when>
               <c:when test="${OrderLst.condition == '취소요청' }"> <td>취소중</td></c:when>
         	
			</c:choose>
			</tr>
			</c:forEach>
			
			<tr><td colspan="8" style="border-left: none; border-bottom: none; padding-top: 50px; padding-bottom: 50px;">${noList }</td></tr>
			</table>
			
			

			
			
			
		</div>
	</div>
</form>