package com.Javaweb.Dao;

import com.Javaweb.Object.department;
import org.junit.Test;

public class departmentDaoTest {

    @Test
    public void addDepartment() {
        department d = new department("部门7", 5);
        departmentDao ddao = new departmentDao(d);
    }

    @Test
    public void getDepartmentName() {
        departmentDao ddao = new departmentDao();
        System.out.println(ddao.getDepartmentName(7));
    }
}