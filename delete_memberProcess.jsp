<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file = "DBConn.jsp" %>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select password, name from bus_member where id = ?";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			String temp_pass = rs.getString(1);
			String temp_name = rs.getString(2);
			if(temp_pass == password && temp_name == name) {
				sql = "delete from bus_member where id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();
				%>
				<script>
					alert("회원님 계정이 정상적으로 탈퇴처리 되었습니다.");
					location.href = "login.jsp";
				</script>
				<%
			}
			else {
				%>
				<script>
					alert("비밀번호 또는 이름이 일치하지 않습니다.");
					history.back(-1);
				</script>
				<%
			}
		}
		else {
			%>
			<script>
				alert("아이디로 된 회원 정보가 존재하지 않습니다.");
				history.back(-1);
			</script>
			<%
		}
	}
	catch(SQLException e) {
		e.printStackTrace();
	}
%>
