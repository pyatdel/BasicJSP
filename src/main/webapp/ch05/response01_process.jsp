<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>내장 객체</title>
</head>
<body>

	<!-- 
	요청URI : /ch05/response01_process.jsp
	요청파라미터 : request{id=a001,passwd=java}
	요청방식 : post
	 -->
	<% //스크립틀릿
		String id = request.getParameter("id");//a001
		String passwd = request.getParameter("passwd");//java
		
		//분기문(if)
		//1. 아이디가 a001이고 동시에 비밀번호가 java인 경우 관리자라고 여김
		//	/ch05/response01_success.jsp로 새롭게 요청
		if(id.equals("a001") && passwd.equals("java")){
			response.sendRedirect("/ch05/response01_success.jsp");
		}else{
			//2. 관리자가 아니면
			//	/ch05/response01_failed.jsp로 새롭게 요청
			response.sendRedirect("/ch05/response01_failed.jsp");
		}
	%>

</body>
</html>








