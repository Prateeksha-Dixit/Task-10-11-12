<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data", "root","root");
String sql="SELECT distinct subject from books";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Store</h3>
<hr>

<%
while(rs.next())
{
	String s=rs.getString(1);
%>	
Subject <input type="checkbox" name="subject" value="<%=s%>" /><%=s%><br><br>
<% 	
	}
%>

<input type="submit" value="Get-List"/>


<hr>








</body>
</html>