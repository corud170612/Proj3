<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<meta charset="utf-8">
<title>��������</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	  $("#sendAuth").click(function(){
		    if( $("#name").val()==""){
		    	alert("�̸��� �Է��ϼ���")
		    }

			else if( $("#birth").val()==""){
	  	  		alert("��������� �Է��ϼ���")
		  }

			else if( $("#phoneNum").val()==""){
			alert("��ȭ��ȣ�� �Է��ϼ���")
			}
			else{
				var ranNum = Math.floor(Math.random()*(9999-1000+1)) + 1000;
				alert(ranNum)
				$("#getAuth").val(ranNum)
			}
});
});
$(document).ready(function(){
	  $("#authOk").click(function(){
		    if( $("#getAuth").val()==$("#authNum").val()){
		    	opener.document.getElementById("authClear").value = "clear";
		    	 const target = opener.document.getElementById('signup');
		    	  target.disabled = false;
		    	window.close();
		    }

			else{
				alert("������ȣ�� �ٸ��ϴ�");
				$("#authNum").val("");
			}
});
});

</script>
</head> 
<body>

	<center>
<br/>
<div style=" padding: 10px; padding-bottom: 40px; border-radius: 20px;">
<h2>��������</h2>
<input type="hidden" id="getAuth">
<hr><img src="${pageContext.request.contextPath}/resources/img/logoBlack.png" style="width: 100px; height: 100px;" />
  <div class="col-xs-3 mx-auto" style="width: 400px; margin: 10px;">
  <div style="width: 100px; height: auto; float: left;">
    <label for="exampleInputName2" style=" margin: 5px; font-weight: bold; text-align: left;">�̸�</label>
   </div> 
    <input type="text" class="form-control" name="name" id="name"  placeholder="�̸� �Է�">
  </div>
    <div class="col-xs-3 mx-auto" style="width: 400px; margin: 10px;">
    <div style="width: 100px; height: auto; float: left;">
    <label for="exampleInputName2" style=" margin: 5px; font-weight: bold; text-align: left;">�������</label>
   </div> 
    <input type="text" class="form-control" name="residentNum"  id="birth" placeholder="6�ڸ� �Է�">
  </div>

 <div class="col-xs-3 mx-auto" style="width: 400px; margin: 10px;">
    <div style="width: 100px; height: auto; float: left;">
    <label for="exampleInputName2" style=" margin: 5px; font-weight: bold; text-align: left;">�޴�����ȣ</label>
   </div> 
    <input type="text" class="form-control" name="phoneNum" id="phoneNum" placeholder="-���� �Է�">
  </div>
<button class="btn btn-outline-secondary" id="sendAuth">������ȣ ����</button>
 <div class="col-xs-3 mx-auto" style="width: 400px; margin: 10px;">
    <div style="width: 100px; height: auto; float: left;">
    <label for="exampleInputName2" style=" margin: 5px; font-weight: bold; text-align: left;">������ȣ</label>
   </div> 
    <input type="text" class="form-control" id="authNum" name="authNum" id="authNum" placeholder="������ȣ �Է�">
  </div>
  
<button class="btn btn-outline-secondary" id="authOk" >Ȯ��</button>
</div>
</center>
</body>
</html>