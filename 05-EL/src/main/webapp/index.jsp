<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expression Language</title>
</head>
<body>
	<h3>Expression Language Demo</h3>
			
	<form>
		<table>
			<tr>
				<td>User Name</td>
				<td>
					<input type="text" name="uname" value="${param.uname}"/>
				</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>
					<input name="uemail" type="email" value="${param.uemail}"/>
				</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>
					<input type="text" name="address" value="${param.address}"/>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<button type="submit">Display</button>
				</td>
			</tr>
		</table>
	</form>
	<hr />
	<h4>Result:</h4>
	
	<c:if test="${(not empty param.uname) and (param.uemail !=null) and (param.address ne null) }">
		User Name:${param.uname} <br />
		Email: ${param.uemail} <br />
		Address: ${param.address} 
	</c:if>
	
</body>
</html>