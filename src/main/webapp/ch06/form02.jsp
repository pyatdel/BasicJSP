<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
	String phone1 = request.getParameter("phone1")==null?"":request.getParameter("phone1");
	out.print("<p>"+phone1+"</p>");
	String phone2 = request.getParameter("phone2")==null?"":request.getParameter("phone2");
	out.print("<p>"+phone2+"</p>");
	String phone3 = request.getParameter("phone3")==null?"":request.getParameter("phone3");
	out.print("<p>"+phone3+"</p>");
	%>
	
	<!-- form페이지 
	요청URI : action속성의 값이 없다면 현재의 URI를 재요청
	요청파라미터 : request{id=a001,passwd=java,name=개똥이
		,phone1=010,phone2=1111,phone3=2222...}
	요청방식 : post
	-->
	<form name="member" method="post">
		<!-- form데이터 -->
		<p>
			아이디 : <input type="text" name="id" />
			<!-- button-클릭이벤트(비동기)/submit-form을전송(동기)/reset-데이터초기화 -->
			<input type="button" value="아이디 중복 검사" />
		</p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<p>이름 : <input type="text" name="name" /></p>
		<p>
			연락처 : 
			<select name="phone1">
				<option value="010" selected>010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select>
			- <input type="text" maxlength="4" size="4" name="phone2" />
			- <input type="text" maxlength="4" size="4" name="phone3" />
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
			취미 : 독서<input type="checkbox" name="hobby" checked />
			운동<input type="checkbox" name="hobby" />
			영화<input type="checkbox" name="hobby" />
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

</body>
</html>