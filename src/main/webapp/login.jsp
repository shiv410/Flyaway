<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
div{
   border-style: solid;
   padding: 25px;
   width:30%;
}
</style>
</head>
<body>    
	<h1>Admin Login</h1>
    <div>
	<form action="validate.jsp" method="post">
		Username: <input type="text" name="username">
		</br> </br> 
		Password: <input type="password" name="password">
		</br> </br> 
		<input type="submit" value="Login">
	</form>
    </div>

</body>
</html>