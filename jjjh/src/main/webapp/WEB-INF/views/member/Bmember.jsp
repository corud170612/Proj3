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


<script type="text/javascript">
function openAuth(cmd){
	window.name="인증";
	window.open(cmd, "_blank", "top=500, left=500, width=450, height=600");
}

</script>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('storezipcode').value = data.zonecode;
                document.getElementById("storeAddr").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailsAddr").focus();
            }
        }).open();
    }
</script>
   <script>
      function setThumbnail(event) {
         var reader = new FileReader();
         reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            document.querySelector("div#image_container").appendChild(img);
         };
         reader.readAsDataURL(event.target.files[0]);
      }
   </script>
   
<form action="${home }membership/BmemberProc" enctype="multipart/form-data" method="post">
<div style="margin-top: 150px; margin-bottom: 250px;">
<p style="text-align: center;">Create an account</p>
<br><br><br>

<center>
			<table>
				<tr>
					<td colspan="2"><hr /></td>
				</tr>
				<tr>
					<td colspan="2"><p style="margin-left: 180px;">아이디</p></td>
				</tr>
				<tr>
					<td colspan="2"><input type="text" name="bid"
						style="width: 360px; margin-left: 180px;"></td>
				</tr>
				<tr>
					<td colspan="2"><p style="margin-left: 180px;">비밀번호</p></td>
				</tr>
				<tr>
					<td colspan="2"><input type="password" name="bpw"
						style="width: 360px; margin-left: 180px;"></td>
				</tr>
				<tr>
					<td colspan="2"><hr /></td>
				<tr>
					<td><p>상호명</p></td>
					<td><p>대표자 이름</p></td>
				</tr>
				<tr>
					<td><input type="text" name="storename" style="width: 360px;"></td>
					<td><input type="text" name="bname" style="width: 360px;"></td>
				</tr>
				<tr>
					<td><p>매장 주소</p></td>
					<td><p>매장 전화번호</p></td>
				</tr>
				<tr>
					<td><input type="text" id="storeAddr" name="storeAddr" style="width: 360px;"></td>
					<td><input type="text" name="storeph" style="width: 360px;"></td>
				</tr>
				<tr>
					<td><p>매장 우편번호</p></td>
					<td><p>상세주소</p></td>
				</tr>
				<tr>
					<td><input type="text" id="storezipcode" name="storezipcode"
						style="width: 360px;"></td>
					</td>
					<td><input type="text" id= "detailsAddr" name="detailsAddr"
						style="width: 360px;"></td>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="button"
						onclick="sample6_execDaumPostcode()" style="margin-left: 280px;"
						id="selectZipcode" value="우편번호 찾기"></td>
				</tr>
				<tr>
					<td colspan="2"><hr /></td>
				</tr>
				<tr>
					<td colspan="2"><p>브랜드 소개</p></td>
				</tr>
				<tr>
					<td colspan="2"><textarea name="storeintro"
						style="width: 720px; height: 300px;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><p style="margin-left: 180px;">브랜드 로고</p></td>
				</tr>
				<tr>
					<td colspan="2"><input type="file" name="storelogo2"
						style="width: 360px; margin-left: 180px; color: white;" onchange="setThumbnail(event);" ></td>
				</tr>
				<tr>
					<td colspan="2" ><div id="image_container" ></div></td>
				</tr>
				
			</table>
		</center>

<div style="margin-top: 20px; position: absolute; left: 50%; margin-left: -175px;">
<input type="button" id="authBtn" style="margin-right: 13px;" onclick="openAuth('${home}membership/authForm');" value="인증하기">
<button disabled="disabled" id="signup">회원가입</button>
</div>

<input type="hidden" id="authClear">
</div>

</form>