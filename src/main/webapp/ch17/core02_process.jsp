<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- JSTL -->
<!DOCTYPE html>
<html>
<script type="text/javascript" src=/js/jquery.min.js></script>
<head>
<title>내 예상연봉</title>
</head>
<body>
	<!-- 폼페이지 
	요청URI : /ch17/core02_process.jsp
	요청파라미터 : request{salary=130000000}
	요청방식 : post
	-->
	<%
	//1. java스타일(모든 파라미터의 타입은 문자 타입)
	String salaryStr = request.getParameter("salary"); // "130000000"
	int salary = Integer.parseInt(salaryStr);
	out.print("<p>salary : " + salary + "</p>");
	%>
	
	<!-- JSTL 스타일 -->
	<c:set var="salary" value="<%=salary%>" /> 
	<h2>내 예상연봉은 ${salary}입니다.</h2>
	<!-- if문 분기
	1. 1000만원 미만
	2. 1000만원 이상 1억 미만
	3. 1억원 이상
	 -->
	 <!-- EL태그 정리 
	   == : eq(equal)
	   != : ne(not equal)
	   <  : lt(less than)
	   >  : gt(greater than)
	   <= : le(less equal)
	   >= : ge(greater equal)
 	-->
 
	 <c:if test="${salary ge 100000000}"><p>1억원 이상</p></c:if>
	 <c:if test="${salary>=10000000 && salary < 100000000}"><p>1000만원 이상 1억원 미만</p></c:if>
	 <c:if test="${salary lt 10000000}"><p>1000만원 미만</p></c:if>
	 <%			// java로 구현했을 경우
	 	if(salary>=100000000){
	 		out.print("<p>1억원 이상</p>");
	 	} else if(salary>=10000000 && salary < 100000000){
	 		out.print("<p>1000만원 이상 1억원 미만</p>");
	 	} else {
	 		out.print("<p>1000만원 미만</p>");
	 	}
	 %>
	 
<script type="text/javascript">
// 달러 function : document 내의 모든 요소들이 로딩된 후에 실행
// 달러document ready
$(function(){
	// JSTL 변수를 Javascript 변수로 할당
	let salary = "${salary}";
	
	console.log("salary : ", salary);
})
</script>
</body>
</html>





