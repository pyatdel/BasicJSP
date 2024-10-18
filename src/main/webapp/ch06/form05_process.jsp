<%@page import="java.util.Arrays"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<!-- form페이지 
	요청URI : /ch06/form05_process.jsp
	요청파라미터 : request{id=a001,passwd=java,name=개똥이
		,phone1=010,phone2=1111,phone3=2222,gender=여성
		,hobby=문자타입의배열,comment=가입인사!...}
	요청방식 : post
	-->
	<% //스크립틀릿
		request.setCharacterEncoding("UTF-8");
		//id,passwd,name,phone1..
		//getParameterNames 메소드 : 모든 요청 파라미터 명을 가져옴
		Enumeration paramNames = request.getParameterNames();
		
		String name = "";
		String paramValue = "";
		String[] paramValues;
		//열거형 요소가 있으면 true 반환
		//hasMoreElements 메소드 : 전송된 요청 파라미터가 없을 때까지 반복
		while(paramNames.hasMoreElements()){
			//nextElement 메소드 : 각 요청 파라미터의 이름을 가져옴
			name = (String)paramNames.nextElement();
			out.print("<p>"+name+"</p>");
			
			if(name.equals("hobby")){//String[]
				paramValues = request.getParameterValues(name);
			
				//paramValues : String[] ["독서","영화"]
// 				for(String value : paramValues){
// 					out.print(value + ",");
// 				}
				out.print("<p>"+Arrays.toString(paramValues)+"</p>");
				out.print("<p>"+String.join(",", paramValues)+"</p>");
			}else{//String(id,passwd,name,phone1)
				paramValue = request.getParameter(name);
				out.print("<p>"+paramValue+"</p>");
			}
		}
	%>
</body>
</html>









