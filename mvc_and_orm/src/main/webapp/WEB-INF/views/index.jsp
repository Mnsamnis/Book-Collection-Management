<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Book</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #00224D;
	color: #FFFAB7;
	font-family: Arial, sans-serif;
}

.container {
	max-width: 500px;
	margin: 0 auto;
	padding: 50px 20px;
	text-align: center;
}

.heading {
	font-size: 2rem;
	margin-bottom: 30px;
	color: #9B3922;
}

.btn-primary {
	background-color: #F2613F;
	border: none;
	padding: 10px 30px;
	font-size: 1.2rem;
	border-radius: 50px;
	transition: all 0.3s ease;
}

.btn-primary:hover {
	background-color: #9B3922;
	transform: translateY(-3px);
}
</style>
</head>
<body>

	<div class="container">
		<h1 class="heading">Welcome to My Book Collection</h1>
		<p class="lead">Start exploring now!</p>
		<form action="add_book">
			<button type="submit" class="btn btn-primary">Explore</button>
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
