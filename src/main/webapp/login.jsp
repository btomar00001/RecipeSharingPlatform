<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	background-color: #f8f9fa;
}

.login-container {
	max-width: 400px;
	margin-top: 100px;
}

.card-header {
	background-color: #007bff;
	color: white;
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
}

.btn-primary:hover {
	background-color: #0056b3;
	border-color: #0056b3;
}
</style>
</head>
<body>
	<div class="container">
		<div class="login-container">
			<div class="card">
				<div class="card-header text-center">
					<h4>User Login</h4>
				</div>
				<div class="card-body">
					<form action="login" method="POST">
						<div class="form-group">
							<label for="username">Username</label> <input type="text"
								class="form-control" id="username" name="username"
								placeholder="Enter your username" required>
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								class="form-control" id="password" name="password"
								placeholder="Enter your password" required>
						</div>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-primary btn-block">Login</button>
						</div>
						<div class="form-group text-center">
							<a href="index.jsp" class="btn btn-link">Don't have an
								account? Register here</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Optional Bootstrap JS (for future enhancements like modals, dropdowns, etc.) -->
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