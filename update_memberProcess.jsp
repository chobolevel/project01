<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file = "DBConn.jsp" %>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	String tel = request.getParameter("tel");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "update bus_member set password = ?, name = ?, gender = ?, address = ?, phone = ?, tel = ? where id = ?";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, password);
		pstmt.setString(2, name);
		pstmt.setString(3, gender);
		pstmt.setString(4, address);
		pstmt.setString(5, phone);
		pstmt.setString(6, tel);
		pstmt.setString(7, id);
		pstmt.executeUpdate();
		%>
		<script>
			alert("회원 정보 변경 성공");
			location.href = "index.jsp";
		</script>
		<%
	}
	catch (SQLException e) {
		e.printStackTrace();
		%>
		<script>
			alert("회원 정보 변경 실패");
		</script>
		<%
	}
%>
