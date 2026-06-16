package com.lab.controller;

import com.lab.dao.SessionDAO;
import com.lab.bean.Sessionbean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/BookSessionServlet")
public class BookSessionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String studentName = request.getParameter("student_name");
        String branchLocation = request.getParameter("branch_location");
        String lessonType = request.getParameter("lesson_type");

        Sessionbean session = new Sessionbean();
        session.setStudent_name(studentName);
        session.setBranch_location(branchLocation);
        session.setLesson_type(lessonType);
        session.setStatus("Booked");

        SessionDAO dao = new SessionDAO();
        boolean ok = dao.bookSession(session);

        if (ok) {
            response.sendRedirect(request.getContextPath() + "/ScheduleServlet");
        } else {

            response.sendRedirect(request.getContextPath() + "/ScheduleServlet");
        }
        
    
    }
}
