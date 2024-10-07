<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>User Dashboard</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: white;
            margin: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.6);
            width: 100%;
            position: absolute;
            top: 0;
        }
        .header h1 {
            margin: 0;
        }
        .nav-links {
            display: flex;
        }
        .nav-links a {
            margin-left: 20px;
            color: white;
            text-decoration: none;
        }
        .nav-links a:hover {
            text-decoration: underline;
        }
        .container {
            text-align: center;
            padding: 60px;
            background-color: rgba(0, 0, 0, 0.8);
            border-radius: 10px;
            margin: 100px auto;
            max-width: 700px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .btn {
            margin: 15px;
            padding: 12px 24px;
            background-color: rgba(0, 123, 255, 0.9);
            color: white;
            text-decoration: none;
            border-radius: 6px;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: rgba(0, 123, 255, 1);
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>ChillAx</h1>
        <nav class="nav-links">
            <a href="<%=request.getContextPath()%>/home">Get to home</a>
            <a href="<%=request.getContextPath()%>/about-us">Know About Us</a>
            <a href="<%=request.getContextPath()%>/councellor">Doctor Is there</a>
             <a href="<%=request.getContextPath()%>/read-buy">BRO READ IT</a>
             <a href="<%=request.getContextPath()%>/games">Games</a>
             
            <a href="<%=request.getContextPath()%>/logout">Logout</a>
            
        </nav>
    </div>

    <div class="container">
        <h2>Welcome to Your Dashboard</h2>

        <%
            // Retrieve the user object and message from the request scope
            com.jfsd_lab.exp_6.model.User user = (com.jfsd_lab.exp_6.model.User) request.getAttribute("user");
            String message = (String) request.getAttribute("message");

            if (message != null) {
        %>
            <p class="alert alert-info"><%= message %></p>
        <%
            }
        %>

        <p>
            Hello, <%= (user != null) ? user.getUsername() : "Guest" %>! You have successfully logged in.
        </p>

        <a href="register-events" class="btn">View Your Schedule</a>
        <a href="registered-events" class="btn">See Monthly Overview</a>
       
    </div>
</body>
</html>
