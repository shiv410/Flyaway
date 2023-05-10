<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
String password = request.getParameter("new password");
String oldPassword = request.getParameter("existing password");
String oldPass = "";
String confirmPassword = request.getParameter("confirm password");
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyaway";
String user = "root";
String pass = "Redhat@1234.";
String sql1 = "select password from login where password='" + oldPassword + "'";
String sql2 = "update login set password=" + confirmPassword + " where username='neha'";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql1);
if (rs.next()) {
	oldPass = rs.getString("password");
}
if (password.equals(confirmPassword)) {
	if (oldPassword.equals(oldPass)) {
		st = con.createStatement();
		int i = st.executeUpdate(sql2);
		out.println("Password updated");
		RequestDispatcher rd = request.getRequestDispatcher("/passdata.jsp");
		rd.include(request, response);
	} else {
		out.println("Old password doesn't match");
		RequestDispatcher rd = request.getRequestDispatcher("/passdata.jsp");
		rd.include(request, response);
	}
} else {
	out.println("Passwords do not match! try again");
	RequestDispatcher rd = request.getRequestDispatcher("/passdata.jsp");
	rd.include(request, response);
}
%>