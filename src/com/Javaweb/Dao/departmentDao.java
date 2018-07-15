package com.Javaweb.Dao;

import com.Javaweb.Object.department;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class departmentDao extends baseDao{
    public departmentDao(){
    }
    public departmentDao(department d){
        addDepartment(d);
    }
    public boolean addDepartment(department d){
        String department_name = d.getDepartment_name();
        int superior_department_id = d.getSuperior_department_id();
        String sql = "insert into ert_departments (department_name, superior_department_id) values (?,?)";
        List<Object> list = new ArrayList<>();
        list.add(department_name);
        list.add(superior_department_id);
        return sqlInsertUtil(sql,list);
    }

    public String getDepartmentName(int DID){
        String sql = "select department_name from ert_departments where department_id = ?";
        try{
            List<Object> list = new ArrayList<>();
            list.add(DID);
            ResultSet rs = sqlSelectUtil(sql,list);
            if(rs.next()){
                return rs.getString("department_name");
            }
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }
        return null;
    }
    public ResultSet getAllDepartmentInfo(){
        String sql = "select * from ert_departments";
        try{
            pstat = conn.prepareStatement(sql);
            return pstat.executeQuery();
        }catch (SQLException e){
            return null;
        }
    }
}
