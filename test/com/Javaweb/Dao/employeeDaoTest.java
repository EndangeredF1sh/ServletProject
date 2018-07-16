package com.Javaweb.Dao;

import com.Javaweb.Object.employee;
import com.Javaweb.Utils.resultSetToJson;
import org.junit.Test;

import java.math.BigInteger;
import java.sql.SQLException;
import java.util.Random;

public class employeeDaoTest {
    /** 产生一个随机的字符串*/
    public static String RandomString(int length) {
        String str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        Random random = new Random();
        StringBuffer buf = new StringBuffer();
        for (int i = 0; i < length; i++) {
            int num = random.nextInt(62);
            buf.append(str.charAt(num));
        }
        return buf.toString();
    }

    @Test
    public void addEmployee() {
        BigInteger p = new BigInteger("13031040002");
        BigInteger o = new BigInteger("1");
        for(int i=0;i<300;i++){
            Random r = new Random();
            String email = RandomString(10).toString() + "@" + RandomString(7) + ".com";
            employee employee = new employee();
            employee.setFirst_name("敏");
            employee.setLast_name("张");
            employee.setBirthday("1980-1-1");
            employee.setEmail(email);
            employee.setPhone_number(p.toString());
            employee.setPassword("0123456789");
            employee.setGender("女");
            employee.setAddress("中国石油大学胜利学院老年大学");
            employee.setEducation_level("大专");
            employee.setDepartment_id((int)(r.nextDouble()*1000 % 8 + 1));
            employee.setPosition_id((int)(r.nextDouble()*1000 % 4 + 1));
            employee.setHire_date("2005-2-28");
            employee.setSalary(r.nextDouble()*100000 % 27000);
            employeeDao ea = new employeeDao(employee);
            p = p.add(o);
        }
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