package com.Javaweb.Dao;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class prohireChangeDao extends baseDao {
    public prohireChangeDao(){
    }


    public ResultSet getprohireSelect(String ID){
        String sql="select last_name, first_name from ert_employees where id in(select pro_employee_id from probation_info)";
        List<Object> param=new ArrayList<>();
        if(!ID.isEmpty())
        {sql+="and ert_employees.id=?";
            param.add(ID);}
        return  sqlSelectUtil(sql,param);

    }
    public boolean deleteProbationForID(String ID){
        String sql="delete from probation_info where pro_employee_id=?";
        List<Object> param=new ArrayList<>();
                if(!ID.isEmpty())
                {
                    param.add(ID);
                }
                else{
                    return false;
                }
                return sqlInsertUtil(sql,param);
    }
}
