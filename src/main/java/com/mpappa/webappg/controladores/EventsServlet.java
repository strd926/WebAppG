package com.mpappa.webappg.controladores;

import com.mpappa.webappg.repositorio.EventRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/events")
public class EventsServlet extends HttpServlet {
    private EventRepository eventRepository = new EventRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.setAttribute("events", eventRepository.findAll());
        req.getRequestDispatcher("/views/events.jsp").forward(req, resp);
    }
}
