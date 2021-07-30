<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0"); // Proxies.	


	if(session.getAttribute("userName")==null){
		session.setAttribute("message","Unauthorized access!!");
		response.sendRedirect("index.jsp");	
	}

%>


<%
	out.println("Welcome "+session.getAttribute("userName"));

%>
<a href="videos.jsp">videos</a>
<form action="logout">
<input type="submit" value="Logout">
</form>
</body>
</html>