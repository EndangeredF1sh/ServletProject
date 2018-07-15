package com.Javaweb.Dao;

import com.Javaweb.Object.employee;
import com.Javaweb.Utils.resultSetToJson;
import org.junit.Test;

import java.sql.SQLException;

public class employeeDaoTest {

    @Test
    public void addEmployee() {
        employee employee = new employee();
        employee.setFirst_name("敏");
        employee.setLast_name("张");
        employee.setBirthday("1980-1-1");
        employee.setEmail("0003a@a.com");
        employee.setPhone_number("13000000007");
        employee.setPassword("1234");
        employee.setGender("女");
        employee.setAddress("中国石油大学胜利学院老年大学");
        employee.setEducation_level("大专");
        employee.setDepartment_id(5);
        employee.setPosition_id(2);
        employee.setHire_date("2005-2-28");
        employee.setSalary(150099.99);
        employeeDao ea = new employeeDao(employee);
        System.out.println("Test success!");
    }

    @Test
    public void getEmployeeResults() throws SQLException {
        employeeDao eao = new employeeDao();
        String JSON = resultSetToJson.resultSetToJsonForString(eao.getEmployeeResults("10007"));
        System.out.println(JSON);
    }

    @Test
    public void getAllEmployeesResults() throws SQLException {
        employeeDao eao = new employeeDao();
        String JSON = resultSetToJson.resultSetToJsonForString(eao.getAllEmployeesResults());
        System.out.println(JSON);
    }

    @Test
    public void setPersonalInfomation() throws SQLException {
        employee e = new employee();
        e.setId(10004);
        e.setLast_name("张");
        e.setFirst_name("敏");
        e.setGender("男");
        e.setBirthday("1988-8-12");
        e.setPhone_number("13000001111");
        e.setEmail("example@example.com");
        e.setEducation_level("高中");
        e.setAddress("示例家庭地址");
        employeeDao d = new employeeDao();
        d.setPersonalInfomation(e);
        String JSON = resultSetToJson.resultSetToJsonForString(d.getEmployeeResults("10004"));
        System.out.println(JSON);
    }

    @Test
    public void getPersonDistribution() throws SQLException {
        employeeDao dao = new employeeDao();
        dao.getPersonDistribution();
    }
}