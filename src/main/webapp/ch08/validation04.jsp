<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
/*
유효성 검사(validateion) 처리 방법 : 
	사용자가 폼 페이지에 입력한 데이터 값이 서버(톰켓)로 전송되기 전에 
			웹 브라우저(크롬)에서 검증하는 방법
1) 기본 유효성 검사 : 폼 페이지에 입력된 데이터 값의 존재 유무를 검사함
2) 데이터 형식 유효성 검사 : 정규 표현식을 사용하여 폼 페이지에 입력된 데이터 값이
				특정 패턴에 적합한지 여부를 검사
*/
	function checkForm(){
		//1.아이디는 숫자로 시작할 수 없습니다.
		/*
		"1admin".substr(0,1) => 1
		
		It is Not a Number : 그것은 숫자가 아니다 => isNaN()
		!isNaN() => 그것은 숫자가 아니다가 아니다 => 숫자가 맞다
		*/
		let id = document.loginForm.id.value;//1admin
		console.log("id : ", id);
		
		//패턴 : 첫글자가 문자
		let regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		
		//패턴.함수(대상)
		if(!regExpId.test(id)){//! : not => 통과하지 못하면
			alert("아이디는 숫자로 시작할 수 없습니다.");
			document.loginForm.id.select();//내용 선택
			return;//함수 종료
		}
		
// 		if(!isNaN(id.substr(0,1))){//아이디의 첫글자가 숫자가 맞다
// 			alert("아이디는 숫자로 시작할 수 없습니다.");
// 			document.loginForm.id.select();//내용 선택
// 			return;//함수 종료
// 		}
		
		//정규표현식(Regular Expression)
		//1) test() : 판단(true/false)
		//2) exec() : 추출
		let regExp = /Java/i;//i : 대소문자 무관
		//패턴.함수(대상)
		let result = regExp.exec(id);//id가 ajavas
		//null처리
		if(result!=null){
			console.log("result : " + result[0]);
		}
		
		//Java.test("ajavas") => true
		//Java.test("ajas") => false
		if(regExp.test(id)){
			console.log("입력 대상이 패턴에 맞음");
		}
		
		
		
		//통과했다면
		//document.loginForm.submit();
	}
</script>
</head>
<body>
	<!-- body와 body 사이를 document라고 함 -->
	<!-- 폼페이지 
	./  : 현재폴더
	생략 : 상대경로
	-->
	<form name="loginForm" 
		action="/ch08/validation03_process.jsp" method="post">
		<!-- 폼데이터 -->
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<!-- checkform() : 핸들러함수 
		onclick : 속성(attr, prop)
		-->
		<p><input type="button" value="전송" onclick="checkForm()" /></p>
	</form>
</body>
</html>


