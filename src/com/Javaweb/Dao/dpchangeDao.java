package com.Javaweb.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class dpchangeDao extends baseDao {
    public ResultSet selectLeave(String ID, String oldPosition, String oldDepartment){
        leaveDepartmentDao dao = new leaveDepartmentDao();
        return dao.leaveJob(ID,oldPosition,oldDepartment);
    }
    public boolean forNew(String ID,String newPosition , String newDepartment) throws ParseException, SQLException {
        String sql = "select department_id, position_id from ert_employees where id=" + ID;
        pstat = conn.prepareStatement(sql);
        ResultSet rs = pstat.executeQuery();
        String department_id = "";
        String position_id = "";
        String old_position_name = "";
        String old_department_name = "";
        if (rs.next()) {
            department_id = rs.getString("department_id");
            position_id = rs.getString("position_id");
        }
        if (department_id.isEmpty() || position_id.isEmpty()) {
            return false;
        }
        else {
            sql = "select ert_departments.department_name, ert_positions.position_name from ert_departments,ert_positions where ert_departments.department_id= ? and ert_positions.position_id=?" ;
            List<Object> params = new ArrayList<>();
            params.add(department_id);
            params.add(position_id);
            ResultSet rs2 = sqlSelectUtil(sql, params);
            if (rs2.next()) {
                old_position_name = rs2.getString("position_name");
                old_department_name = rs2.getString("department_name");
            } else {
                return false;
            }
        }
        sql = "update ert_employees set department_id = ?,position_id = ? where id=?";
        List<Object> params = new ArrayList<>();
        params.add(department_id);
        params.add(position_id);
        params.add(ID);
        sqlInsertUtil(sql,params);

        Date date = new Date();
        java.sql.Date sql_date = new java.sql.Date(date.getTime());
        sql = "insert into dept_change (ch_employee_id,ch_dept_source,ch_pos_source,ch_date,ch_dept_destination,ch_pos_destination) values (?,?,?,?,?,?)";
        List<Object> param = new ArrayList<>();
        param.add(ID);
        param.add(old_department_name);
        param.add(old_position_name);
        param.add(sql_date);
        param.add("");
        param.add("");
        return sqlInsertUtil(sql,param);
    }
}
