<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="java.sql.DriverManager, java.sql.Connection, java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book flight</title>
<body>
	<h1>FlyAway</h1>
	
	<form action="search.jsp" method="post" >
		Travel Date: <input type="date" id="traveldate" name="traveldate" placeholder="dd/mm/yyyy"> 
		</br> </br> 
		<label for="source">Source:</label>
		<input list="source" id="date" name="source" />
		<datalist id="source">
			<option value="Delhi">
			<option value="Mumbai">
			<option value="Bangalore">
			<option value="Kolkata">
			<option value="Hyderabad">
		</datalist>
		</br> </br> <label for="destination">Destination: </label> <input
			list="destination" id="date" name="destination" />
		<datalist id="destination">
			<option value="Delhi">
			<option value="Mumbai">
			<option value="Bangalore">
			<option value="Kolkata">
			<option value="Hyderabad">
		</datalist>
		</br> </br> 
		Number of Persons: <input type="number" name="no of persons">
		</br> </br> 
		<input	type="submit" value="Show Available Flights">
		</br> </br>
	</form>
	
	<form action="login.jsp" method="post">
		<input type="submit" value="Admin Login">
	</form>
</body>
</html>
