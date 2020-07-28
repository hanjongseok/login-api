<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
환영합니다 검색어를 입력해주세요
검색
<a href="search.jsp">이동</a>
<%
String userID = request.getParameter("userID");
String userPW = request.getParameter("userPW");
%><br>

<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost/dbdb", "root", "root");
	System.out.println("연결 성공");
	String sql = "SELECT * FROM join_tbl WHERE userID = ? AND userPW = ?";
	pstmt = conn.prepareStatement(sql);

	pstmt.setString(1, userID);
	pstmt.setString(2, userPW);
	
	rs = pstmt.executeQuery();
	if (rs.next()) {
		out.println("데이터 확인 성공 o");
		session.setAttribute("name", rs.getString("name"));
		
	} else {

		out.println("데이터 확인 실패 x");
		response.sendRedirect("login.jsp");//이걸 이용해서 로그인 페이지등을 제작
	}
	

} catch (Exception e) {
	System.out.println("에러: " + e);
} finally {
	try {
		if (conn != null && !conn.isClosed()) {
			conn.close();
		}
		if( pstmt != null && !pstmt.isClosed()){
            pstmt.close();
        }
	} catch (SQLException e) {
		e.printStackTrace();
	}
}
%>

</body>
</html>