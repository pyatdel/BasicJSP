<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>내장 객체</title>
</head>
<body>
	<!-- 
	요청URI : /ch05/request01_process.jsp
	요청파라미터 : request{id=a001,passwd=java}
	요청방식 : post
	 -->
	<% //스크립틀릿
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");//a001
		String passwd = request.getParameter("passwd");//java
		//헤더에 있는 host라는 name에 매핑되어있는 값 보기
		String hostValue = request.getHeader("host");//localhost
		//헤더에 있는 accept-language라는 name에 매핑되어있는 값 보기
		String alValue = request.getHeader("accept-language");//ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7
	%>
	<!-- 표현문 -->
	<p>아이디 : <%=id%></p>
	<p>비밀번호 : <%=passwd%></p>
	<p>호스트명 : <%=hostValue%></p>
	<p>설정된 언어 : <%=alValue%></p>
</body>
</html>












