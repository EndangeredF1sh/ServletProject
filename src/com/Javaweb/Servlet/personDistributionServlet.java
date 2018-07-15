package com.Javaweb.Servlet;

import com.Javaweb.Dao.employeeDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

public class personDistributionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        employeeDao dao = new employeeDao();
        try {
            out.println(dao.getPersonDistribution());
        } catch (SQLException e) {
            out.println("{}");
        }
    }
}
