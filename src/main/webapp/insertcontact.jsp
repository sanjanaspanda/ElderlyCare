<%@page import="carenconnect.contactusdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id = "c"
class="carenconnect.contactus"/>
 <jsp:setProperty property="*" name="c" />
 <%
  contactusdao cu = new contactusdao();
  int status = cu.registercontact(c);
  if (status > 0) {
   out.print("Your response was submitted");
  }
  else{
	  out.print("There was an error");
  }
 %>
</body>
</html>