package com.Javaweb.Servlet;

import com.Javaweb.Dao.dpchangeDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "dpChangeResultServlet")
public class dpChangeResultServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String EID = request.getParameter("EID");
        String newDepartment=request.getParameter("Enew_department");
        String newPosition=request.getParameter("Enew_position");
        dpchangeDao dao = new dpchangeDao();
        String JSON ;
        try {
            if(dao.forNew(EID,newPosition,newDepartment)){
                JSON = "{\"success\":1}";
                out.println(JSON);
            }
            else {
                JSON = "{\"success\":0}";
                out.println(JSON);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
