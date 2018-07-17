package com.Javaweb.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class dpchangeDao extends baseDao {
    public ResultSet selectLeave(String ID, String oldPosition, String oldDepartment){
        leaveDepartmentDao dao = new leaveDepartmentDao();
        return dao.leaveJob(ID,oldPosition,oldDepartment);
    }
    public boolean forNew(String ID,String newPosition , String newDepartment) throws SQLException {
        String sql = "select department_id, position_id from ert_employees where id=" + ID;
        pstat = conn.prepareStatement(sql);
        ResultSet rs = pstat.executeQuery();
        String old_department_id = "";
        String old_position_id = "";
        String new_position_id = "";
        String new_department_id = "";
        String old_department_name = "";
        String old_position_name = "";
        if (rs.next()) {
            old_department_id = rs.getString("department_id");
            old_position_id = rs.getString("position_id");
            sql = "select ert_departments.department_name, ert_positions.position_name from ert_departments,ert_positions where ert_departments.department_id= ? and ert_positions.position_id = ?" ;
            pstat = conn.prepareStatement(sql);
            List<Object> param1 = new ArrayList<>();
            param1.add(old_department_id);
            param1.add(old_position_id);
            ResultSet r = sqlSelectUtil(sql,param1);
            while (r.next()) {
                old_department_name = r.getString("department_name");
                old_position_name = r.getString("position_name");
            }

        }
        if (old_department_id.isEmpty() || old_position_id.isEmpty()) {
            return false;
        }
        else {
            sql = "select ert_departments.department_id, ert_positions.position_id from ert_departments,ert_positions where ert_departments.department_name= ? and ert_positions.position_name=?" ;
            List<Object> params = new ArrayList<>();
            params.add(newDepartment);
            params.add(newPosition);
            ResultSet rs2 = sqlSelectUtil(sql, params);
            if (rs2.next()) {
                new_position_id = rs2.getString("position_id");
                new_department_id = rs2.getString("department_id");
            } else {
                return false;
            }
        }
        sql = "update ert_employees set department_id = ?,position_id = ? where id=?";
        List<Object> params = new ArrayList<>();
        params.add(new_department_id);
        params.add(new_position_id);
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
        param.add(newDepartment);
        param.add(newPosition);
        return sqlInsertUtil(sql,param);
    }
}
