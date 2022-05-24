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
<h2>회원 탈퇴 화면</h2>
<form name = "form" method = "post" action = "delete_memberProcess.jsp">
<table border = "1" id = "tab3">
<tr>
	<th>아이디</th>
	<td><input type = "text" name = "id"></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type = "text" name = "password"></td>
</tr>
<tr>
	<th>이름</th>
	<td><input type = "text" name = "name"></td>
</tr>
<tr>
	<td colspan = "2">
		<input type = "button" value = "회원탈퇴" onclick = "check()">
		<input type = "reset" value = "다시작성">
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
