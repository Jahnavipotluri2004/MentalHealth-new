<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.*, com.jfsd_lab.exp_6.model.*"%>

<!DOCTYPE html>
<html>
<head>
    <title>Mood Tracker Summary</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg'); /* Background image */
            background-size: cover; /* Ensures the image covers the full page */
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh; /* Full height to cover the viewport */
            margin: 0;
            padding: 0;
            color: #fff; /* Text color contrasting the background */
        }
        .container {
            background: rgba(255, 255, 255, 0.85); /* Semi-transparent white background for better readability */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 600px;
            margin: 50px auto; /* Center the container */
            color: #333; /* Text color inside the container */
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .mood-emojis {
            text-align: center;
            font-size: 50px;
            margin-bottom: 20px;
        }
        .calendar {
            display: grid;
            grid-template-columns: repeat(7, 1fr); /* 7 columns for 7 days */
            gap: 5px; /* Space between cells */
            margin-top: 20px;
        }
        .day {
            width: 50px;
            height: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .happy {
            background-color: #c6ffcc; /* Light green for happy */
        }
        .sad {
            background-color: #ffcccb; /* Light red for sad */
        }
        .neutral {
            background-color: #add8e6; /* Light blue for neutral */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Mood Tracker Summary for the Last 30 Days</h1>

        <%
            // Sample list to simulate mood tracking over 30 days
            List<String> moodHistory = (List<String>) request.getAttribute("moodHistory");
            if (moodHistory == null) {
                moodHistory = new ArrayList<>(Collections.nCopies(30, "neutral")); // Initialize with neutral mood
            }

            // Count moods
            int happyCount = 0;
            int sadCount = 0;
            for (String mood : moodHistory) {
                if ("happy".equals(mood)) {
                    happyCount++;
                } else if ("sad".equals(mood)) {
                    sadCount++;
                }
            }

            String summaryMessage = "";
            if (happyCount > sadCount) {
                summaryMessage = "You have been happy for " + happyCount + " out of the last 30 days! 😊";
            } else if (sadCount > happyCount) {
                summaryMessage = "You have been sad for " + sadCount + " out of the last 30 days. 😢";
            } else {
                summaryMessage = "You have had an equal number of happy and sad days. 😐";
            }
        %>

        <p><%= summaryMessage %></p>

        <div class="mood-emojis">
            <span class="emoji" title="Happy" style="font-size: 80px;">😊</span>
            <span class="emoji" title="Sad" style="font-size: 80px;">😢</span>
            <span class="emoji" title="Neutral" style="font-size: 80px;">😐</span>
        </div>

        <!-- Calendar -->
        <div class="calendar">
            <%
                // Display the calendar
                for (int i = 0; i < 30; i++) {
                    String mood = moodHistory.get(i);
                    String moodClass = "neutral"; // Default mood
                    if ("happy".equals(mood)) {
                        moodClass = "happy";
                    } else if ("sad".equals(mood)) {
                        moodClass = "sad";
                    }
            %>
            <div class="day <%= moodClass %>">
                <%= 30 - i %> <!-- Display day number (1-30) -->
            </div>
            <%
                }
            %>
        </div>

    </div>
</body>
</html>
