package com.Javaweb.Dao;

import com.Javaweb.Object.employee;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class employeeDao extends baseDao{
    public employeeDao(employee employeeRegister){
        addEmpolyeeComplete(employeeRegister);
    }
    public employeeDao(){
    }
    public boolean employeePasswordVerification(String id,String md5){
        String sql = "select password_hash from ert_employees where id = ?";
        try{
            pstat=conn.prepareStatement(sql);
            pstat.setString(1, id);
            ResultSet rs = pstat.executeQuery();
            if(rs.next()){
                String md5_server = rs.getString("password_hash");
                return md5_server.equals(md5);
            }
            else{
                return false;
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }
    public boolean addEmpolyeeComplete(employee employeeRegister) {
        String first_name = employeeRegister.getFirst_name();
        String last_name = employeeRegister.getLast_name();
        String birthday = employeeRegister.getBirthday();
        String email = employeeRegister.getEmail();
        String phone_number = employeeRegister.getPhone_number();
        String password_hash = employeeRegister.getPassword_hash();
        String gender = employeeRegister.getGender();
        String address = employeeRegister.getAddress();
        String education_level = employeeRegister.getEducation_level();
        int department_id = employeeRegister.getDepartment_id();
        int position_id = employeeRegister.getPosition_id();
        String hire_date = employeeRegister.getHire_date();
        double salary = employeeRegister.getSalary();
        try {
            String sql="insert into ert_employees (first_name,last_name,birthday,email,phone_number,password_hash,gender,address,education_level,department_id,position_id,hire_date,salary) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pstat=conn.prepareStatement(sql);
            pstat.setString(1, first_name);
            pstat.setString(2, last_name);
            pstat.setString(3, birthday);
            pstat.setString(4, email);
            pstat.setString(5, phone_number);
            pstat.setString(6, password_hash);
            pstat.setString(7,gender);
            pstat.setString(8,address);
            pstat.setString(9,education_level);
            pstat.setInt(10,department_id);
            pstat.setInt(11,position_id);
            pstat.setString(12,hire_date);
            pstat.setDouble(13,salary);
            pstat.executeUpdate();
            pstat.close();
            conn.close();
        }catch(SQLException e) {
            e.printStackTrace();
        }
        return true;
    }
    public ResultSet getEmployeeResults(String EID){
        String sql = "select a.*,b.department_name,c.position_name,c.establishment from (ert_employees a inner join ert_departments b) inner join ert_positions c where (a.department_id = b.department_id) and (a.position_id = c.position_id) and a.id = ?";
        List<Object> list = new ArrayList<>();
        list.add(EID);
        ResultSet rs = sqlSelectUtil(sql,list);
        return rs;
    }
    public ResultSet getAllEmployeesResults(){
        String sql = "select a.*,b.department_name,c.position_name,c.establishment from " +
                "(ert_employees a inner join ert_departments b) " +
                "inner join ert_positions c where (a.department_id = b.department_id) " +
                "and (a.position_id = c.position_id)";
        try{
            pstat = conn.prepareStatement(sql);
            return pstat.executeQuery();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public boolean setPersonalInfomation(employee e){
        String sql = "update ert_employees set first_name = ?, last_name = ?, gender = ?, birthday = ?, phone_number = ?, email = ?, education_level = ?, address = ? where id = ?";
        List<Object> params = new ArrayList<>();
        params.add(e.getFirst_name());
        params.add(e.getLast_name());
        params.add(e.getGender());
        params.add(e.getBirthday());
        params.add(e.getPhone_number());
        params.add(e.getEmail());
        params.add(e.getEducation_level());
        params.add(e.getAddress());
        params.add(e.getId());
        return sqlInsertUtil(sql,params);
    }

    public boolean setNewPassword(String EID, String old_hash, String new_hash) throws SQLException {
        String sql = "select password_hash from ert_employees where id = ?";
        List<Object> list = new ArrayList<>();
        list.add(EID);
        ResultSet rs = sqlSelectUtil(sql,list);
        String current_hash;
        if(rs.next()){
            current_hash = rs.getString("password_hash");
            if(!old_hash.equals(current_hash)){
                return false;
            }
        }
        else{
            return false;
        }
        sql = "update ert_employees set password_hash = ? where id = ?";
        list.clear();
        list.add(new_hash);
        list.add(EID);
        return sqlInsertUtil(sql,list);
    }

    public String getPersonDistribution() throws SQLException {
        String sql = "select e.department_name, x.count from (select department_id i , count(department_id) count from ert_employees group by ert_employees.department_id) x, ert_departments e where x.i = e.department_id";
        pstat = conn.prepareStatement(sql);
        ResultSet rs = pstat.executeQuery();
        JSONArray arr = new JSONArray();
        while(rs.next()){
            JSONObject o = new JSONObject();
            o.put("value",Integer.parseInt(rs.getString("count")));
            o.put("name",rs.getString("department_name"));
            arr.add(o);
        }
        String JSON = arr.toJSONString();
        return JSON;
    }

    public String getSalaryProfile() throws SQLException {
        String sql = "select case when (salary > 0 and salary <=5000) then '0-5000' when (salary > 5000 and salary <=10000) then '5000-10000' when (salary > 10000 and salary <=15000 ) then '10000-15000' when (salary <= 20000 and salary > 15000) then '15000-20000' else '20000+' end 'salary_layer',count(*) emps from ert_employees group by case when (salary > 0 and salary <=5000) then '0-5000' when (salary > 5000 and salary <=10000) then '5000-10000' when (salary > 10000 and salary <=15000 ) then '10000-15000' when (salary <= 20000 and salary > 15000) then '15000-20000' else '20000+' end";
        pstat = conn.prepareStatement(sql);
        ResultSet rs = pstat.executeQuery();
        JSONArray arr = new JSONArray();
        while(rs.next()){
            JSONObject o = new JSONObject();
            o.put("value",Integer.parseInt(rs.getString("emps")));
            o.put("name",rs.getString("salary_layer"));
            arr.add(o);
        }
        String JSON = arr.toJSONString();
        System.out.println(JSON);
        return JSON;

    }
}