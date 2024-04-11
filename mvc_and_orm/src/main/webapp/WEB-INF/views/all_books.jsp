<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>See All Books</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #0C0C0C;
	color: #F72798;
	font-family: Arial, sans-serif;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
}

.card {
	margin-bottom: 20px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: box-shadow 0.3s ease;
}

.card:hover {
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.card-body {
	padding: 20px;
}

.btn {
	margin-right: 10px;
}
  /* Style for the alert message */
        #alertMessage {
            display: none; /* Initially hidden */
            width: 50%;
            margin: auto;
            position: fixed; /* Fixed position to center the alert */
            top: 20px; /* Adjust top position as needed */
            left: 25%; /* Adjust left position as needed */
            z-index: 1000; /* Ensure it appears on top of other elements */
        }
</style>
</head>

<body>
<!-- Alert message -->
    <div id="alertMessage" class="alert alert-success alert-dismissible fade show" style="width: 50%; margin: auto;" role="alert" style="display: none;">
        <strong>Deleted!!</strong> Your book has been successfully deleted.
        <button type="button" class="close" onclick="hideAlert()" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
	<div class="container">
		<h2 class="my-4 text-center">List of All Books</h2>
		<div class="row">
			<c:forEach var="book" items="${books}">
				<div class="col-md-4">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">${book.bookName}</h5>
							<p class="card-text">Author: ${book.author}</p>
							<p class="card-text">${book.price}/-</p>
							<!-- Edit button -->
							<div class="d-flex justify-content-between align-items-center mx-5">
                <a href="edit_book?bookId=${book.bookId}" class="btn btn-primary"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
  <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325"/>
</svg></a>
							<form action="delete_book" method="post">
								<input type="hidden" name="bookId" value="${book.bookId}">
								<button type="submit" class="btn btn-danger">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-trash3-fill"
										viewBox="0 0 16 16">
  <path
											d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5m-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5M4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06m6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528M8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5" />
</svg>
								</button>
							</form>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="my-4">
			<a href="${pageContext.request.contextPath}/home"
				class="btn btn-primary">Home</a> <a href="add_book"
				class="btn btn-warning">Add New Book</a>
		</div>
	</div>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
		 <!-- JavaScript to show alert message -->
    <script>
 // Function to show the alert message
    function showAlert() {
        document.getElementById('alertMessage').style.display = 'block';
    }

    // Function to hide the alert message
    function hideAlert() {
        document.getElementById('alertMessage').style.display = 'none';
    }

    // Check if the URL contains a success query parameter
    const urlParams = new URLSearchParams(window.location.search);
    const success = urlParams.get('success');

    // If success is present and equals 'true', show the alert message
    if (success === 'true') {
        showAlert();
        // Hide the alert message after 5 seconds (5000 milliseconds)
        setTimeout(hideAlert, 5000);
    }
    </script>
</body>
</html>