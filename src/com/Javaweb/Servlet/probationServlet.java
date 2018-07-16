package com.Javaweb.Servlet;

import com.Javaweb.Dao.prohireChangeDao;
import com.Javaweb.Utils.resultSetToJson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

public class probationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String EID = request.getParameter("ID");
        prohireChangeDao dao = new prohireChangeDao();
        try {
            String JSON = resultSetToJson.resultSetToJsonForString(dao.getprohireSelect(EID));
            System.out.println("转正========" + JSON);
            out.println(JSON);
        } catch (SQLException e) {
            String JSON = "{}";
            out.println(JSON);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String EID = request.getParameter("EID");
        prohireChangeDao dao = new prohireChangeDao();
        String JSON;
        if(dao.deleteProbationForID(EID)){
            JSON = "{\"success\":1}";
        }
        else {
            JSON = "{\"success\":0}";
        }
        out.println(JSON);
    }
}
