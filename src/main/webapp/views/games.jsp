<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mental Relief Game</title>
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
        .question {
            font-size: 18px;
            margin: 20px 0;
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
        .result {
            font-size: 20px;
            text-align: center;
            margin-top: 20px;
        }
        .funny-message {
            font-weight: bold;
            color: #ff4757;
        }
    </style>
    <script>
        let score = 0;
        let currentQuestion = 0;

        const questions = [
            {
                question: "If you were a fruit, which one would you be?",
                options: [
                    "An apple - crisp and classic",
                    "A banana - always peelin' good!",
                    "A watermelon - sweet and refreshing",
                    "A durian - I’m an acquired taste!"
                ],
                answer: 1 // Correct answer is banana
            },
            {
                question: "What's your go-to dance move when nobody's watching?",
                options: [
                    "The Robot - beep boop!",
                    "The Worm - perfect for tight spaces",
                    "The Floss - always a winner!",
                    "The Chicken Dance - cluckin' good times!"
                ],
                answer: 0 // Correct answer is The Robot
            },
            {
                question: "If you could have any superpower, what would it be?",
                options: [
                    "Invisibility - just to sneak snacks!",
                    "Flying - who needs a plane?",
                    "Teleportation - no traffic jams!",
                    "Talking to animals - they have the best gossip!"
                ],
                answer: 2 // Correct answer is Teleportation
            }
        ];

        function loadQuestion() {
            const questionContainer = document.getElementById("question");
            const optionsContainer = document.getElementById("options");
            const current = questions[currentQuestion];

            questionContainer.innerText = current.question;
            optionsContainer.innerHTML = "";

            current.options.forEach((option, index) => {
                const button = document.createElement("button");
                button.classList.add("btn");
                button.innerText = option;
                button.onclick = () => checkAnswer(index);
                optionsContainer.appendChild(button);
            });
        }

        function checkAnswer(index) {
            if (index === questions[currentQuestion].answer) {
                score++;
            }

            currentQuestion++;
            if (currentQuestion < questions.length) {
                loadQuestion();
            } else {
                showResult();
            }
        }

        function showResult() {
            const questionContainer = document.getElementById("question");
            const optionsContainer = document.getElementById("options");
            questionContainer.innerHTML = "";
            optionsContainer.innerHTML = "";

            let resultMessage;
            if (score === questions.length) {
                resultMessage = `You scored ${score} out of ${questions.length}! 🎉 You're a quiz wizard!`;
            } else if (score === questions.length - 1) {
                resultMessage = `You scored ${score} out of ${questions.length}! Almost perfect! You must be a genius in disguise! 🧙‍♂️`;
            } else {
                resultMessage = `You scored ${score} out of ${questions.length}! Not bad! Remember, the real treasure is the fun we had! 💎`;
            }

            const resultDiv = document.createElement("div");
            resultDiv.classList.add("result");
            resultDiv.innerHTML = `<span class="funny-message">${resultMessage}</span>`;
            optionsContainer.appendChild(resultDiv);
        }

        window.onload = loadQuestion;
    </script>
</head>
<body>
    <div class="overlay"></div>
    <div class="container">
        <h1>Mental Relief Quiz Game</h1>
        <div id="question" class="question"></div>
        <div id="options"></div>
    </div>
</body>
</html>
