<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<title>JSTL</title>
</head>
<body>

	<h2>내가 5년 후에 받을 연봉은?</h2>
	<!-- 폼페이지 
	요청URI : /ch17/core02_process.jsp
	요청파라미터 : request{salary=130000000}
	요청방식 : post
	-->
	<form action="/ch17/core02_process.jsp" method="post">
		<!-- 폼데이터 -->
		<p>예상연봉 : <input type="number" name="salary" /></p>
		<p><input type="submit" value="GO!" /></p>
	</form>
	
</body>
</html>







