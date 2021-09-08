<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String cname=request.getParameter("cname");
String email=request.getParameter("email");
String location=request.getParameter("location");
String cpassword=request.getParameter("cpassword");

try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "Mysql123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into company(cname,email,location,cpassword)values('"+cname+"','"+email+"','"+location+"','"+cpassword+"')");
response.sendRedirect("/university_online/index.html");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>	