<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<link href="./common/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="./common/js/jquery.min.js"></script>
<script type="text/javascript" src="./common/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<div class="row mt-3">
			<div class="col-6 offset-3">
				<div class="card">
				<div class="card-header">
					<h3>Register Form</h3>
				</div>
				<div class="card-body">
					<form action="register" class="form" method="post">
						<div class="form-group">
							<label for="">Login Name</label>
							<input type="text" name="uname" class="form-control" />
						</div>
						<div class="form-group">
							<label for="">Email</label>
							<input type="email" name="email" class="form-control" />
						</div>
						<div class="form-group">
							<label for="">Phone</label>
							<input type="text" name="phone" class="form-control" />
						</div>
						
						<button type="submit" class="btn btn-info">Register</button>
						<button type="reset" class="btn btn-danger">Clear</button>
					</form>
				</div>
			</div>
			</div>
		</div>
	</div>


</body>
</html>