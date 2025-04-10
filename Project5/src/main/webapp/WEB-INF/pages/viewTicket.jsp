<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Ticket</title>
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/viewTicket.css">
</head>
<body>
    <h1>View Ticket</h1>
    
    <!-- Form to enter the booking reference number -->
    <form action="${pageContext.request.contextPath}/checkTicket" method="POST">
        <label for="bookingReferenceNumber">Enter Booking Reference Number:</label>
        <input type="text" id="bookingReferenceNumber" name="bookingReferenceNumber" required><br><br>
        
        <button type="submit">Check Ticket</button>
    </form>
    
    <c:if test="${not empty message}">
          <p style="color: red;"><strong>${message}</strong></p>
    </c:if>
    

    <c:if test="${not empty ticket}">
        <h2>Ticket Details</h2>
        <p><strong>Booking Reference Number:</strong> ${ticket.bookingReferenceNumber}</p>
        <p><strong>From Station:</strong> ${ticket.fromStation}</p>
        <p><strong>To Station:</strong> ${ticket.toStation}</p>
        <p><strong>Passenger Name:</strong> ${ticket.passengerName}</p>
        <p><strong>Number of Tickets:</strong> ${ticket.noOfTickets}</p>
        <p><strong>Travel Date:</strong> ${ticket.travelDate}</p>
    </c:if>
    
    <a href="/Project5">Go to Home Page</a>
</body>
</html>
