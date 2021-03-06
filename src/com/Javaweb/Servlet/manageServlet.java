package com.Javaweb.Servlet;

import com.Javaweb.Dao.employeeDao;
import com.Javaweb.Utils.resultSetToJson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(value = "/management")
public class manageServlet extends HttpServlet {
    private String savedEID;
    private boolean isLogin = false;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        request.setCharacterEncoding("UTF-8");
        String employee_id = request.getParameter("employee_id");
        // 安全性验证
        HttpSession session = request.getSession(false);
        try {
            savedEID = (String) session.getAttribute("employee_id");
            if(session.isNew()){
                isLogin = false;
            } else{
                isLogin = savedEID.equals(employee_id);
            }
        }catch (NullPointerException e){
            isLogin = false;
            response.sendRedirect("/Javaweb");
        }
        if(isLogin){
            request.setAttribute("EID", savedEID);
            request.getRequestDispatcher("/ert/index.jsp").forward(request,response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String jsonInString = "{}";
        PrintWriter out = response.getWriter();
        employeeDao edao = new employeeDao();
        HttpSession session = request.getSession(false);
        try{
            savedEID = (String)session.getAttribute("employee_id");
        }catch (NullPointerException e){
            out.println("{\"redirect\":1}");
            return;
        }
        if(savedEID == null){
            out.println("{\"redirect\":1}");
            return;
        }
        // 返回员工个人信息(JSON)
        String employee_id = request.getParameter("EID");
        System.out.println("savedEID="+employee_id);
        if(savedEID.equals(employee_id)){
            try {
                jsonInString = resultSetToJson.resultSetToJsonForString(edao.getEmployeeResults(savedEID));
                out.println(jsonInString);
                System.out.println(jsonInString);
            } catch (SQLException e) {
                out.println("failed!");
                e.printStackTrace();
            }
        }
        else {
            out.println("{\"redirect\":1}");
        }
    }
}
