package com.Javaweb.Servlet;

import com.Javaweb.Dao.employeeDao;
import com.Javaweb.Object.employee;
import com.Javaweb.Utils.resultSetToJson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

// 本类的url定义在web.xml 使用注解无效，原因未明。 url为/changePersonalInfoServlet
public class changePersonalInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        PrintWriter out = response.getWriter();
        request.setCharacterEncoding("UTF-8");
        employee e = new employee();
        String id = request.getParameter("id");
        e.setId(Integer.parseInt(id));
        e.setFirst_name(request.getParameter("first_name"));
        e.setLast_name(request.getParameter("last_name"));
        e.setGender(request.getParameter("gender"));
        e.setBirthday(request.getParameter("birthday"));
        e.setPhone_number(request.getParameter("phone_number"));
        e.setEmail(request.getParameter("email"));
        e.setEducation_level(request.getParameter("education_level"));
        e.setAddress(request.getParameter("address"));
        employeeDao dao = new employeeDao();
        dao.setPersonalInfomation(e);
        try {
            String JSON = resultSetToJson.resultSetToJsonForString(dao.getEmployeeResults(id));
            out.println(JSON);
            System.out.println(JSON);
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
