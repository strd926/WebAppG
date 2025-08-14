package com.mpappa.webappg.controladores;

import com.mpappa.webappg.repositorio.EventRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/admin/delete-event")
public class AdminDeleteEventServlet extends HttpServlet {
    private EventRepository eventRepository = new EventRepository();

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int id = Integer.parseInt(req.getParameter("id"));
        eventRepository.deleteById(id);
        resp.sendRedirect(req.getContextPath() + "/events");
    }
}