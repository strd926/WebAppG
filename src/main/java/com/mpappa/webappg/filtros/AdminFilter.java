package com.mpappa.webappg.filtros;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter("/admin/*")
public class AdminFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException{
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession(false);

        String role = (String) session.getAttribute("role");
        if(session == null || !"ADMIN".equals(role)){
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "Acceso Denegado");
        } else {
            chain.doFilter(request, response);
        }
    }

}