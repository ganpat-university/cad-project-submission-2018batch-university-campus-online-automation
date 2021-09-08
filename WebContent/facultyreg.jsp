<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Registration</title>
</head>
<body>
<%
	String url = "jdbc:mysql://localhost:3306/university",
	user = "root", 
	pass = "Mysql123";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url,user,pass);
	
	String fid = request.getParameter("fid");
	String fname = request.getParameter("fname");
	String fpw = request.getParameter("fpw");
	String designation = request.getParameter("designation");
	String course = request.getParameter("course");
	
	String check = "select * from faculty where fid = ?";
	PreparedStatement ps = conn.prepareStatement(check);
	ps.setString(1,fname);
	ResultSet rs = ps.executeQuery();

		String insert = "INSERT INTO faculty(fid,fname,fpw,designation,course) VALUES(?,?,?,?,?)";
		
		PreparedStatement ps1 = conn.prepareStatement(insert);
		ps1.setString(1, fid);
		ps1.setString(2, fname);
		ps1.setString(3, fpw);
		ps1.setString(4, designation);
		ps1.setString(5, course);
		ps1.executeUpdate();
		
		response.sendRedirect("/university_online/index.html");
%>
</body>
</html>