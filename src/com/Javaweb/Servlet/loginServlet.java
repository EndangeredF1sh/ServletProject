package com.Javaweb.Servlet;

import com.Javaweb.Dao.employeeDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/login")
public class loginServlet extends HttpServlet {
    private String message;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        String employee_id = request.getParameter("employee_id");
        String password_hash_input = request.getParameter("password");
        employeeDao e = new employeeDao();
        if(e.employeePasswordVerification(employee_id, password_hash_input)){
            message = "{\"user_id\":"+employee_id+",\"success\":1}";
            // session 安全性验证
            HttpSession session = request.getSession(true);
            String userIDKey = "employee_id";
            String sessionIDKey = "sessionIDKey";
            if(session.isNew()){
                session.setAttribute(userIDKey, employee_id);
                session.setAttribute(sessionIDKey, session.getId());
            }
            else{
                session.invalidate();
                session = request.getSession(true);
                session.setAttribute(userIDKey, employee_id);
                session.setAttribute(sessionIDKey, session.getId());
            }
        }
        else{
            message = "{\"user_id\":"+employee_id+",\"success\":0}";
        }
        PrintWriter out = response.getWriter();
        out.println(message);
        System.out.println(password_hash_input);
        System.out.println(message);
//        String cla = request.getParameter("cla");
//        String sex = request.getParameter("sex");
//        String age = request.getParameter("age");
//        Student student = new Student();
//        student.setAge(Integer.parseInt(age));
//        student.setCla(cla);
//        student.setName(name);
//        student.setSex(sex);
//        com.Javaweb.Dao.employeeDao studentAdd = new com.Javaweb.Dao.employeeDao();
//        studentAdd.addEmpolyeeComplete(student);
    }
}
