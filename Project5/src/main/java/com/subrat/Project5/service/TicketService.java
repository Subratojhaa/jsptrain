package com.subrat.Project5.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.subrat.Project5.model.Ticket;
import com.subrat.Project5.repository.TicketRepository;

@Service
public class TicketService {


    @Autowired
    private TicketRepository ticketRepository;

    public Ticket bookTicket(String fromStation, String toStation, String passengerName, int noOfTickets, String travelDate) {
        // Generate a booking reference number (this could be more complex)
        String bookingReferenceNumber = "TICKET-" + System.currentTimeMillis();

        Ticket ticket = new Ticket();
        ticket.setFromStation(fromStation);
        ticket.setToStation(toStation);
        ticket.setPassengerName(passengerName);
        ticket.setNoOfTickets(noOfTickets);
        ticket.setTravelDate(travelDate);
        ticket.setBookingReferenceNumber(bookingReferenceNumber);

        // Save ticket in database
        return ticketRepository.save(ticket);
    }
    
    // Logic for checking availability
    public String checkAvailability(String fromStation, String toStation, String travelDate) {
        // Here you should ideally query your database to get available tickets
        List<Ticket> tickets = ticketRepository.findByFromStationAndToStationAndTravelDate(fromStation, toStation, travelDate);

        if (tickets.isEmpty()) {
            return "No available tickets for this route on the given date.";
        } else {
            return "Tickets are available for this route.";
        }
    }
    
    
    public Ticket getTicketByReferenceNumber(String bookingReferenceNumber) {
        return ticketRepository.findByBookingReferenceNumber(bookingReferenceNumber);
    }
}