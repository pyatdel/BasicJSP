<%@page import="vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProductDao"%>
<%@page import="java.io.*, java.util.Date, java.util.Enumeration" %> <!-- 이부분 다시보기 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- prefix : 접두어 -->
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
	<form action="/ch17/core03_process.jsp" method="post">
		<!-- 폼데이터 -->
		<p>숫자 : <input type="number" name="number" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
	
	<!-- 
   1. 시작점, 종료점 
      1     num
   2. 
      forEach 태그? 배열(String[], int[][]),
      콜!         리셋! 
      Collection(List, Set) 또는 
      맵다 하..       하...     쏘~   맵다
      Map(HashTable, HashMap, SortedMap)에 저장되어 있는 값들을 
      순차적으로 처리할 때 사용함. 자바의 for, do~while을 대신해서 사용함
      var : 변수
      items : 아이템(배열, Collection, Map)
      varStatus : 루프 정보를 담은 객체 활용
         - index : 루프 실행 시 현재 인덱스(0부터 시작)
         - count : 실행 회수(1부터 시작. 보통 행번호 출력)
    -->
    
    <%
    	ProductDao productDao = ProductDao.getInstance();
    	// 상품 목록
    	List<ProductVO> productVoList = productDao.getAllProducts();
    %>
	
	<!-- java -> JSTL -->
	<c:set var="productVOList" value="<%=productVoList %>" />
	<!-- EL(Expression Language) -->
	<p>${productVOList}</p>
	<table border="1" style="width:100%;">
		<!-- 시멘틱 -->
		<thead>
			<tr>
				<th>상품아이디</th>
				<th>상품명</th>
				<th>가격</th>
				<th>날짜</th>
			</tr>		
		</thead>
		<tbody>
		<!-- 오늘 일시 -->
		<c:set var="today" value="<%=new Date()%>"/>
		<c:forEach var="productVO" items="${productVOList}">
			<tr>
				<td>
					<p>${productVO.productId}</p>
					<p>숫자분리 : ${fn:substring(productVO.productId,1,5)}</p>
				</td>
				<td>
					<p>${productVO.pname}</p>
					<p>길이 : ${fn:length(productVO.pname)}</p>
					<p>값변경 : ${fn:replace(productVO.pname,"LG","삼성")}</p>
				</td>
				<td>
					<!-- #,### 천단위 구분기호 -->
					<fmt:formatNumber value="${productVO.unitPrice}" 
						pattern="#,###" /> 
				</td>
				<td>
					<fmt:formatDate value="${today}"
						pattern="yyyy-MM-dd" />
					</td>
			</tr>
		</c:forEach>		
		</tbody>
	</table>
</body>
</html>

