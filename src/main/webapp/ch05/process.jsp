<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects(내장 객체)</title>
</head>
<body>

	<!-- 
	1. request.jsp에서 다음의 요청이 됨
	
	요청URI : /ch05/process.jsp
	요청파라미터 : request{name=개똥이}
	요청방식 : post
	
	2. process.jsp에서 요청 정보를 받아옴
	 -->
	 
	 <% //스크립틀릿
	 	//한글 처리
	 	request.setCharacterEncoding("UTF-8");
		//request 내장 객체가 {name=개똥이} 요청 파라미터를 갖고있음
	 	String name = request.getParameter("name");	//개똥이(치환)	 
	 %>
	 <!-- 표현문 -->
	 <p>이름 : <%=name%></p>
	 요청 정보 길이 : <%=request.getContentLength()%><br />
	 클라이언트 전송 방식 : <%=request.getMethod()%><br />
	 요청 URI : <%=request.getRequestURI()%><br />
	 서버 이름 : <%=request.getServerName()%><br />
	 서버 포트 : <%=request.getServerPort()%><br />
</body>
</html>






