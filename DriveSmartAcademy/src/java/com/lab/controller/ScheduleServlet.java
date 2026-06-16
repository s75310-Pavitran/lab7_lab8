
package com.lab.controller;

import com.lab.dao.SessionDAO;
import com.lab.bean.Sessionbean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ScheduleServlet")
public class ScheduleServlet extends HttpServlet {
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SessionDAO dao = new SessionDAO();
        List<Sessionbean> list = dao.getAllSessions();

        request.setAttribute("sessionList", list);

        request.getRequestDispatcher("/schedule.jsp").forward(request, response);
    }
}






   


