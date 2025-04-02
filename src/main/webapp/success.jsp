<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
            color: #721c24;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            font-size: 2em;
        }

.back-button {
    margin-top: 20px;
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    text-decoration: none;
    display: inline-block;
}
        .back-button:hover {
        margin-top: 20px;
            background-color: #f8d7da;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Oops! Something went wrong.</h1>
        <p>We encountered an unexpected error. Please try again later.</p>



        <a href="index.jsp" class="back-button">Go Back to Homepage</a>
    </div>
</body>
</html>
