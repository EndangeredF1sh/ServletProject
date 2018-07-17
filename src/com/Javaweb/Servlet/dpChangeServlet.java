package com.Javaweb.Servlet;

import com.Javaweb.Dao.dpchangeDao;
import com.Javaweb.Utils.resultSetToJson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

public class dpChangeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String EID = request.getParameter("ID");
        String oldDepartment=request.getParameter("new_department");
        String  oldPosition=request.getParameter("new_position");
       // String newDepartment=request.getParameter("newDepartment");
        //String  newPosition=request.getParameter("newPosition");
        dpchangeDao dao=new dpchangeDao();
        try {
            String JSON = resultSetToJson.resultSetToJsonForString(dao.selectLeave(EID,oldPosition,oldDepartment));
            System.out.println(JSON);
            out.println(JSON);
        } catch (SQLException e) {
            String JSON = "{}";
            out.println(JSON);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}

