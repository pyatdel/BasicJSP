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
	function checkLogin(){
		
		//1. 폼페이지 오브젝트를 특정
		let form = document.loginForm;
		//2. 아이디 : 4~12자 이내로 입력
		let id = form.id.value;
		console.log("id : ", id);
		if(id.length<4||id.length>12){
			alert("아이디는 4~12자 이내로 입력 가능합니다.");
			form.id.select();
			//함수 자체를 종료
			return;
		}
		//3. 비밀번호 : 4자 이상으로 입력
		//else if를 안쓸것임 : if문을 모두 통과해야 함
		let passwd = form.passwd.value;
		console.log("passwd : ", passwd);
		if(passwd.length<4){
			alert("비밀번호는 4자 이상으로 입력해야 합니다.");
			form.passwd.select();
			return;
		}
		//4. 통과했다면 
		/*
		요청URI : validation03_process.jsp
		요청파라미터 : request{id=a001,passwd=java}
		요청방식 : post
		*/
		form.submit();
	}
</script>
</head>
<body>
	<!-- body와 body 사이를 document라고 함 -->
	<!-- 폼페이지 
	./  : 현재폴더
	생략 : 상대경로
	-->
	<form name="loginForm" 
		action="/ch08/validation03_process.jsp" method="post">
		<!-- 폼데이터 -->
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<!-- checkform() : 핸들러함수 -->
		<p><input type="button" value="전송" onclick="checkLogin()" /></p>
	</form>
</body>
</html>


