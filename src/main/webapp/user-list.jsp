<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User List</title>
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 900px;
            margin-top: 50px;
        }
        .table th, .table td {
            text-align: center;
        }
        .table th {
            background-color: #007bff;
            color: white;
        }
        .btn {
            width: 100px;
        }
    </style>
</head>
<body>

  <div class="container">
    <h2 class="text-center mb-4">User List</h2>
    
    <table class="table table-bordered">
      <thead>
        <tr>
          <th>User ID</th>
          <th>Username</th>
          <th>Email</th>
          <th>Role</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="user" items="${listuser}">
          <tr>
            <td><c:out value="${user.user_id}"/></td>
            <td><c:out value="${user.username}"/></td>
            <td><c:out value="${user.email}"/></td>
            <td><c:out value="${user.role}"/></td>
            <td>
              <a href="view?id=${user.user_id}" class="btn btn-info">View</a>
              <a href="edit?id=${user.user_id}" class="btn btn-warning">Edit</a>
              <a href="delete?id=${user.user_id}" class="btn btn-danger">Delete</a>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>

  <!-- Optional Bootstrap JS -->
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
