<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registered Students</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registered Students</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Organisation</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Connection conn = Database.getConnection();
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM users");
                    while (rs.next()) {
                        out.println("<tr><td>" + rs.getInt("id") + "</td><td>" + rs.getString("Fname") + "</td><td>" + rs.getString("Sname") + "</td><td>" + rs.getString("Organisation") + "</td><td>" + rs.getString("email") + "</td></tr>");
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
