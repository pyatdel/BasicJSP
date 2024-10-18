<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<!-- 
page 디렉티브
 -->
<!DOCTYPE html>
<html>
<head>
<title>내장객체</title>
</head>
<body>

	<h3>이 페이지는 1초마다 새로고침 됩니다.</h3>

	<% //스크립틀릿
		//response.setIntHeader("Refresh", 1);
	%>
	<!-- 표현문 -->
	<h5><%//=new Date().toLocaleString()%></h5>
	
	<h5 id="p1"></h5>

<script type="text/javascript">
function gogo(){
	let today = new Date();
	//today :  Tue Oct 15 2024 10:17:54 GMT+0900 (한국 표준시)
	console.log("today : ", today);
	
	//연월일 추출
	let year = today.getFullYear();//2024
	let month = ('0' + (today.getMonth() + 1)).slice(-2);	//10. 7
	let day = ('0' + today.getDate()).slice(-2);	//15.  2
	
	//2024-7-2 -> 2024-07-02
	let dateString = year + "-" + month + "-" + day;
	
	console.log("dateString : ", dateString);
	
	//시분초 추출
	//10:7:13 -> 10:07:13
	let hours = ('0' + today.getHours()).slice(-2);
	let minutes = ('0' + today.getMinutes()).slice(-2);
	let seconds = ('0' + today.getSeconds()).slice(-2);
	
	let timeString = hours + ":" + minutes + ":" + seconds;
	
	console.log("timeString : ", timeString);
	
	//id속성의 값이 p1인 요소(Element)에 접근
	//text영역에 일시를 넣어주자
	//<h5 id="p1"></h5>
	document.getElementById("p1").innerHTML = dateString + " " + timeString;
}//end gogo()

//1초마다 gogo함수를 호출
setInterval(gogo,1000);
</script>






</body>
</html>




