package com.mpappa.webappg.controladores;

import com.mpappa.webappg.models.User;
import com.mpappa.webappg.repositorio.UserRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
    private UserRepository userRepository = new UserRepository();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = userRepository.findByEmail(email);
        if(user != null && user.getPassword().equals(password)){
            HttpSession session = req.getSession();
            session.setAttribute("auth", true);
            session.setAttribute("userEmail", email);
            session.setAttribute("role", user.getRole());

            Cookie lastLogin = new Cookie("lastLogin", LocalDateTime.now().toString());
            lastLogin.setMaxAge(60 * 60 * 24 * 7); //1 semana
            resp.addCookie(lastLogin);

            resp.sendRedirect("/events");
        } else {
            resp.sendRedirect("/login?err=1");
        }
    }
}