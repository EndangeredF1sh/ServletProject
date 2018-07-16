package com.Javaweb.Servlet;

import com.Javaweb.Dao.departmentChangeDao;
import com.Javaweb.Utils.resultSetToJson;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

public class changeQueryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String queryID = request.getParameter("ID");
        String queryOldPosition = request.getParameter("old_position");
        String queryOldDepartment = request.getParameter("old_department");
        String queryNewPosition = request.getParameter("new_position");
        String queryNewDepartment = request.getParameter("new_department");
        departmentChangeDao dao = new departmentChangeDao();
        try {
            String JSON = resultSetToJson.resultSetToJsonForString(dao.getParamChangeResults(queryID,queryOldPosition,queryOldDepartment,queryNewPosition,queryNewDepartment));
            out.println(JSON);
            System.out.println(JSON);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
