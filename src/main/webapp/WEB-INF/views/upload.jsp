<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Upload File Request Page</title>
</head>
<body>
	<form method="post" action="multipleSave" enctype="multipart/form-data">
		File to upload 1: <input type="file" name="file"><br/>
		File to upload 2: <input type="file" name="file"><br/>
		File to upload 3: <input type="file" name="file"><br/>
		File to upload 4: <input type="file" name="file"><br/>
		
		Name: <input type="text" name="name">
		
		<input type="submit" value="Upload"> Press here to upload the file!
	</form>
</body>
</html>
