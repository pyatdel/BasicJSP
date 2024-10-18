<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<title>JSTL</title>
</head>
<body>

	<h3>순건이가 취업하고 여행할 때 어디로 갈까?</h3>
	<!-- prefix="c" 
	set => String travel = "부산";
	-->
	<c:set var="travel" value="부산" />
	<!-- 변수의 값을 화면에 출력 EL -->
	<h3>전 : ${travel}</h3>
	<p>travel 변수 값을 제거해보자</p>
	<c:remove var="travel"/>
	<h3>후 : ${travel}</h3>
</body>
</html>







