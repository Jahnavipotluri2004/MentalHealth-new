<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mood Swing Suggestions</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://www.turnbridge.com/wp-content/uploads/2023/05/AdobeStock_474018927-scaled.jpeg'); /* Background image */
            background-size: 100% 100%; /* Adjusts the image size to fill the entire background */
            background-position: center; /* Centers the image */
            background-repeat: no-repeat; /* Prevents the image from repeating */
            color: #333; /* Keep the text color for suggestions page content */
            padding: 20px;
            height: 100vh; /* Full height to cover viewport */
        }
        .container {
            background: rgba(255, 255, 255, 0.85); /* Semi-transparent white background for better readability */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 600px;
            margin: 50px auto; /* Center the container both horizontally and vertically */
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
        .emoji {
            cursor: pointer;
            transition: transform 0.2s;
        }
        .emoji:hover {
            transform: scale(1.1); /* Enlarge emoji on hover */
        }
        .suggestions {
            margin-top: 20px;
            color: #007bff;
            font-weight: bold;
        }
        .form-group label {
            color: #333; /* Form label text color */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Mood Swing Tracker</h2>

        <div class="mood-emojis">
            <span class="emoji" onclick="setMood('happy')">😊</span>
            <span class="emoji" onclick="setMood('sad')">😢</span>
            <span class="emoji" onclick="setMood('anxious')">😟</span>
            <span class="emoji" onclick="setMood('angry')">😠</span>
            <span class="emoji" onclick="setMood('stressed')">😩</span>
        </div>

        <form action="mood-suggestion" method="post">
            <input type="hidden" id="mood" name="mood">
            <div class="form-group">
                <label for="details">Any specific thoughts or triggers?</label>
                <textarea id="details" name="details" class="form-control" rows="4"></textarea>
            </div>
            <div class="form-group">
                <input type="submit" value="Get Suggestions" class="btn btn-primary">
            </div>
        </form>

        <div class="suggestions" id="suggestions">
            <h4>Your Suggestions:</h4>
            <p id="suggestionText"></p>
        </div>
    </div>

    <script>
        function setMood(selectedMood) {
            document.getElementById('mood').value = selectedMood; // Set the selected mood
            
            // Get suggestion based on the mood
            let suggestion = "";
            switch (selectedMood) {
                case "happy":
                    suggestion = "Keep up the positivity! 🌟 Keep going!";
                    break;
                case "sad":
                    suggestion = "It's okay to feel sad. 🌈 Try some gentle yoga or a walk in nature.";
                    break;
                case "anxious":
                    suggestion = "Consider meditation or deep breathing exercises. 🧘‍♂️";
                    break;
                case "angry":
                    suggestion = "Try to channel your energy into a workout or listen to calming music. 🎶";
                    break;
                case "stressed":
                    suggestion = "Practice mindfulness meditation or take a break to relax. ☕";
                    break;
                default:
                    suggestion = "Keep exploring ways to improve your mood! 🌻";
            }
            // Update the suggestion text on the page
            document.getElementById('suggestionText').innerText = suggestion;
        }
    </script>
</body>
</html>
