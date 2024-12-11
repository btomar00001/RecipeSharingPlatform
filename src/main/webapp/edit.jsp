<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit User Data</title>
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
	background-color: #ffffff;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.btn-success {
	background-color: #28a745;
	border-color: #28a745;
}

.btn-success:hover {
	background-color: #218838;
	border-color: #1e7e34;
}

label {
	font-weight: bold;
}

h2 {
	color: #343a40;
}
</style>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h2>Edit User Data</h2>
			</div>
			<div class="card-body">
				<form action="update" method="post">
					<div class="form-group">
						<label for="id">User ID</label> <input type="number"
							class="form-control" name="id" id="id" value="123" required
							readonly />
					</div>
					<div class="form-group">
						<label for="name">User Name</label> <input type="text"
							class="form-control" name="name" id="name" value="John Doe"
							required />
					</div>
					<div class="form-group">
						<label for="email">User Email</label> <input type="email"
							class="form-control" name="email" id="email"
							value="john@example.com" required />
					</div>
					<div class="form-group">
						<label for="country">Country</label> <input type="text"
							class="form-control" name="country" id="country" value="USA"
							required />
					</div>
					<div class="form-group text-center">
						<button type="submit" class="btn btn-success btn-lg">Update</button>
					</div>
				</form>
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