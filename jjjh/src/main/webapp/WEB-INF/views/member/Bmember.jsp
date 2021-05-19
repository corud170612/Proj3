<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/"/>

<style type="text/css">
p {
	color: #fff; 
	font-weight: bold; 
	font-size: 20px;
}
input[type=text], select {/*입력 칸 (input field) 의 폭을 지정하기 위해, 폭 속성 (width property) 를 사용하였습니다.*/ 
padding: 12px 20px; 
margin: 8px 0; 
isplay: inline-block; 
border: 1px solid #ccc; 
border-radius: 4px;
 box-sizing: border-box; 
 }

</style>
<form action="${home }membership/moveCustomer">

<div style="margin-top: 200px;">
<p style="text-align: center;">Create an account</p>
<br/><br/><br/>

<div style="width: 600px; height: 60px;">
<p>사업자등록번호</p>
<input type="text" name="bNum" style="width: 250px; "/>
</div>

</div>
</form>