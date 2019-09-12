<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data", "root","root");
String userid=request.getParameter("userid");
String password=request.getParameter("password");
String username=request.getParameter("username");
String address=request.getParameter("address"); 
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");

 //sql="insert into users values('"+userid+"','"+password+"','"+username+"','"+address+"','"+mobile+"','"+email+"')";
 String sql="UPDATE users set userid=?, username=?, password=?, address=?, mobile=?, email=? where userid=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, userid);
ps.setString(2, username);
ps.setString(3, password);
ps.setString(4, address);
ps.setString(5, mobile);
ps.setString(6, email);
ps.setString(7, userid);

int n =ps.executeUpdate();




%>
<%=userid %>
<%=n+"Profile Updated" %>



</body>
</html>