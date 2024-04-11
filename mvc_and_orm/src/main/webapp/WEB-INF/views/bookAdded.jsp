<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Book Added</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
  body {
    background-color: #0C0C0C;
    color: #FFFAB7;
    font-family: Arial, sans-serif;
  }

  

  .alert {
    margin-top: 20px;
    
  }

  .btn {
    margin-top: 20px;
  }
   /* Custom margin classes */
        .mt-6 {
            margin-top: 6rem; /* You can adjust this value as needed */
        }
</style>
</head>
<body>
<div class="container">
  <div class="alert alert-success alert-dismissible fade show" role="alert">
    Your book has been added successfully!!!
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
  <div class="row mt-6">
    <div class="col-md-4">
      <div class="alert alert-success" role="alert">
        <strong>Book Name:</strong> ${book.bookName}
      </div>
    </div>
    <div class="col-md-4">
      <div class="alert alert-success" role="alert">
        <strong>Book Author:</strong> ${book.author}
      </div>
    </div>
    <div class="col-md-4">
      <div class="alert alert-success" role="alert">
        <strong>Book Price:</strong> ${book.price}
      </div>
    </div>
  </div>
  <div class="text-center">
  <a href="${pageContext.request.contextPath}/add_book" class="btn btn-primary">Add More Book</a>
  <a href="${pageContext.request.contextPath}/view_all" class="btn btn-warning">View All Books</a></div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>