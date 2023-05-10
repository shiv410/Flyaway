<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>password</title>
<style>
div{
   border-style: solid;
   padding: 25px;
   width:30%;
}
</style>
</head>
<body>
<div>
	<form action="changepassword.jsp" method="post">
		Enter existing password: <input type="password"	name="existing password">
		</br></br>
		Enter new password: <input type="password" name="new password">
		</br></br> 
		Confirm password: <input type="password" name="confirm password">
		</br></br> 
		<input type="submit" value="Change Password">
	</form>
</div>
</body>
</html>