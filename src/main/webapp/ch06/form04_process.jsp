<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- taglib 태그라이브러리 디렉티브 -->
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<!-- form페이지 
	요청URI : /ch06/form04_process.jsp
	요청파라미터 : request{id=a001,passwd=java,name=개똥이
		,phone1=010,phone2=1111,phone3=2222,gender=여성
		,hobby=문자타입의배열,comment=가입인사!...}
	요청방식 : post
	-->
	<%
	//request객체의 encoding 처리를 해보자
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	//배열에 저장된 취미 값을 문자형 배열로 저장
	String[] hobbies = request.getParameterValues("hobby");
	String comment = request.getParameter("comment");
%>
	<p>아이디 : <%=id%></p>
	<p>비밀번호 : <%=passwd%></p>
	<p>이름 : <%=name%></p>
	<p>연락처 : <%=phone1%>-<%=phone2%>-<%=phone3%></p>
	<p>성별 : <%=gender%></p>
	<p>취미 : <%
				//체크박스의 특성상 체크를 하지 않았을 경우 실행안함
				if(hobbies!=null){
					for(String hobby : hobbies){
						out.print("<p>" + hobby + "</p>");
					}
				}
			%>
	</p>
	<p>가입 인사 : <%=comment%></p>
</body>
</html>







