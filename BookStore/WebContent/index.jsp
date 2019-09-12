<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<h3>Online Book Store</h3>
	<hr>
	<form action="VerifyUser">
	<pre>
		Userid		<input type="text" name="userid"  />
		Password	<input type="password" name="password"/>
		RememberMe	<input type="checkbox" name="save" value="yes" checked="checked" />
		Usertype	owner	<input type="radio" name="utype" value="owner" checked="checked"/>
				buyer 	<input type="radio" name="utype" value="buyer"/>
					<input type="submit" value="Login"/>
	</pre>
	</form>
	<hr>
	<a href="registration.jsp">New-User</a>

</body>
</html>