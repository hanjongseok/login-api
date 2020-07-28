<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=new java.util.Date()%><br>
<%
   String id = (String)session.getAttribute("id");
   System.out.println(id);
   
   if (id == null){ %>
회원가입
<a href="join.jsp" >이동</a> <br><br>
로그인
<a href="login.jsp" >이동     </a> <br><br>
<%}else {%>

<a href = "search.jsp">검색</a><br><br><br><br>

  <% } %>
<a href = "logout.jsp">로그아웃</a>




<%-- <h2>hello world!!</h2>
   <br> 현재 날짜와 시간은 :
   <%=new java.util.Date()%><br>
   <%
      System.out.println("hello world");
   out.println("hello world<br>");
   %>
   <a href="join.jsp">회원가입</a>
   <br>
   <%
   String id = (String)session.getAttribute("id");
   System.out.println(id);
   
   if (id == null){ %>
   <a href="join2.jsp">로그인</a>
   <br>
            
   <%}else {%>
   <a href="logout.jsp">로그아웃</a>
   <br>
   
   <%} %>
   <a href="search.jsp">날씨 검색</a> --%>











</body>

</html>