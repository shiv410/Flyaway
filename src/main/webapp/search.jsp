<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<title>Available Flights</title>
<%
String source = request.getParameter("source");
String destination = request.getParameter("destination");
/* Class.forName("com.mysql.cj.jdbc.Driver"); */
String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/flyaway";
String user = "root";
String pass = "Redhat@1234.";
Class.forName(driver);
String sql = "select * from flights where source='" + source + "'and destination='" + destination + "'";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 14px;
}
</style>
<h1>Available Flights :</h1>
<table>
	<tr>
		<th>Name</th>
		<th>Airline</th>
		<th>Source-Destination</th>
		<th>Price</th>
		<th>Source</th>
		<th>Destination</th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
	</tr>
	<%
	}
	%>
</table>
</br>

</br>
<form action="customerdetails.jsp" method="post">
	Number of Persons:<input type="number" name="no of persons" required>
	</br>
	</br> 
	<input type="submit" value="Book Ticket">
</form>

