<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management Application</title>
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <style>
        .card-header {
            background-color: #f8f9fa;
        }
        .card-body {
            background-color: #f1f3f5;
        }
        .container {
            max-width: 800px;
            margin-top: 50px;
        }
        .btn-back {
            background-color: #007bff;
            color: white;
        }
        .btn-back:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-body">
                <h2 class="text-center mb-4">User Details</h2>
                <div class="card">
                    <div class="card-header">
                        <strong>User Information</strong>
                    </div>
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col-sm-4"><strong>ID:</strong></div>
                            <div class="col-sm-8"><%= request.getAttribute("userId") %></div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-4"><strong>Name:</strong></div>
                            <div class="col-sm-8"><%= request.getAttribute("userName") %></div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-4"><strong>Email:</strong></div>
                            <div class="col-sm-8"><%= request.getAttribute("userEmail") %></div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-4"><strong>Country:</strong></div>
                            <div class="col-sm-8"><%= request.getAttribute("userCountry") %></div>
                        </div>
                        <a href="list" class="btn btn-back btn-block mt-4">Back to User List</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Optional Bootstrap JS (for future enhancements like modals, dropdowns, etc.) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/PtJzw3zfu6Fw8sCpZ+uI0D57mMDr2d+n5Cm34RU9K8CC9iVv8Sc5C2VOeXY4"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-pzjw8f+ua7Kw1TIq0a7w5b5W/d6PToULu67zmcpt3X+WY6wHfbzjzdksw7voT5Rz"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-pzjw8f+ua7Kw1TIq0a7w5b5W/d6PToULu67zmcpt3X+WY6wHfbzjzdksw7voT5Rz"
        crossorigin="anonymous"></script>
</body>
</html>
