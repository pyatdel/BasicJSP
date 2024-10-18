<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>광제</title>
</head>
<body>
	<h1>광제의 홈에 오신걸 환영합니다.</h1>
	<% //스크립틀릿
		String name = "반장";
	%>
	<!-- 표현문 -->
	<h3>광제는<%=name%>입니다.</h3>
	<!-- 
	1. gwangjae_jsp.java로 해석
	
	2. gwangjae_jsp.class로 컴파일
	  - html태그 text와 java영역이 분리
	  - class의 service() 메소드에서 java로직을 처리->결과->html로 융합
	 -->
</body>
</html>



