<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Login</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg');
            background-size: 100% 100%; /* Adjusts the image size to fill the entire background */
            background-position: center; /* Centers the image */
            background-repeat: no-repeat; /* Prevents the image from repeating */
            color: #333; /* Keep the text color for login page content */
            padding: 20px;
            height: 100vh; /* Full height to cover viewport */
        }
        .container {
            background: rgba(255, 255, 255, 0.9); /* Slightly transparent background to blend with the image */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 400px;
            margin: auto;
            margin-top: 100px; /* Add margin to adjust position on the background */
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            width: 100%;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .message {
            text-align: center;
            color: #d9534f; /* Bootstrap's danger color */
        }
        a.btn-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #007bff;
            font-size: 14px;
        }
        /* Rocket Pop-up Animation */
        #rocket {
            position: fixed;
            bottom: -200px; /* Adjust for larger rocket */
            left: 50%;
            transform: translateX(-50%);
            width: 200px; /* Increased width */
            height: auto;  /* Maintain aspect ratio */
            animation: launchRocket 2s ease-in-out forwards;
            display: none;
        }
        @keyframes launchRocket {
            0% {
                bottom: -200px;
                opacity: 0;
            }
            50% {
                opacity: 1;
            }
            100% {
                bottom: 100%;
                opacity: 0;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login</h2>

        <!-- Display message if available -->
        <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
        %>
        <p class="message"><%=message%></p>
        <%
        }
        %>

        <form action="login" method="post" onsubmit="showRocket(event)">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Login" class="btn btn-primary">
            </div>
        </form>

        <a href="home" class="btn btn-link">Back to Home</a>
    </div>

    <!-- Rocket Image -->
    <img id="rocket" src="https://static.vecteezy.com/system/resources/previews/000/549/396/original/thine-line-art-rocket-for-web-icons-ilustration-vector-symbol.jpg" alt="Rocket">

    <script>
        function showRocket(event) {
            event.preventDefault(); // Prevent the form from submitting immediately
            document.getElementById('rocket').style.display = 'block'; // Show the rocket
            setTimeout(function() {
                // Simulate form submission after rocket animation
                event.target.submit();
            }, 2000); // 2-second delay for the rocket animation
        }
    </script>
</body>
</html>
