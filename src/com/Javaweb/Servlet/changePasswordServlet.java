package com.Javaweb.Servlet;

import com.Javaweb.Dao.employeeDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

public class changePasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String EID = request.getParameter("EID");
        String oldPassword = request.getParameter("old");
        String newPassword = request.getParameter("new");
        employeeDao dao = new employeeDao();
        boolean status;
        try {
            if(dao.setNewPassword(EID,oldPassword,newPassword)){
                out.println("{\"success\":1}");
            }
            else{
                out.println("{\"success\":0}");
            }
        } catch (SQLException e) {
            out.println("{\"success\":0}");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
