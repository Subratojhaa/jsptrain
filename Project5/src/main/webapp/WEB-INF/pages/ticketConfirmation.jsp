<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket Confirmation</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ticketConfirmation.css">
    
</head>
<body>
    <h1>Ticket Booking Confirmation</h1>
    <p><strong>Booking Reference Number:</strong> ${ticket.bookingReferenceNumber}</p>
    <p><strong>From Station:</strong> ${ticket.fromStation}</p>
    <p><strong>To Station:</strong> ${ticket.toStation}</p>
    <p><strong>Passenger Name:</strong> ${ticket.passengerName}</p>
    <p><strong>Number of Tickets:</strong> ${ticket.noOfTickets}</p>
    <p><strong>Travel Date:</strong> ${ticket.travelDate}</p>
    <a href="/Project5">Go to Home Page</a>
</body>
</html>
