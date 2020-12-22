<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student</title>

<link href="./common/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
</head>
<body>
<!-- menu -->
<jsp:include page="/common/menu.jsp"></jsp:include>
<div class="container">
		<div class="row mt-5">
			<div class="col-10">
				<h3>All Students</h3><hr />
			</div>
			<div class="col-2">
				<c:url value="/student-add.jsp" var="add"></c:url>
				<a href="${add }" class="btn btn-info">Add Student</a>
			</div>
		</div>
		<div class="row">
			<table class="table table-info border-dark">
				<tr>
					<th>Student Name</th>
					<th>Email</th>
					<th>Age</th>
					<th>Year</th>
					<th>Address</th>
					<th>Date Of Birth</th>
				</tr>
				<c:forEach items="${studentList}" var="student">
				<tr>
					<td>${student.name }</td>
					<td>${student.email }</td>
					<td>${student.age }</td>
					<td>${student.year }</td>
					<td>${student.address }</td>
					<td>${student.dateofbirth }</td>
				</tr>
				</c:forEach>
				
			</table><hr />
		</div>
</div>
</body>
</html>