package com.Javaweb.Dao;

import com.Javaweb.Object.departmentChange;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class departmentChangeDao extends baseDao {
    public departmentChangeDao(){
    }
    public departmentChangeDao(departmentChange d){
        addDepartmentChange(d);
    }
    public boolean addDepartmentChange(departmentChange d){
        String sql = "insert into dept_change values (?,?,?,?,?,?)";
        List<Object> param = new ArrayList<>();
        param.add(d.getCh_employee_id());
        param.add(d.getCh_dept_source());
        param.add(d.getCh_dept_destination());
        param.add(d.getCh_pos_source());
        param.add(d.getCh_pos_destination());
        param.add(d.getCh_date());
        return sqlInsertUtil(sql,param);
    }
    public ResultSet getAllchangeResults() throws SQLException {
        String sql = "select * from dept_change";
        pstat = conn.prepareStatement(sql);
        return pstat.executeQuery();
    }
    public ResultSet getParamChangeResults(String ID, String oldPosition, String oldDepartment, String newPosition, String newDepartment){
        String sql = "select dept_change.*, ert_employees.last_name, ert_employees.first_name from dept_change,ert_employees where ert_employees.id=dept_change.ch_employee_id ";
        List<Object> param = new ArrayList<>();
        if(!ID.isEmpty()){
            sql += "and ch_employee_id = ? ";
            param.add(ID);
        }
        if(!oldDepartment.isEmpty()){
            sql += "and ch_dept_source = ? ";
            param.add(oldDepartment);
        }
        if(!newDepartment.isEmpty()){
            sql += "and ch_dept_destination = ? ";
            param.add(newDepartment);
        }
        if(!oldPosition.isEmpty()){
            sql += "and ch_pos_source = ? ";
            param.add(oldPosition);
        }
        if(!newPosition.isEmpty()){
            sql += "and ch_pos_destination = ? ";
            param.add(newPosition);
        }
        return sqlSelectUtil(sql,param);
    }
}
