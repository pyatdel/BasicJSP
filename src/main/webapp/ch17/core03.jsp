<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<title>JSTL</title>
</head>
<body>

	<!-- 폼페이지 
	요청URI : /ch17/core03_process.jsp
	요청파라미터 : request{number=12}
	요청방식 : post
	-->
	<form action="/ch17/core03_process.jsp" method="post">
		<!-- 폼데이터 -->
		<p>숫자 : <input type="number" name="number" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
	
</body>
</html>

