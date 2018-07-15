package com.Javaweb.Servlet;

import com.Javaweb.Dao.WeightGetDao;
import com.Javaweb.Object.departmentWeight;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

public class DeptWeightServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        JSONArray arr = new JSONArray();
        try {
            ArrayList<departmentWeight> list = WeightGetDao.GetWight();
            arr = new JSONArray();
            for (departmentWeight v:list) {
                JSONObject o = new JSONObject();
                o.put("name",v.getName());
                JSONObject ino = new JSONObject();
                ino.put("id", v.getId());
                ino.put("relate",v.getRelate());
                ino.put("weight",v.getWeight());
                o.put("info",ino);
                arr.add(o);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String JSON;
        if(arr.isEmpty()){
            JSON = "{}";
        }
        else{
            JSON = arr.toJSONString();
        }
        out.println(JSON);
    }
}
