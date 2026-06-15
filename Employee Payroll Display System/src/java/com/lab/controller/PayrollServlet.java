package com.lab.controller;

import com.lab.bean.Employee;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PayrollServlet", urlPatterns = {"/PayrollServlet"})
public class PayrollServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Employee> list = new ArrayList<>();

        list.add(createEmployee("E001", "Pavitran", "Network Engineer", 4500.00));
        list.add(createEmployee("E002", "Eashenraj", "Data Analyst", 2800.00));
        list.add(createEmployee("E003", "Ariff", "Finance Advisor", 3500.00));
        list.add(createEmployee("E004", "Aeddy", "Sales Executive", 2500.00));
        list.add(createEmployee("E005", "Basheer", "Junior Developer", 3200.00));
        list.add(createEmployee("E006", "Safirul", "Front-End Developer", 3200.00));
        
        
      
        request.setAttribute("employeeList", list);

        request.getRequestDispatcher("payroll_view.jsp").forward(request, response);
    }

    private Employee createEmployee(String id, String name, String dept, double salary) {
        Employee emp = new Employee();
        emp.setEmpId(id);
        emp.setName(name);
        emp.setDepartment(dept);
        emp.setBasicSalary(salary);
        return emp;
    }
}
