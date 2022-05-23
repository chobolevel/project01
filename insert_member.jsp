<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<header>
<%@include file = "header.jsp" %>
</header>

<nav>
<%@include file = "nav.jsp" %>
</nav>

<section>
<h2>회원 가입 화면</h2>
<form name = "form" method = "post" action = "insert_memberProcess.jsp" >
<table border = "1" id = "tab2">
<tr>
	<th>아이디</th>
	<td><input type = "text" name = "id" ></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type = "text" name = "password" ></td>
</tr>
<tr>
	<th>비밀번호 확인</th>
	<td><input type = "text" name = "pass_check"></td>
</tr>
<tr>
	<th>이름</th>
	<td><input type = "text" name = "name" ></td>
</tr>
<tr>
	<th>성별</th>
	<td>
		<input type = "radio" name = "gender" value = "남성">남성
		<input type = "radio" name = "gender" value = "여성">여성
	</td>
</tr>
<tr>
	<th>주소</th>
	<td><input type = "text" name = "address" ></td>
</tr>
<tr>
	<th>휴대폰 번호</th>
	<td><input type = "text" name = "phone"></td>
</tr>
<tr>
	<th>집 전화</th>
	<td><input type = "text" name = "tel" ></td>
</tr>
<tr>
	<td colspan = "2" align = "center">
		<input type = "button" value = "등록" onclick = "check()">
		<input type = "reset" value = "취소">
	</td>
</tr>
</table>
</form>
</section>

<footer>
<%@include file = "footer.jsp" %>
</footer>

</body>
</html>
