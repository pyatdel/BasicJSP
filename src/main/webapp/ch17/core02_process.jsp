<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>내 예상연봉</title>
</head>
<body>
	<!-- 폼페이지 
	요청URI : /ch17/core02_process.jsp
	요청파라미터 : request{salary=130000000}
	요청방식 : post
	-->
	<%
	//1. java스타일(모든 파라미터의 타입은 문자 타입)
	String salaryStr = request.getParameter("salary");
	int salary = Integer.parseInt(salaryStr);
	out.print("<p>salary : " + salary + "</p>");
	%>
	<!-- JSTL 스타일 -->
	<c:set var="salary" value="<%=salary%>" />
	<h2>내 예상연봉은 ${salary}입니다.</h2>
</body>
</html>





