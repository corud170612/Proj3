<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#div1").click(function() {
		  $("#check1").attr('checked', true);
		  $("#div1").css('background-image', 'url(/jjjh/resources/img/logoWhite.png)');
		  if($("#check1").is(":checked") == false){
			  $("#check1").attr('checked', false);
			  $("#div1").css('background-image', 'url(/jjjh/resources/img/logoBlack.png)');
			}
	})
	});
</script>
</head>
<body style="height: 800px; background: red;">
	<div id="div1" style="width: 100%; height: 100%; background-image: url('${home}resources/img/logoBlack.png');" >
		<input type="checkbox" id="check1" />
		
	</div>
</body>
</html>
