<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<form action="join_ok.jsp">
  <label for="fname">id:</label><br>
  <input type="text" id="id" name="userID" ><br>
  
  <label for="fname">pw:</label><br>
  <input type="text" id="pw" name="userPW" ><br>
  
  <label for="fname">email:</label><br>
  <input type="text" id="email" name="email" ><br>
  
   <label for="fname">name:</label><br>
  <input type="text" id="name" name="name" ><br>
  
  <label for="fname">mobile:</label><br>
  <input type="text" id="mobile" name="mobile" ><br><br>
  
  <input type="submit" value="저장">
</form>

</body>
</html>