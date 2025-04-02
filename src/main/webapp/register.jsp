<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register Here</h2>
        <form action="register" method="post">
            <div class="form-group">
                <label for="First name">FName:</label>
                <input type="text" name="First name" required>
            </div>
            <div class="form-group">
                <label for="Sir name">SName:</label>
                <input type="text" name="Sir name" required>
            </div>
            <div class="form-group">
                <label for="Organisation">Organisation:</label>
                <input type="text" name="Organisation" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="password" required>
            </div>
            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
