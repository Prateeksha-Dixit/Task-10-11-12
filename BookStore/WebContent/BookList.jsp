<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.util.ArrayList,java.sql.ResultSet" %>
<!DOCTYPE html>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data", "root","root");
String[] book=request.getParameterValues("subject");
String subject="";
for(String s:book)
	subject=subject+"'"+s+"',";



String sql="SELECT bname from books where subject IN("+subject.substring(0, subject.length()-1)+")";

PreparedStatement ps=con.prepareStatement(sql);

ResultSet rs=ps.executeQuery();
while(rs.next())
{
	String s1=rs.getString(1);
	
	%>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>	
<form>
<a href="BookDetailsServlet" ><%=s1 %></a><br>
</form>
	<% 
}



%>




</body>
</html>