<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>

<%!

int getDiscount(int price)
{
	int dis=0;
	if(price>1000)
	dis=price*30/100;
	else dis=price*20/100;
	return dis;
		
	}

%>

<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/data", "root","root");
	String sql="SELECT * from books";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sql);
	
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h3>Book-List</h3>
	<hr>
	<table border="2">
	<tr>
	<th>Book ID</th>
	<th>Book Name</th>
	<th>Book Author</th>
	<th>Book Subject</th>
	<th>Book Price</th>
	<th>Discount Price</th>
	</tr>
	<% 
	while(rs.next())
	{
		String s1=rs.getString(1);
		String s2=rs.getString(2);
		String s3=rs.getString(3);
		String s4=rs.getString(4);
		String s5=rs.getString(5);
		
	
	%>	
	<tr>
	<td><%=s1 %></td>
	<td><%=s2 %></td>
	<td><%=s3 %></td>
	<td><%=s4 %></td>
	<td><%=s5 %></td>
	<td><%=Integer.parseInt(s5)-getDiscount(Integer.parseInt(s5)) %></td>
	</tr>
	
<% 		
	}
	con.close();
	%>
	


	</table>
	<hr>
	
	<a href="buyerpage.jsp">BuyerHome</a>
</body>
</html>





