<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EMS Home</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg');
            background-size: 100% 100%; /* Adjusts the image size to fill the entire background */
            background-position: center; /* Centers the image */
            background-repeat: no-repeat; /* Prevents the image from repeating */
            color: #f8f9fa; /* Light text color for better contrast */
            text-align: center;
            padding: 50px 20px; /* Reduced padding for better layout */
            height: 100vh; /* Full height to cover viewport */
        }
        h1 {
            margin-bottom: 20px; /* Reduced margin for better spacing */
            font-size: 2.5em;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8); /* Darker shadow for improved visibility */
            color: #ffcc00; /* Bright yellow color for the headline */
        }
        .btn {
            margin: 10px;
            font-size: 1.2em;
            background-color: rgba(0, 123, 255, 0.8); /* Adjusted button color for better visibility */
            border: none;
            padding: 10px 20px;
            color: white; /* Button text color */
            transition: background-color 0.3s ease; /* Smooth transition for hover effect */
        }
        .btn:hover {
            background-color: rgba(0, 123, 255, 1);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>CHILLAX - Its fine to take help</h1>
        <a href="add-user" class="btn btn-light">Register</a>
        <a href="login" class="btn btn-light">Login</a>
        <a href="create-admin" class="btn btn-light">Create New Admin</a>
    </div>
</body>
</html>
