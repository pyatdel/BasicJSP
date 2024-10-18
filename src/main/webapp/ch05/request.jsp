<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects(내장 객체)</title>
</head>
<body>

	<!-- 폼페이지 
	1. /ch05/request.jsp를 요청 -> 뷰를 먼저 봐야 함
	2. submit버튼 클릭하여 요청을 발생
	
	요청URI : /ch05/process.jsp
	요청파라미터 : {name=개똥이}
	요청방식 : post
	-->
	<form action="/ch05/process.jsp" method="post">
		<!-- 폼데이터 -->
		<p>
			이름 : <input type="text" name="name" />
			<input type="submit" value="전송" />
		</p>
	</form>

</body>
</html>