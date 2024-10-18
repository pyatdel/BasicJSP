<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects(내장 객체)</title>
</head>
<body>
	
	<!-- 
	1. /ch05/response01.jsp를 먼저 요청하여 form을 봄
	2. submit버튼을 클릭하여 다음의 요청을 함
	
	요청URI : /ch05/response01_process.jsp
	요청파라미터 : request{id=a001,passwd=java}
	요청방식 : post
	 -->
	<form action="/ch05/response01_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="text" name="passwd" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
	
</body>
</html>






