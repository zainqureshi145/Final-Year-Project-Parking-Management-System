<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="AddUserServlet" method="post" name="adduser">
 User ID : <input type="text"  name="userId"
            value="<c:out value="${user.userId}" />" /> <br />
            
 User Name :<input type="text" name="username" value="<c:out value="${user.name}"/>"/><br/>
 Email :<input type="text" name="email" value="<c:out value="${user.email}"/>"/><br/>
 Phone :<input type="text" name="phoneno" value="<c:out value="${user.phoneNo}"/>"/><br/>
 Permimum User :<input type="text" name="permimumuser" value="<c:out value="${user.permiumUser}"/>"/><br/>
 <input type="submit" value="submit">
 
</form>

</body>
</html>