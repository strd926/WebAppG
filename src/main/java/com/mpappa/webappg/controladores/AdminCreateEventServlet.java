package com.mpappa.webappg.controladores;

import com.mpappa.webappg.models.Event;
import com.mpappa.webappg.repositorio.EventRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/admin/events")
public class AdminCreateEventServlet extends HttpServlet {
    private EventRepository eventRepository = new EventRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        System.out.println("AdminCreateEventServlet: Processing GET request");
        req.getRequestDispatcher("/views/admin/create-event.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        LocalDate date = LocalDate.parse(req.getParameter("date"));
        String location = req.getParameter("location");

        Event event = new Event();
        event.setName(name);
        event.setDate(date);
        event.setLocation(location);

        eventRepository.save(event);
        resp.sendRedirect(req.getContextPath() + "/events");
    }
}