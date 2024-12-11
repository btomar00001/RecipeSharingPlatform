<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <style>
    body {
      background-color: #f8f9fa;
    }
    .logout-btn {
      margin-top: 20px;
    }
    .welcome-container {
      margin-top: 30px;
    }
    .hero-section {
      padding: 30px;
      background-color: #007bff;
      color: white;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    .hero-section h1 {
      font-size: 2.5rem;
    }
    .hero-section p {
      font-size: 1.2rem;
    }
    .btn-lg {
      font-size: 1.1rem;
    }
  </style>
</head>
<body>

<div class="container welcome-container">
  <!-- Logout Button -->
  <a href="logout" type="button" class="btn btn-primary btn-lg float-end logout-btn">
    Logout
  </a>

  <!-- Welcome Message -->
  <h2 class="mt-4">Welcome User</h2>

  <!-- Hero Section -->
  <div class="hero-section mt-4">
    <h1>User Management Application</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
  </div>

</div>

</body>
</html>
