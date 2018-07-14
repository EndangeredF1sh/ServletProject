package com.Javaweb.Dao;

import com.Javaweb.Object.career;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class careerDao extends baseDao {
    careerDao(){}
    careerDao(career c){
        addCareer(c);
    }
    public boolean addCareer(career c){
        String sql = "insert into ert_career (employee_id,start_time,end_time,company) values (?,?,?,?)";
        int employee_id = c.getEmployee_id();
        String start_time = c.getStart_time();
        String end_time = c.getEnd_Time();
        String company = c.getCompany();
        List<Object> list = new ArrayList<>();
        list.add(employee_id);
        list.add(start_time);
        list.add(end_time);
        list.add(company);
        return sqlInsertUtil(sql,list);
    }

    public ResultSet getCareerByID(int EID){
        String sql = "select * from ert_career where employee_id = ?";
        List<Object> list = new ArrayList<>();
        list.add(EID);
        return sqlSelectUtil(sql,list);
    }
}
