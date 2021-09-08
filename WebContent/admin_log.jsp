<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<html> 
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
 <title> Admin Page</title> 
 </head> 
 <body> 
 <% String username=request.getParameter("user"); 
 String password=request.getParameter("password");
 if((username.equals("admin") && password.equals("yashvi152")))
	  { 
	   session.setAttribute("user",username);
	   response.sendRedirect("admin.jsp");
     } 
 else 
    {
	 response.sendRedirect("error.jsp");} 
 %> 
 </body> 
 </html>

