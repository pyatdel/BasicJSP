<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>모든 헤더의 정보를 가져와보자</title>
</head>
<body>

	<h1>헤더 정보 목록</h1>

	<%
		//모든 헤더의 이름을 가져와보자 => 리턴타입 : Enumeration(열거형)
		Enumeration en = request.getHeaderNames();
		//en.hasMoreElements() : 다음 값이 있는지 먼저 검증=>있으면 true
		while(en.hasMoreElements()){//조건이 true일 경우에만 반복
			//현재 헤더 이름을 가져옴(Object(컵) -> String(텀블러)으로 downcasting)
			String headerName = (String)en.nextElement();
			//request.getHeader("host"); headerName : host
			String headerValue = request.getHeader(headerName);
			//JSP 내장객체 out : 변수의 값을 확인
			out.print("<p>"+headerName+ " : " + headerValue + "</p>");
		}
	%>
</body>
</html>












