<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>


<%
String usr= request.getParameter("user");
String password=request.getParameter("password");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "Mysql123");
Statement st= con.createStatement();
ResultSet rs ;
rs= st.executeQuery("select * from company where email='" + usr + "' and cpassword='" + password + "'");
int count = 0;
while(rs.next())
{
	count = count + 1;
}
if(count == 1)
{
	ServletContext sc = getServletContext();
	out.println("<hr><b>Welcome "+usr+", You will be redirected soon !</b><hr>");
	int timeout = 2;
		
	session.setAttribute("ses_name", usr);
	response.setHeader("Refresh", timeout+"; url = companydashboard.jsp");
}
else
{
	out.println("<h4> INCORRECT PASSWORD OT USERNAME</h4>");
	int timeout = 2;
	
	session.setMaxInactiveInterval(timeout);
	response.setHeader("Refresh", timeout+"; url = index.html");
}

%>