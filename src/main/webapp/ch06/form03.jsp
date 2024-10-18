<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
JSTL : Jsp Standard Tag Library

골뱅이 : 디렉티브
taglib 디렉티브의 prefix속성의 값이 c이다
core : c
function : fn
format : fmt
 -->
<!DOCTYPE html>
<html>
<head>
<title>Form페이지</title>
</head>
<body>

	<h3>회원 가입</h3>
	
	<%
	String id = request.getParameter("id")==null?"":request.getParameter("id");
	out.print("<p>"+id+"</p>");
	String passwd = request.getParameter("passwd")==null?"":request.getParameter("passwd");
	out.print("<p>"+passwd+"</p>");
	String name = request.getParameter("name")==null?"":request.getParameter("name");
	out.print("<p>"+name+"</p>");
	String phone1 = request.getParameter("phone1")==null?"":request.getParameter("phone1");
	out.print("<p>"+phone1+"</p>");
	String phone2 = request.getParameter("phone2")==null?"":request.getParameter("phone2");
	out.print("<p>"+phone2+"</p>");
	String phone3 = request.getParameter("phone3")==null?"":request.getParameter("phone3");
	out.print("<p>"+phone3+"</p>");
	String gender = request.getParameter("gender")==null?"":request.getParameter("gender");
	out.print("<p>"+gender+"</p>");
	//문자타입의 배열 처리(체크박스 : 다중선택)
	String[] hobbys = request.getParameterValues("hobby");
	//체크박스의 특성상 체크를 하지 않았을 경우 실행안함
	if(hobbys!=null){
		for(String hobby : hobbys){
			//내장객체 중 out : 화면에 변수의 값을 출력 시 사용
			out.print(" " + hobby);
		}
	}
	String comment = request.getParameter("comment")==null?"":request.getParameter("comment");
	out.print("<p>"+comment+"</p>");
	%>
	
	<!-- form페이지 
	요청URI : action속성의 값이 없다면 현재의 URI를 재요청
	요청파라미터 : request{id=a001,passwd=java,name=개똥이
		,phone1=010,phone2=1111,phone3=2222,gender=여성
		,hobby=문자타입의배열,comment=가입인사!...}
	요청방식 : post
	-->
	<form name="member" method="post">
		<!-- form데이터 -->
		<p>
			아이디 : <input type="text" name="id" value="${param.id}" />
			<!-- button-클릭이벤트(비동기)/submit-form을전송(동기)/reset-데이터초기화 -->
			<input type="button" value="아이디 중복 검사" />
		</p>
		<p>비밀번호 : <input type="password" name="passwd" value="${param.passwd}" /></p>
		<p>이름 : <input type="text" name="name" value="${param.name}" /></p>
		<p>
			연락처 : 
			<select name="phone1">
				<!-- param.phone1의 값이 010 -->
				<option value="010" 
				  <c:if test="${param.phone1=='010'}">selected</c:if>
				>010</option>
				<option value="011" 
				  <c:if test="${param.phone1=='011'}">selected</c:if>
				>011</option>
				<option value="016" 
				  <c:if test="${param.phone1=='016'}">selected</c:if>
				>016</option>
				<option value="017" 
				  <c:if test="${param.phone1=='017'}">selected</c:if>
				>017</option>
				<option value="019" 
				  <c:if test="${param.phone1=='019'}">selected</c:if>
				>019</option>
			</select>
			- <input type="text" maxlength="4" size="4" name="phone2"
				value="${param.phone2}" />
			- <input type="text" maxlength="4" size="4" name="phone3"
				value="${param.phone3}" />
		</p>
		<p>
			<!-- 미리 선택
				radio, checkbox : checked 
				select : selected	
			-->
			성별 : <input type="radio" name="gender" value="남성" checked />남성
				  <input type="radio" name="gender" value="여성" />여성
		</p>
		<p>
			취미 : 독서<input type="checkbox" name="hobby" value="독서" checked />
			운동<input type="checkbox" name="hobby" value="운동" />
			영화<input type="checkbox" name="hobby" value="영화" />
		</p>
		<p>
			<!-- rows : 행, cols : 열 -->
			<textarea rows="3" cols="30" name="comment"
				placeholder="가입 인사를 입력해주세요"></textarea>
		</p>
		<p>
			<!-- p.190 -->
			<!-- size속성 : 해당 개수대로 미리 보여줌 -->
			<select name="city" size="3">
				<option value="대전광역시" selected>대전광역시</option>
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="인천">인천</option>
				<option value="충청">충청</option>
				<option value="전라">전라</option>
				<option value="경상">경상</option>
			</select>
		</p>
		<p>
			<select name="food">
				<optgroup label="분식류">
					<option value="ddeukboki">떡볶이</option>
					<option value="sundai">순대</option>
				</optgroup>
				<optgroup label="안주류">
					<option value="oddolpyeo">오돌뼈</option>
					<option value="odaengtang">오뎅탕</option>
				</optgroup>
				<optgroup label="찌개류">
					<option value="kmichijjigae">김치찌개</option>
					<option value="doinjangjjigae">된장찌개</option>
				</optgroup>
			</select>
		</p>
		<p>
			<input type="submit" value="가입하기" />
			<input type="reset" value="다시 쓰기" />
		</p>
	</form>
	<!-- form04.jsp에서 pageContext객체의 값으로 세팅되었으므로 -->
	<p>${pageScope.classRoom}</p>
	<p>${pageScope.classRoomNm}</p>
	
	<!-- form04.jsp
	3. sessionScope : session영역(동일한 웹브라우저 내에서 데이터 공유)
		session.setAttribute("myName", "조원근");
		session.setAttribute("myAge", "23");
	 -->
	 <p>${sessionScope.myName}</p>
	 <p>${sessionScope.myAge}</p>
	 <!-- 
	 //4. applicationScope : application영역(웹브라우저 서로 데이터 공유)
		application.setAttribute("myHobby", "게임");
		application.setAttribute("mySpecial", "코딩");
	  -->
	  <p>${applicationScope.myHobby}</p>
	  <p>${applicationScope.mySpecial}</p>
</body>
</html>








