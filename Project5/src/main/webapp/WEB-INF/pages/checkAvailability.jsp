<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Availability</title>
</head>
<body>
    <h1>Check Train Availability</h1>
    <form action="${pageContext.request.contextPath}/checkAvailability" method="POST">
        <label for="sourceStation">Source Station:</label>
        <input type="text" id="sourceStation" name="sourceStation" required><br><br>

        <label for="destinationStation">Destination Station:</label>
        <input type="text" id="destinationStation" name="destinationStation" required><br><br>

        <label for="travelDate">Travel Date (YYYY-MM-DD):</label>
        <input type="text" id="travelDate" name="travelDate" required><br><br>

        <button type="submit">Check Availability</button>
    </form>
</body>
</html>
