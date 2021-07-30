<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" rel="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
<style>

body{
	background-color:cyan;
}
.container-fluid{
	padding:5% 5%;
	margin-top:5%;
	text-align:center;
	background-color:white;
	height:100%;
}
input[type='email']{
	
	
	width:10%;
	margin-bottom:5%;
}
input[type='password']{
	
	width:10%;
	margin-left:1.5%;
	margin-bottom:5%;
}
</style>
<meta charset="UTF-8">

</head>
<body>
<%
	if(session.getAttribute("message")!=null){
		
		out.println(session.getAttribute("message"));
		
	}

%>
<div class="container-fluid">

<form action="login" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" name="userEmail" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control"  name="userPassword" id="exampleInputPassword1" placeholder="Password">
  </div>
 
  <button type="submit" class="btn btn-primary">Login</button>
</form>
	

</div>
</body>
</html>