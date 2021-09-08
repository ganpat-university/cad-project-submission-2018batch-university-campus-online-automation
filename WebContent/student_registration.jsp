<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration Portal</title>
</head>
<body>
<%
	String url = "jdbc:mysql://localhost:3306/university",
	user = "root", 
	pass = "Mysql123";
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url,user,pass);
	
	String enno = request.getParameter("enno");
	String name = request.getParameter("name");
	String branch = request.getParameter("branch");
	String sem = request.getParameter("sem");
	String spw = request.getParameter("spw");
	
	String check = "select * from student where enno = ?";
	PreparedStatement ps0 = conn.prepareStatement(check);
	ps0.setString(1,name);
	ResultSet rs = ps0.executeQuery();

		String insert = "insert into student(enno,name,branch,sem,spw) values(?,?,?,?,?)";
		
		PreparedStatement ps = conn.prepareStatement(insert);
		ps.setString(1, enno);
		ps.setString(2, name);
		ps.setString(3, branch);
		ps.setString(4, sem);
		ps.setString(5, spw);
		ps.executeUpdate();
		
		response.sendRedirect("/university_online/index.html");
%>
</body>
</html>
