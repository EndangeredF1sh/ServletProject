package com.Javaweb.Dao;

import com.Javaweb.Object.departmentChange;
import com.Javaweb.Utils.resultSetToJson;
import org.junit.Test;

import java.sql.SQLException;

public class departmentChangeDaoTest {

    @Test
    public void addDepartmentChange() throws SQLException {
        departmentChange d = new departmentChange();
        d.setCh_employee_id(10004);
        d.setCh_dept_source("部门1");
        d.setCh_dept_destination("部门1");
        d.setCh_pos_source("职位3");
        d.setCh_pos_destination("职位4");
        d.setCh_date("2018-11-4");
        departmentChangeDao dao = new departmentChangeDao();
        dao.addDepartmentChange(d);
        System.out.println(resultSetToJson.resultSetToJsonForString(dao.getAllchangeResults()));
    }
}