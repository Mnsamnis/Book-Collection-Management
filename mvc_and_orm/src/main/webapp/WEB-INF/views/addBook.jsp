<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Book Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
    h2 {
        text-align: center;
        color: #9B3922;
    }
    .form-group {
        margin-bottom: 15px;
        display: flex;
        align-items: center;
    }
    .form-group label {
        flex: 1;
        color: #F2613F;
    }
    .form-group input {
        flex: 2;
        padding: 8px;
        border: 1px solid #F2613F;
        border-radius: 4px;
        background-color: #FFFAB7;
    }
    .form-group input:focus {
        outline: none;
        border-color: #7EA1FF;
        background-color: #FFFAB7;
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
        <h2 class="form-heading text-center mb-4">Add a New Book</h2>
        <form id="bookForm" action="/mvc_and_orm/book_added" method="post">
            <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Name:</label>
                <div class="col-sm-10">
                    <input type="text" name="bookName" class="form-control" id="name" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="author" class="col-sm-2 col-form-label">Author:</label>
                <div class="col-sm-10">
                    <input type="text" name="author" class="form-control" id="author" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="price" class="col-sm-2 col-form-label">Price:</label>
                <div class="col-sm-10">
                    <input type="text" name="price" class="form-control" id="price" required>
                </div>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-secondary">Reset</button>
                <a href="view_all" class="btn btn-warning">View All</a>
            </div>
        </form>
    </div>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>