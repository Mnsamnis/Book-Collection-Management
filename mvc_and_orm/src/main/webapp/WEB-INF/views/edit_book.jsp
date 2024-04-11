<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Book Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles -->
    <style>
        body {
            background-color: #0C0C0C;
            color: #F2613F;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #481E14;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
            color: #9B3922;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            color: #F2613F;
            margin-bottom: 5px;
            display: inline-block;
        }

        input[type="text"],
        input[type="number"] {
            padding: 8px;
            border: 1px solid #F2613F;
            border-radius: 4px;
            background-color: #FFFAB7;
            color: #0C0C0C;
            width: 100%;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            outline: none;
            border-color: #7EA1FF;
        }

        .btn {
        display: inline-block;
        background-color: #9B3922;
        color: #FFFFFF;
        padding: 10px 20px;
        text-align: center;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

       .btn:hover {
        background-color: #F2613F;
    }
    .btn-reset {
        background-color: #481E14;
        margin-left: 10px;
    }
    .btn-reset:hover {
        background-color: #0C0C0C;
    }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="my-4">Edit Book Details</h1>
        <form action="update_book" method="post">
            <div class="form-group">
                <label for="bookName">Book Name</label>
                <input type="text" class="form-control" id="bookName" name="bookName" value="${book.bookName}" required>
            </div>
            <div class="form-group">
                <label for="author">Author</label>
                <input type="text" class="form-control" id="author" name="author" value="${book.author}" required>
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input type="number" class="form-control" id="price" name="price" value="${book.price}" required>
            </div>
            <div class="text-center">
            <input type="hidden" name="bookId" value="${book.bookId}">
            <button type="submit" class="btn btn-primary">Update</button>
            <a href="${pageContext.request.contextPath}/view_all" class="btn btn-secondary">Cancel</a></div>
        </form>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>