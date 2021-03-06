<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add student</title>
<link href="./common/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<jsp:include page="/common/menu.jsp"></jsp:include>

<div class="container">
	<div class="row">
		<div class="col-8 mt-5">
			<h3>Add student</h3>
		</div>
		<div class="col-4 mt-5">
				<c:url value="/student.jsp" var="student"></c:url>
				<a href="${student }" class="btn btn-primary">Go back</a>
		</div>
	</div>
	<div class="row">
		<div class="col-6 my-2">
			<hr />
			<c:url value="/add-student" var="addstudent"></c:url>
			<form action="${addstudent }" class="form" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label> Student Name</label>
					<input type="text" name="sname" required="required" placeholder="Enter your name" class="form-control" />
				</div>
				
				<div class="form-group">
					<label> Email</label>
					<input type="text" name="email" required="required" placeholder="Enter your email" class="form-control" />
				</div>
				
				
				
				<div class="form-group">
					<label for="year">Year</label>
					<select name="year" id="year" class="form-control">
						<option value="first">First Year</option>
						<option value="second">Second Year</option>
						<option value="third">Third Year</option>
						<option value="fourth">Fourth Year</option>
						<option value="fifth">Fifth Year</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Age</label>
					<input type="number" name="age" required="required" placeholder="Enter your age" class="form-control" />
				</div>
				
				<div class="form-group">
					<label>Address</label>
					<input type="text" name="address" required="required" placeholder="Enter your address" class="form-control" />
				</div>
				
				<div class="form-group">
					<label>Date of birth</label>
					<input type="date" name="date" required="required" class="form-control" />
				</div>
				<div class="form-group">
					<label> Photo</label>
					<input type="file" name="photo" class="form-control" />
				</div>
				<div class="form-group">
						<button type="submit" class="btn btn-outline-primary">Save</button>
						<button type="reset" class="btn btn-outline-danger float-right">Reset</button>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>