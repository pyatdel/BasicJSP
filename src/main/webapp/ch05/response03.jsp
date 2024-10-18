<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>내장 객체</title>
</head>
<body>

	<%
		//응답 오류 설정
		//HTTP Status를 응답 시 함께 보냄
		response.sendError(404,"요청 페이지를 찾을 수 없습니다.");
	%>

</body>
</html>