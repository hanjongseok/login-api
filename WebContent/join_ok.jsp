<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
가입을 축하합니다<br>
	<%
		String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW");
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String mobile = request.getParameter("mobile");

	System.out.println(userID);
	System.out.println(userPW);
	System.out.println(email);
	System.out.println(name);
	System.out.println(mobile);
	%>
	<%
		Connection conn = null;
	PreparedStatement pstmt = null;

	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost/dbdb", "root", "root");
		System.out.println("연결 성공");
		String sql = "INSERT INTO join_tbl (userID, userPW, email, name, mobile) VALUES(?, ?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		// 4. 데이터 binding

		pstmt.setString(1, userID);
		pstmt.setString(2, userPW);
		pstmt.setString(3, email);
		pstmt.setString(4, name);
		pstmt.setString(5, mobile);

		int count = pstmt.executeUpdate();
		if (count == 0) {
			System.out.println("데이터 입력 실패");
		} else {
			System.out.println("데이터 입력 성공");
		}
		// 		response.sendRedirect("index.jsp");//이걸 이용해서 로그인 페이지등을 제작

	} catch (Exception e) {
		System.out.println("에러: " + e);
	} finally {
		try {
			if (conn != null && !conn.isClosed()) {
		conn.close();
			}
			if (pstmt != null && !pstmt.isClosed()) {
		pstmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	%>

</body>
</html>