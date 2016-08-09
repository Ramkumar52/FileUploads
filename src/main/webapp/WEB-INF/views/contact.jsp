<%@page import="org.hibernate.hql.internal.ast.util.ASTUtil.IncludePredicate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="/WEB-INF/views/Header.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>CONTACT</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="body">
		<h1><span>let's keep in touch</span></h1>
		<form action="contact.html">
			<input type="text" name="fname" id="fname" value="name"><br/>
			<input type="text" name="address" id="address" value="address"><br/>
			<input type="text" name="email" id="email" value="email"><br/>
			<input type="text" name="phone" id="phone" value="phone number"><br/>
			<textarea name="message" id="message">message</textarea><br/>
			<input type="submit" name="send" id="send" value="send">
		</form>
	</div>
</body>
</html>