package com.Javaweb.Dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class prohireChangeDao extends baseDao {
    public prohireChangeDao(){
    }


    public ResultSet getprohireSelect(String ID){
        String sql="select em.id,em.first_name,em.last_name,shi.pro_start_date,de.department_name,po.position_name from ert_employees as em,ert_positions as po,ert_departments as de,probation_info as shi where em.id=shi.pro_employee_id and em.position_id=po.position_id and em.department_id=de.department_id ";
        List<Object> param=new ArrayList<>();
        if(!ID.isEmpty()){
            sql+= " and em.id=? ";
            param.add(ID);
        }
        ResultSet rs = sqlSelectUtil(sql,param);
        return rs;
    }
    public boolean deleteProbationForID(String ID) throws SQLException {
        String sql="delete from probation_info where pro_employee_id=? ";
        List<Object> param=new ArrayList<>();
            if(!ID.isEmpty())
            {
                param.add(ID);
            }
            else{
                return false;
            }
            boolean res = sqlInsertUtil(sql,param);
            return res;
    }
}
