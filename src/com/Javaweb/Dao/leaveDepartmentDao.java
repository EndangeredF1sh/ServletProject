package com.Javaweb.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class leaveDepartmentDao extends baseDao {
    public ResultSet leaveJob(String ID, String oldPosition, String oldDepartment) {
        String sql = "select em.id,em.first_name,em.last_name,em.hire_date,de.department_name,po.position_name from ert_employees as em,ert_positions as po,ert_departments as de where em.department_id = de.department_id and po.position_id = em.position_id";
        System.out.println(ID);
        List<Object> param = new ArrayList<>();
        if (!ID.isEmpty()) {
            sql += " and em.id=? ";
            param.add(ID);
        }
        if (!oldDepartment.isEmpty()) {
            sql += " and de.department_name=? ";
            param.add(oldDepartment);
        }
        if (!oldPosition.isEmpty()) {
            sql += " and po.position_name=? ";
            param.add(oldPosition);
        }
        return sqlSelectUtil(sql, param);
    }

    public boolean deleteJob(String ID) throws ParseException, SQLException {
        String sql = "select department_id, position_id from ert_employees where id=" + ID;
        pstat = conn.prepareStatement(sql);
        ResultSet rs = pstat.executeQuery();
        String department_id = "";
        String position_id = "";
        String position_name = "";
        String department_name = "";
        if (rs.next()) {
            department_id = rs.getString("department_id");
            position_id = rs.getString("position_id");
        }
        if (department_id.isEmpty() || position_id.isEmpty()) {
            return false;
        } else {
            sql = "select ert_departments.department_name, ert_positions.position_name from ert_departments,ert_positions where ert_departments.department_id= ? and ert_positions.position_id=?" ;
            List<Object> params = new ArrayList<>();
            params.add(department_id);
            params.add(position_id);
            ResultSet rs2 = sqlSelectUtil(sql,params);
            if (rs2.next()) {
                position_name = rs2.getString("position_name");
                department_name = rs2.getString("department_name");
            } else {
                return false;
            }
        }
        Date date = new Date();
        java.sql.Date sql_date = new java.sql.Date(date.getTime());
        sql = "insert into dept_change (ch_employee_id,ch_dept_source,ch_pos_source,ch_date,ch_dept_destination,ch_pos_destination) values (?,?,?,?,?,?)";
        List<Object> param = new ArrayList<>();
        param.add(ID);
        param.add(department_name);
        param.add(position_name);
        param.add(sql_date);
        param.add("离职");
        param.add("离职");
        if (sqlInsertUtil(sql, param)) {
            sql = "delete from ert_employees where id=" + ID;
            pstat = conn.prepareStatement(sql);
            return pstat.executeUpdate() == 1;
        }
        return false;
    }
}