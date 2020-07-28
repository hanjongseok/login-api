<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //세션 체크			세션값이 있으면 페이지를 보여주고 아니면 페이지 이동
    String name =  (String)session.getAttribute("name");
//     String name = session.getAttribute("name");
if(name ==null){
	response.sendRedirect("login.jsp");
}
System.out.println(name);
    %>
<!DOCTYPE html>
<html>
<body>

<h2>검색</h2>

<form action="search_ok.jsp">
  <label for="id">검색어:</label><br>
  <input type="text" id="id" name="search" value=""><br><br>
  <input type="submit" value="검색">
</form> 


</body>
</html>