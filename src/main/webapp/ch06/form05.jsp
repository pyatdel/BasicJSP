<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Form Processing</title>
</head>
<body>

	<h3>회원 가입</h3>
	<!-- form페이지 
	요청URI : /ch06/form05_process.jsp
	요청파라미터 : request{id=a001,passwd=java,name=개똥이
		,phone1=010,phone2=1111,phone3=2222,gender=여성
		,hobby=문자타입의배열,comment=가입인사!...}
	요청방식 : post
	-->
	<% //스크립틀릿
		//1. pageContext객체에 값을 할당
		//pageScope : page영역(동일한 JSP 내에서 데이터 공유)
		//pageScope에 살고 있는 객체 : pageContext객체
		pageContext.setAttribute("classRoom", "401");
		pageContext.setAttribute("classRoomNm", "DDIT캠프1기");
		
		//2. requestScope : request영역(동일한 요청 내에서 데이터 공유)
		//attribute = 열 = 컬럼 = 속성
		request.setAttribute("classRoom", "401");
		request.setAttribute("classRoomNm", "DDIT캠프1기");
		
		//3. sessionScope : session영역(동일한 웹브라우저 내에서 데이터 공유)
		session.setAttribute("myName", "조원근");
		session.setAttribute("myAge", "23");
		
		//4. applicationScope : application영역(웹브라우저 서로 데이터 공유)
		application.setAttribute("myHobby", "게임");
		application.setAttribute("mySpecial", "코딩");
	%>	
	<form action="/ch06/form05_process.jsp" name="member" method="post">
		<p>
			아이디 : <input type="text" name="id" />
			<input type="button" value="아이디 중복 검사" />
		</p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<p>이름 : <input type="text" name="name" /></p>
		<p>
			연락처 :
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select>
			- <input type="text" maxlength="4" size="4" name="phone2" />
			- <input type="text" maxlength="4" size="4" name="phone3" />
		</p>
		<p>
			성별 : <input type="radio" name="gender" value="남성" checked />남성
				  <input type="radio" name="gender" value="여성" />여성
		</p>
		<p>
			취미 : 독서<input type="checkbox" name="hobby" value="독서" checked />
			운동<input type="checkbox" name="hobby" value="운동" />
			영화<input type="checkbox" name="hobby" value="영화" />
		</p>
		<p>
			<textarea rows="3" cols="30" name="comment" placeholder="가입 인사를 입력해주세요"></textarea>
		</p>
		<p>
			<input type="submit" value="가입하기" />
			<input type="reset" value="다시 쓰기" />
		</p>
	</form>
	<!-- 1. pageContext 객체에 들어있는 값 확인해보자 
	EL : Expression Language(표현 언어)
	
	pageContext.setAttribute("classRoom", "401");
		pageContext.setAttribute("classRoomNm", "DDIT캠프1기");
	-->
	<p>${pageScope.classRoom}</p>
	<p>${pageScope.classRoomNm}</p>
</body>
</html>










