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
		
		//, : object확인 또는 문자 확인
		//+ : 문자 확인
		console.log("id : ",id);
		console.log("passwd : ",passwd);
		
		//1) 아이디의 값이 입력되어야 함
		if(id==""){
			alert("아이디를 입력해주세요");
			//해당 입력 항목에 커서를 위치
			document.loginForm.id.focus();
			//함수 자체를 종료
			return false;
		}else if(passwd==""){//2) 비밀번호 값이 입력되어야 함
			alert("비밀번호를 입력해주세요");
			//해당 입력 항목에 커서를 위치
			document.loginForm.passwd.focus();
			//함수 자체를 종료
			return;
		}
		
		//위의 분기문을 잘 통과했다면 form을 submit!
		//action : /ch08/validation02_process.jsp
		//요청파라미터 : request{id=a001&passwd=java}
		//method : post(주소표시줄에 요청파라미터가 노출x)
		document.loginForm.submit();
	}
</script>
</head>
<body>
	<!-- body와 body 사이를 document라고 함 -->
	<!-- 폼페이지 -->
	<form name="loginForm" 
		action="/ch08/validation02_process.jsp" method="post">
		<!-- 폼데이터 -->
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<!-- checkform() : 핸들러함수 -->
		<p><input type="button" value="전송" onclick="checkform()" /></p>
	</form>
</body>
</html>











