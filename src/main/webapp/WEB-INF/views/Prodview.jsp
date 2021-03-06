<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="/WEB-INF/views/Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>PRODUCT DETAIL</title>
</head>
<body>
	<form:form action="productmodel.do" method="POST"
		modelAttribute="ob">
		
		<table border="1">
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<th>PRICE</th>
			<c:forEach items="${productmodelList}" var="productmodel">
				<tr>
					<td>${productmodel.id}</td>
					<td>${productmodel.name}</td>
					<td>${productmodel.description}</td>
					<td>${productmodel.price}</td>


				</tr>

			</c:forEach>
		</table>
		
		<table>
		<tr>
			<td>Product ID</td>
			<td><form:input path="id" /></td>
		</tr>
		<tr>
			<td>Product Name</td>
			<td><form:input path="name" /></td>
		</tr>
		<tr>
			<td>Product Description</td>
			<td><form:input path="description" /></td>
		</tr>
		<tr>
			<td>Product Price</td>
			<td><form:input path="price" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" /> <input
				type="submit" name="action" value="Delete" /> <input type="submit"
				name="action" value="Search" /></td>
		</tr>
		</table>
		<br>
		
	</form:form>
</body>
</html>