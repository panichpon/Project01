<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
	<h1>Register</h1>
	<hr />

	<form action="${pageContext.request.contextPath}/add_register" method="post">
		Name:<br>
		<input type="text" name="name" required="required"><br>
		Surname:<br>
		<input type="text" name="surname" required="required"><br>
		Email:<br>
		<input type="text" name="email" required="required"><br>
		Password:<br>
		<input type="password" name="password" required="required"><br> 
		Tel:<br>
		<input type="text" name="tel" required="required"><br>
		
		<br>
		<input type="submit" value="Register"> | <input type="reset" value="Reset">

	</form>


</body>
</html>