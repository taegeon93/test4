<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
</head>
<body>
		<% String name = (String)request.getAttribute("name"); 
	  
		%>
	<h3><%= name %>님 환영합니다</h3>
</body>
</html>