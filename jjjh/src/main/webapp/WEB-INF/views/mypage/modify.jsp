<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="home" value="/"/>

<style type="text/css">
p {
	color: #fff; 
	font-weight: bold; 
	font-size: 15px;
	margin-top: 5px;
	margin-bottom: 5px;
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
 button, #authBtn{
   width: 170px;
   height: 40px;
   background: gray;
   color: #fff;
   font-weight: bold;
   font-size: 15px;
   border-radius:5px;
   
}
 #selectZipcode{
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
#selectZipcode:hover {
background: #fff;
   color: #111;
}
tr {
	width: 820px;

}


</style>
<form action="${home }mypage/ModifyProc">
<script type="text/javascript">
function openAuth(cmd){
	window.name="인증";
	window.open(cmd, "_blank", "top=500, left=500, width=450, height=600");
}

</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
<div style="margin-top: 150px; margin-bottom: 250px;">
<p style="text-align: center; font-size: 20px;">Create an account</p>
<br><br><br>
<div style="width: 100%; height: 800px;">

<center>
<table>
<tr>
<td colspan="2"><hr/>
</td>
</tr>
<tr>
<td colspan="2"><p style="margin-left: 180px;">아이디</p ></td>
</tr>
<tr >
<td colspan="2"><input type="text" name="cid" style="width: 360px; margin-left: 180px;"></td>
</tr>
<tr>
<td colspan="2"><p style="margin-left: 180px;">비밀번호</p></td>
</tr>
<tr>
<td colspan="2"><input type="password" name="cpw" style="width: 360px; margin-left: 180px;"></td>
</tr>
<tr>
<td colspan="2"><hr/>
</td>
</tr>
<tr>
<td><p>이름</p></td>
<td><p>전화번호</p></td>
</tr>
<tr>
<td><input type="text" name="cname" style="width: 360px; "></td>
<td><input type="text" name="cph" style="width: 360px; "></td>
</tr>
<tr>
<td><p>우편번호</p></td>
<td><p>주소</p></td>
</tr>
<tr>
<td><input type="text" name="czipcode" style="width: 360px; "></td>
<td><input type="text" name="caddr" style="width: 360px; "></td>
</tr>
<tr>
<td colspan="2"><input type="button" onclick="sample4_execDaumPostcode()" style="margin-left: 280px;" id="selectZipcode" value="우편번호 찾기">
</td>
</tr>
<tr>
<td colspan="2"><hr/>
</td>
</tr>
<tr>
<td colspan="2"><p style="width: 360px; margin-left: 180px;">카드번호</p></td>
</tr>
<tr>
<td colspan="2" ><input type="text" name="cardnumber" style="width: 360px; margin-left: 180px;"></td>
</tr>
<tr>
<td colspan="2"><p style="width: 360px; margin-left: 180px;">은행</p></td>
</tr>
<tr>
<td colspan="2" ><input type="text" name="bank" style="width: 360px; margin-left: 180px;"></td>
</tr>
<tr>
<td colspan="2"><p style="width: 360px; margin-left: 180px;">카드 만기일</p></td>
</tr>
<tr>
<td colspan="2" ><input type="text" name="expirationDate" style="width: 360px; margin-left: 180px;"></td>
</tr>
<tr>
<td colspan="2"><hr/>
</td>
</tr>

</table>
</center>


<div style="margin-top: 20px; position: absolute; left: 50%; margin-left: -175px;">
<input type="button" id="authBtn" style="margin-right: 13px;" onclick="openAuth('${home}membership/authForm');" value="인증하기">
<button disabled="disabled" id="signup">회원가입</button>
</div>


</div>
<input type="hidden" id="authClear">

</div>
</form>