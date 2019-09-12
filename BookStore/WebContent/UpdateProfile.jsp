<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>



</head>
<body>
<h3>Update Your Profile</h3>
<hr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data", "root","root");
String sql="SELECT * from users where userid='smith1'";
PreparedStatement ps=con.prepareStatement(sql);
//ps.setString(1, uid);
ResultSet rs=ps.executeQuery();
ArrayList<String> user=new ArrayList<>();

while(rs.next())
{
	user.add(rs.getString(1));
	user.add(rs.getString(2));
	user.add(rs.getString(3));
	user.add(rs.getString(4));
	user.add(rs.getString(5));
	user.add(rs.getString(6));
}
con.close();
%>
<form action="Edit.jsp">
<pre>
User Id   <input type="text" name="userid" value="<%=user.get(0)%>"/><br>
Password  <input type="text" name="password" value="<%=user.get(1) %>"/><br>
Username  <input type="text" name="username" value="<%=user.get(2) %>"/><br>
Address   <input type="text" name="address" value="<%=user.get(3) %>"/><br>
Mobile    <input type="text" name="mobile" value="<%=user.get(4) %>"/><br>
Email-ID  <input type="text" name="email" value="<%=user.get(5) %>"/><br>
<input type="submit" value="Update">
</pre>
</form>


<hr>

<a href="buyerpage.jsp">BuyerHome</a>


</body>
</html>