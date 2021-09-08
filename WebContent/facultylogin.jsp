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
<title>Faculty Login Portal</title>
</head>
<body>
<%
	String url = "jdbc:mysql://localhost:3306/university",
	user = "root", 
	pass = "Mysql123";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url,user,pass);
	
	//String sid = request.getParameter("acc_no");
	String fid = request.getParameter("fid");
	String fpw = request.getParameter("fpw");
	
	//float acc = Float.parseFloat(acc_no);
	
	String check = "SELECT fname,fpw FROM faculty WHERE fid = ? and fpw = ?";
	PreparedStatement ps = conn.prepareStatement(check);
	ps.setString(1, fid);
	ps.setString(2, fpw);
	ResultSet rs = ps.executeQuery();
	
	int count = 0;
	while(rs.next())
	{
		count = count + 1;
	}
	if(count == 1)
	{
		ServletContext sc = getServletContext();
		out.println("<hr><b>Welcome "+fid+", You will be redirected soon !</b><hr>");
		int timeout = 2;
			
		session.setAttribute("ses_name", fid);
		response.setHeader("Refresh", timeout+"; url = dashboard.jsp");
	}
	else
	{
		out.println("<h4> INCORRECT PASSWORD </h4>");
		int timeout = 2;
		
		session.setMaxInactiveInterval(timeout);
		response.setHeader("Refresh", timeout+"; url = index.html");
	}
%>
</body>
</html>