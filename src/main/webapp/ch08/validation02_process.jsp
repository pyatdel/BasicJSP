<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
</head>
<body>
	<h3>입력에 성공했습니다.</h3>
	<!-- validation02_process.jsp?id=a001&passwd=java -->
	<% //스크립틀릿(자바 로직)
	//요청URI : /ch08/validation02_process.jsp
	//요청파라미터 : request{id=a001&passwd=java}
	//요청방식 : post(주소표시줄에 요청파라미터가 노출x)
	//1. 문자 인코딩 유형 처리
	request.setCharacterEncoding("UTF-8");
	//2. request객체
	//만약 request.getAttribute("속성명")를 쓰고자 한다면
	//		이미 request.setAttribute("속성명","값")가 처리되어있어야 함
	//request.getParameterValues()는 <input type="check"와 같이 다중선택 시 사용
	String id = request.getParameter("id");//a001
	String passwd = request.getParameter("passwd");//java
	%>
	<!-- 표현문 : 화면에 값 출력 -->
	<p>아이디 : <%=id%></p>
	<p>비밀번호 : <%=passwd%></p>
	<!-- JSTL(Jsp Standard Tag Library)문법 -->
	<c:set var="id" value="b001" />
	${id}
</body>
</html>




