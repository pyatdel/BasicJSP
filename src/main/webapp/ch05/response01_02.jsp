<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>내장 객체</title>
</head>
<body>

	<% //스크립틀릿(java로직)
		//요청URI : /ch05/response01_02.jsp
		//요청방식 : get
		//response : JSP내장객체
		//톰켓 서버에서 크롬 클라이언트로 응답 시 header영역에
		//		name이 Cache-control에 value가 use_cache인 문자열을 매핑하여
		//		응답함
		response.setHeader("Cache-control", "use_cache");
		response.setHeader("contentType", "text/html;charset=UTF-8");
		response.setDateHeader("date", 1L);
	%>
	<!-- 표현문 : 변수의 값을 화면에 출력 -->
	<p>Cache-control : <%=response.getHeader("Cache-control")%></p>
	<p>contentType : <%=response.getHeader("contentType")%></p>
	<p>date : <%=response.getHeader("date")%></p>

</body>
</html>





