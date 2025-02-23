# mini-project
this is a miniproject on gamification in the learning space. it aims to improve motiovation and focus in students while studying.
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GEMS - Gamified Education Management System</title>
    <link rel="stylesheet" href="styles.css">
    <script src="script.js" defer></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #ff9966, #ff5e62);
            color: white;
            text-align: center;
        }
        header {
            background: rgba(0, 0, 0, 0.8);
            padding: 20px;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
        }
        .logo {
            font-size: 24px;
            font-weight: bold;
        }
        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
        }
        nav ul li {
            margin: 0 15px;
        }
        nav ul li a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            font-weight: bold;
        }
        .quiz-section {
            padding: 50px;
            background: rgba(0, 0, 0, 0.6);
            margin: 20px;
            border-radius: 10px;
        }
        .quiz {
            margin-bottom: 20px;
            background: rgba(255, 255, 255, 0.2);
            padding: 15px;
            border-radius: 10px;
            transition: transform 0.3s;
        }
        .quiz:hover {
            transform: scale(1.05);
        }
        .quiz h3 {
            margin-bottom: 10px;
        }
        .quiz label {
            display: block;
            margin: 5px 0;
            cursor: pointer;
        }
        button {
            background: #ff5e62;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 18px;
            border-radius: 5px;
            transition: background 0.3s;
        }
        button:hover {
            background: #ff9966;
        }
        footer {
            background: rgba(0, 0, 0, 0.8);
            padding: 20px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">GEMS</div>
        <nav>
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#features">Features</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#quizzes">Quizzes</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="#login">Login</a></li>
            </ul>
        </nav>
    </header>
    
    <section id="quizzes" class="quiz-section">
        <h2>Quizzes</h2>
        <div class="quiz">
            <h3>Computer Engineering Quiz</h3>
            <label><input type="radio" name="ce_q1"> Central Processing Unit</label>
            <label><input type="radio" name="ce_q1"> Central Process Utility</label>
            <label><input type="radio" name="ce_q1"> Core Processing Unit</label>
        </div>
        <div class="quiz">
            <h3>Information Technology Quiz</h3>
            <label><input type="radio" name="it_q1"> MySQL</label>
            <label><input type="radio" name="it_q1"> MongoDB</label>
            <label><input type="radio" name="it_q1"> Redis</label>
        </div>
        <div class="quiz">
            <h3>Data Science Quiz</h3>
            <label><input type="radio" name="ds_q1"> Not a Number</label>
            <label><input type="radio" name="ds_q1"> Null and None</label>
            <label><input type="radio" name="ds_q1"> Numeric Approximation Notation</label>
        </div>
        <button onclick="submitQuiz()">Submit Answers</button>
    </section>
    
    <footer>
        <p>&copy; 2025 GEMS. All Rights Reserved.</p>
    </footer>

    <script>
        function submitQuiz() {
            alert("Your answers have been submitted! Keep learning and improving.");
        }
    </script>
</body>
</html>
