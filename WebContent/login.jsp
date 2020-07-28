<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

<form action="login_ok.jsp">
  <label for="fname">id:</label><br>
  <input type="text" id="id" name="userID" ><br>
  
  <label for="fname">pw:</label><br>
  <input type="text" id="pw" name="userPW" ><br><br>
  <input type="submit" value="확인">
</form> 

</body>
</html>