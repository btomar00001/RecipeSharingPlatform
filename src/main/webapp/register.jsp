<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.sql.*, java.io.*, javax.servlet.*, javax.servlet.http.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	background-color: #f8f9fa;
}

.container {
	max-width: 600px;
	margin-top: 50px;
}

.card {
	border-radius: 10px;
}

.card-header {
	background-color: #007bff;
	color: white;
	text-align: center;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.card-body {
	background-color: white;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
}

.btn-primary:hover {
	background-color: #0056b3;
	border-color: #0056b3;
}

.form-group label {
	font-weight: bold;
}

.alert {
	font-size: 14px;
	margin-top: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h4>Register New User</h4>
			</div>
			<div class="card-body">
				<form action="insert" method="post">
					<div class="form-group">
						<label for="username">Username</label> <input type="text"
							class="form-control" id="username" name="username" required>
					</div>
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							class="form-control" id="password" name="password" required>
					</div>
					<div class="form-group">
						<label for="email">Email</label> <input type="email"
							class="form-control" id="email" name="email" required>
					</div>
					<div class="form-group">
						<label for="role">Role</label> <select class="form-control"
							id="role" name="role">
							<option value="Admin">Admin</option>
							<option value="Contributor">Contributor</option>
							<option value="Explorer">Explorer</option>
						</select>
					</div>
					<button type="submit" class="btn btn-primary btn-block">Register</button>
				</form>

				<%
				// Display error or success messages if any
				String message = (String) request.getAttribute("message");
				if (message != null) {
				%>
				<div class="alert alert-danger mt-3">
					<%=message%>
				</div>
				<%
				}
				%>

				<div class="mt-3 text-center">
					<a href="login.jsp">Already have an account? Login here.</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Optional Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/PtJzw3zfu6Fw8sCpZ+uI0D57mMDr2d+n5Cm34RU9K8CC9iVv8Sc5C2VOeXY4"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-pzjw8f+ua7Kw1TIq0a7w5b5W/d6PToULu67zmcpt3X+WY6wHfbzjzdksw7voT5Rz"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-pzjw8f+ua7Kw1TIq0a7w5b5W/d6PToULu67zmcpt3X+WY6wHfbzjzdksw7voT5Rz"
		crossorigin="anonymous"></script>
</body>
</html>