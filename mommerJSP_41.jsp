<!-- Taylor Mommer- Assignment Module 4 -->


<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Forms using JSP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1, h2 {
            text-align: center;
        }

        form, table {
            width: 60%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
            cursor: pointer;
        }

        form {
            width: 100%;
            max-width: 600px;
            border: 1px solid black;
            padding: 20px;
            border-radius: 5px;
            background-color: #f9f9f9;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        #button {
            background-color: blue;
            border: none;
            color: white;
            padding: 15px 25px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            margin-top: 10px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="phone"],
        input[type="email"],
        input[type="zip"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        table {
            width: 100%;
            max-width: 600px;
        }

        footer {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
<h1>Module 4 - Taylor Mommer</h1>
<h2>Contact Information Form</h2>

<form action="mommerJSP_41.jsp" method="POST">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" placeholder="Name" required><br>

    <label for="phone">Phone:</label>
    <input type="text" id="phone" pattern="\d{3}-\d{3}-\d{4}" placeholder="123-456-7890" name="phone" required><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" placeholder="Email Address" required><br>


    <!---Zip code label and input. Sets input to max 5 numbers --->
    <label for="zip">Zip Code:</label>
    <input type="text" id="zip" placeholder="Zip code" pattern="\d{5}" inputmode="numeric" maxlength="5" name="zip" required><br>


    <input type="submit" id="button" value="Submit">
</form>

<%
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String zip = request.getParameter("zip");

    if (name != null && phone != null && email != null && zip != null) {
%>

<h2>Submitted Information</h2>
<table>
    <tr>
        <th>Name</th>
        <th>Phone Number</th>
        <th>Email</th>
        <th>Zip Code</th>
    </tr>
    <tr>
        <td><%= name %></td>
        <td><%= phone %></td>
        <td><%= email %></td>
        <td><%= zip %></td>
    </tr>
</table>
<% } %>

<footer>
    <a href="home.html">Return to Homepage</a>
</footer>
</body>
</html>
