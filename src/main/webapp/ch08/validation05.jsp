<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page  %>
<!DOCTYPE html>
<html>
<head>
<title>유효성검사</title>
<script type="text/javascript">
function checkMember(){
	//폼 object 특정
	let form = document.Member;
	
	//1. 아이디는 문자로 시작
	let regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	let id = form.id.value;
	
	//정규표현식쩜테스트대상
	if(!regExpId.test(id)){
		alert("아이디는 문자로 시작해주세요");
		form.id.select();
		return;//함수 종료
	}
	
	//2. 이름은 한글만 입력. 웃음으로 시작하여 월급받기
	//2-1) 시작글자도 한글, 종료글자도 한글
	//2-2) 중간글자도 한글
	//2-3) + : 1이상(필수), * : 0이상(선택)
	let regExpName = /^[가-힣]+$/;
	let name = form.name.value;
	//정규표현식쩜테스트대상
	if(!regExpName.test(name)){
		alert("이름은 한글만 입력해주세요");
		form.name.select();
		return;//함수 종료
	}
	
	//3. 비밀번호는 숫자만 입력
	//3-1) 시작글자도 숫자, 종료글자도 숫자
	//3-2) 중간글자도 숫자
	//3-3) + : 1이상(필수), * : 0이상(선택)
	let regExpPasswd = /^[0-9]+$/;
	let passwd = form.passwd.value;
	//정규표현식쩜테스트대상
	if(!regExpPasswd.test(passwd)){
		alert("비밀번호는 숫자만 입력해주세요");
		form.passwd.select();
		return;//함수 종료
	}
	
	//4. 연락처 형식 준수(010-111-2222, 010-1111-2222)
	//{3} : 딱 3회, {3,4} : 3이상 4이하 반복, {3,} : 3이상 반복
	//\d : 숫자 1자리
	let regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
	let phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
	//정규표현식쩜테스트대상
	if(!regExpPhone.test(phone)){
		alert("연락처를 확인해주세요");
		form.phone2.select();
		return;//함수 종료
	}
	
	//5. 이메일 형식 준수(02test-_\.02test@naver-_\..com(kr))
	//                 아이디			  @ 도메인
	//i : ignore(대소문자 구분 안함)
	// | : 또는(or). 생략가능
	// * : 0이상(선택)
	// \. : .
	let regExpEmail = 
	/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	let email = form.email.value;
	//정규표현식쩜테스트대상
	if(!regExpEmail.test(email)){
		alert("이메일을 확인해주세요");
		form.email.select();
		return;//함수 종료
	}
	
	//유효성검사 모두 통과
	//form : document.Member
	form.submit();
}
</script>
</head>
<body>
	<%! //선언문 태그
		//전역 변수 1)
		int result = 0;
		//전역 메소드 2)
		int sum(int a, int b){
			return a + b;
		}
		
	%>
	
	<%	//스크립틀릿 -> 자바 로직
		//sum이라는 전역메소드를 호출(두 개의 파라미터(인수)를 전달)
		//3)
		result = sum(2, 3);
		//오류 발생!!
		//java.lang.ArithmeticException: / by zero
// 		int test = 3 / 0;
						//  0    1     2
		String[] strArr = {"사과","배","귤"};
		//java.lang.ArrayIndexOutOfBoundsException
// 		out.print("<p>"+strArr[3]+"</p>");
		
		int[] intArr = null;
		
		//java.lang.NullPointerException
		intArr[0] = 3;
	%>
	<!-- 4) 표현문 : 변수 값을 화면에 출력 -->
	<p>2 + 3 = <%=result%></p>
	
	<h3>회원 가입</h3>
	<form action="validation05_process.jsp" name="Member" method="post">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<p>이름 : <input type="text" name="name" /></p>
		<p>연락처 : 
			<select name="phone1">
				<option value="010">010</option>			
				<option value="011">011</option>			
				<option value="016">016</option>			
				<option value="017">017</option>			
				<option value="019">019</option>			
			</select> - 
			<input type="text" maxlength="4" size="4" name="phone2" /> -
			<input type="text" maxlength="4" size="4" name="phone3" />
		</p>
		<p>이메일 : <input type="text" name="email" /></p>
		<!-- button / submit / reset -->
		<p><input type="button" value="가입하기" onclick="checkMember()" /></p>
	</form>

</body>
</html>