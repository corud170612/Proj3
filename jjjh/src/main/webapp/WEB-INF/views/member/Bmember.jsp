<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/"/>

<style type="text/css">
p {
	color: #fff; 
	font-weight: bold; 
	font-size: 20px;
}
input[type=text], select {
padding: 12px 20px; 
margin: 8px 0; 
isplay: inline-block; 
border: 1px solid #ccc; 
border-radius: 4px;
 box-sizing: border-box; 
 }
input[type=password], select {
padding: 12px 20px; 
margin: 8px 0; 
isplay: inline-block; 
border: 1px solid #ccc; 
border-radius: 4px;
 box-sizing: border-box; 
 }
 button, #authBtn {
   width: 170px;
   height: 40px;
   background: gray;
   color: #fff;
   font-weight: bold;
   font-size: 15px;
   border-radius:5px;
   
}
button:hover {
   background: #fff;
   color: #111;
}
 #authBtn:hover {
	background: #fff;
   color: #111;
}
</style>
<form action="${home }membership/BmemberProc">
<script type="text/javascript">
function openAuth(cmd){
	window.name="인증";
	window.open(cmd, "_blank", "top=500, left=500, width=450, height=600");
}

</script>
<div style="margin-top: 150px; margin-bottom: 250px;">
<p style="text-align: center;">Create an account</p>
<br><br><br>

<div style="width: 600px; height: 60px; position: absolute; top: 25%; left: 50%; margin-left: -200px;">
<p>사업자등록번호</p>
<input type="text" name="bid" style="width: 360px; ">
</div>

<div style="width: 600px; height: 60px; position: absolute; top: 35%; left: 50%; margin-left: -200px;">
<p>비밀번호</p>
<input type="password" name="bpw" style="width: 360px; ">
</div>


<div style="width: 600px; height: 60px; position: absolute; top: 45%; left: 50%; margin-left: -200px;">
<p>상호명</p>
<input type="text" name="store" style="width: 360px; ">
</div>

<div style="width: 600px; height: 60px; position: absolute; top: 55%; left: 50%; margin-left: -200px;">
<p>대표자 이름</p>
<input type="text" name="name" style="width: 360px; ">
</div>

<div style="width: 600px; height: 60px; position: absolute; top: 65%; left: 50%; margin-left: -200px;">
<p>매장 주소</p>
<input type="text" name="zipcode" style="width: 360px; ">
</div>

<div style="width: 600px; height: 60px; position: absolute; top: 75%; left: 50%; margin-left: -200px;">
<p>매장 전화번호</p>
<input type="text" name="num" style="width: 360px; ">
<div style="margin-top: 20px;">


<input type="button" id="authBtn" style="margin-right: 13px;" onclick="openAuth('${home}membership/authForm');" value="인증하기">
<button disabled="disabled" id="signup">회원가입</button>
</div>
</div>
<input type="hidden" id="authClear">
</div>

</form>