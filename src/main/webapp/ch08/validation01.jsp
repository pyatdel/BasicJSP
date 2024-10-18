<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
/*
유효성 검사(validateion) 처리 방법 : 
	사용자가 폼 페이지에 입력한 데이터 값이 서버(톰켓)로 전송되기 전에 
			웹 브라우저(크롬)에서 검증하는 방법
1) 기본 유효성 검사 : 폼 페이지에 입력된 데이터 값의 존재 유무를 검사함
2) 데이터 형식 유효성 검사 : 정규 표현식을 사용하여 폼 페이지에 입력된 데이터 값이
				특정 패턴에 적합한지 여부를 검사
*/
	function checkform(){
		let id = document.loginForm.id.value;
		let passwd = document.loginForm.passwd.value;
		
		console.log("id : ",id);
		console.log("passwd : ",passwd);
	}
</script>
</head>
<body>
	<!-- body와 body 사이를 document라고 함 -->
	<!-- 폼페이지 -->
	<form name="loginForm">
		<!-- 폼데이터 -->
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<!-- checkform() : 핸들러함수 -->
		<p><input type="button" value="전송" onclick="checkform()" /></p>
	</form>
</body>
</html>


