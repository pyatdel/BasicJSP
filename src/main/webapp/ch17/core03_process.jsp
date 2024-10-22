<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<!-- 폼페이지 
	요청URI : /ch17/core03_process.jsp
	요청파라미터 : request{number=12}
	요청방식 : post
	-->
	<%
		String numStr = request.getParameter("number");//"12"
		int    num    = Integer.parseInt(numStr);
		out.print("<p>num : " + num + "</p>");		
	%>
	<!-- JAVA변수->JSTL변수 -->
	<c:set var="num" value="<%=num%>" />
	<p>${num}</p>
	<c:if test="${num%2==0}"><p>${num}은 짝수입니다</p></c:if>
	<c:if test="${num%2!=0}"><p>${num}은 홀수입니다</p></c:if>
	<hr />
	<c:choose>
		<c:when test="${num%2==0}"><p>${num}은 짝수입니다</p></c:when>
		<c:when test="${num%2!=0}"><p>${num}은 홀수입니다</p></c:when>
		<c:otherwise>숫자가 아닙니다.</c:otherwise>
	</c:choose>
	
	<hr />
	<!-- 
	1.시작점, 종료점
		1 num
	
	2. 
         forEach 태그? 배열(String[], int[][]), 
         	콜!		리셋!
         Collection(List, Set) 또는
         맵다 	하..		하..		쏘~	맵다
         Map(HashTable, HashMap, SortedMap)에 저장되어 있는 값들을 
         순차적으로 처리할 때 사용함. 자바의 for, do~while을 대신해서 사용함
         var : 변수
         items : 아이템(배열, Collection, Map)
         varStatus : 루프 정보를 담은 객체 활용
            - index : 루프 실행 시 현재 인덱스(0부터 시작)
            - count : 실행 회수(1부터 시작. 보통 행번호 출력)
          -->
          <hr />
          <p>${num}단</p>
          <c:forEach var="i" begin="1" end="9"><!-- 1에서 9까지 반복 -->
          	<!-- 
          		3 x 1 = 3 
          		3 x 2 = 6
          		3 x 3 = 9
          		...
          	-->
          	<p>${num} X ${i} = ${num * i}</p>
          </c:forEach>
</body>
</html>



