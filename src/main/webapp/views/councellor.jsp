<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Counselor Support</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            color: #fff;
            margin: 0;
            padding: 0;
        }
        .overlay {
            background: rgba(0, 0, 0, 0.6);
            height: 100%;
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
        }
        .container {
            position: relative;
            z-index: 2;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 30px;
            max-width: 600px;
            margin: 100px auto;
            color: #333;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        p {
            font-size: 18px;
            line-height: 1.6;
            text-align: center;
        }
        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 18px;
            text-transform: uppercase;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            margin-top: 20px;
            text-align: center;
            transition: background 0.3s ease;
        }
        .btn:hover {
            background-color: #218838;
        }
        .counselor-card {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .counselor-card img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-right: 20px;
        }
        .counselor-card h3 {
            margin: 0;
            font-size: 20px;
            color: #333;
        }
        .counselor-card p {
            margin: 5px 0 0;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="container">
        <h1>Talk to a Counselor</h1>
        <p>Our counselors are here to help you through any challenges you may be facing. Whether it's stress, anxiety, or anything else, don't hesitate to reach out.</p>

        <div class="counselor-card">
            <img src="https://img.freepik.com/premium-photo/beautiful-smiling-female-doctor-stand-office_151013-12509.jpg?w=2000" alt="Dr. Sarah Thompson">
            <div>
                <h3>Dr. Sarah Thompson</h3>
                <p>Specialist in Student Mental Health</p>
            </div>
        </div>

        <div class="counselor-card">
            <img src="https://img.freepik.com/premium-photo/man-with-stethoscope-around-his-neck-stands-front-monitor_1253888-288.jpg" alt="Dr. John Smith">
            <div>
                <h3>Dr. John Smith</h3>
                <p>Psychologist, Stress and Anxiety Expert</p>
            </div>
        </div>

        <a href="/book-session" class="btn">Book a Session</a>
    </div>
</body>
</html>
