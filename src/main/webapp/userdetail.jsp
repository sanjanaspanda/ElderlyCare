<%@page import="carenconnect.userdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id = "u"
class="carenconnect.user"/>
 <jsp:setProperty property="*" name="u" />
 <%
  userdao ud = new userdao();
  int status = ud.registeruser(u);
  if (status > 0) {
   out.print("You are successfully registered");
   session.setAttribute("username", u.getUsername());
   response.sendRedirect("index.jsp");

  }
 %>

</body>
</html>