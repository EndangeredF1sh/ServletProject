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
import java.text.ParseException;

public class dpChangeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String EID = request.getParameter("EID");
        String oldDepartment=request.getParameter("oldDepartment");
        String  oldPosition=request.getParameter("oldPosition");
       // String newDepartment=request.getParameter("newDepartment");
        //String  newPosition=request.getParameter("newPosition");
        dpchangeDao dao=new dpchangeDao();
        try {
            String JSON = resultSetToJson.resultSetToJsonForString(dao.selectLeave(EID,oldDepartment,oldPosition));
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
        String newDepartment=request.getParameter("newDepartment");
        String newPosition=request.getParameter("newPosition");
        dpchangeDao dao = new dpchangeDao();
        String JSON ;
        try {
            if(dao.forNew(EID,newDepartment,newPosition)){
                JSON = "{\"success\":1}";
                out.println(JSON);
            }
            else {
                JSON = "{\"success\":0}";
                out.println(JSON);
            }
        } catch (ParseException | SQLException e) {
            e.printStackTrace();
        }
        // out.println(JSON);
    }
    }

