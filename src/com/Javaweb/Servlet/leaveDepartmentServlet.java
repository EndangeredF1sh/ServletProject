package com.Javaweb.Servlet;

import com.Javaweb.Dao.leaveDepartmentDao;
import com.Javaweb.Utils.resultSetToJson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;

public class leaveDepartmentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String EID = request.getParameter("ID");
        String position = request.getParameter("new_position");
        String department = request.getParameter("new_department");
        leaveDepartmentDao dao=new leaveDepartmentDao();
        try {
            String JSON = resultSetToJson.resultSetToJsonForString(dao.leaveJob(EID,position,department));
            System.out.println(JSON);
            out.println(JSON);
        } catch (SQLException e) {
            String JSON = "{}";
            out.println(JSON);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String EID = request.getParameter("EID");
        leaveDepartmentDao dao = new leaveDepartmentDao();
        String JSON = "{}";
        try {
            if(dao.deleteJob(EID)){
                JSON = "{\"success\":1}";
                out.println(JSON);
            }
            else {
                JSON = "{\"success\":0}";
                out.println(JSON);
            }
        } catch (ParseException | SQLException e) {
            out.println(JSON);
            e.printStackTrace();
        }
    }
}
